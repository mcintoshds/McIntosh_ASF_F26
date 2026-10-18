import { StrictMode } from 'react';
import { describe, expect, it } from 'vitest';
import { fireEvent, render, screen, waitFor, within } from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import { MemoryRouter } from 'react-router-dom';
import App from '../App.jsx';
import { calculateCartTotals } from '../utils/cartTotals.js';
import { reservationSchema } from '../data/reservationSchema.js';

function renderApp(path = '/') {
  return render(<StrictMode><MemoryRouter initialEntries={[path]} future={{ v7_startTransition: true, v7_relativeSplatPath: true }}><App /></MemoryRouter></StrictMode>);
}

async function openCartWithOneDish(user) {
  renderApp('/menu');
  await user.click(screen.getByRole('button', { name: 'Add Green Lantern Board to cart' }));
  await user.click(screen.getByRole('link', { name: 'View Your Cart' }));
}

describe('routes and menu', () => {
  it.each([
    ['/', 'The Underdog Speakeasy'], ['/about', 'Our Story'],
    ['/menu', 'The Cellar Menu'], ['/reservations', 'Request a Table'],
    ['/cart', 'Your Order'], ['/missing-page', 'This Room Has Moved'],
  ])('renders %s with the shared navigation', (path, heading) => {
    renderApp(path);
    expect(screen.getByRole('heading', { level: 1, name: heading })).toBeInTheDocument();
    expect(screen.getByRole('navigation', { name: 'Main navigation' })).toBeInTheDocument();
  });

  it('filters all three categories and restores all dishes', async () => {
    const user = userEvent.setup();
    renderApp('/menu');
    expect(screen.getAllByRole('article')).toHaveLength(12);
    for (const category of ['Breakfast', 'Lunch', 'Dinner']) {
      await user.selectOptions(screen.getByLabelText('Meal category'), category);
      const cards = screen.getAllByRole('article');
      expect(cards).toHaveLength(4);
      cards.forEach((card) => expect(within(card).getByText(category)).toBeInTheDocument());
    }
    await user.selectOptions(screen.getByLabelText('Meal category'), 'All');
    expect(screen.getAllByRole('article')).toHaveLength(12);
  });

  it('opens and closes the mobile navigation', async () => {
    const user = userEvent.setup();
    renderApp();
    const toggle = screen.getByRole('button', { name: 'Toggle navigation' });
    expect(toggle).toHaveAttribute('aria-expanded', 'false');
    await user.click(toggle);
    expect(toggle).toHaveAttribute('aria-expanded', 'true');
    await user.click(screen.getByRole('link', { name: 'Menu', exact: true }));
    expect(toggle).toHaveAttribute('aria-expanded', 'false');
    expect(screen.getByRole('heading', { level: 1, name: 'The Cellar Menu' })).toBeInTheDocument();
  });
});

describe('cart behavior and order flows', () => {
  it('merges repeated additions, caps at five, preserves state across routes, and recalculates edited quantities', async () => {
    const user = userEvent.setup();
    renderApp('/menu');
    await user.selectOptions(screen.getByLabelText('Quantity for Green Lantern Board'), '4');
    await user.click(screen.getByRole('button', { name: 'Add Green Lantern Board to cart' }));
    await user.selectOptions(screen.getByLabelText('Quantity for Green Lantern Board'), '3');
    await user.click(screen.getByRole('button', { name: 'Add Green Lantern Board to cart' }));
    expect(screen.getByRole('button', { name: 'Add Green Lantern Board to cart' })).toBeDisabled();
    expect(screen.getByText('1 added to cart. Maximum 5 per dish.')).toBeInTheDocument();
    await user.click(screen.getByRole('link', { name: 'Home', exact: true }));
    await user.click(screen.getByRole('link', { name: /Cart 5 items in cart/ }));
    expect(screen.getAllByRole('row')).toHaveLength(2);
    expect(screen.getByLabelText('Quantity for Green Lantern Board')).toHaveValue('5');
    expect(screen.getByText('$7.43')).toBeInTheDocument();
    expect(screen.getByText('$97.43')).toBeInTheDocument();
    await user.selectOptions(screen.getByLabelText('Quantity for Green Lantern Board'), '2');
    expect(screen.getByText('$2.97')).toBeInTheDocument();
    expect(screen.getByText('$38.97')).toBeInTheDocument();
    await user.click(screen.getByRole('button', { name: 'Remove Green Lantern Board' }));
    expect(screen.getByText('Your cart is empty.')).toBeInTheDocument();
  });

  it('keeps an order when cancellation is dismissed and clears it only after confirmation', async () => {
    const user = userEvent.setup();
    await openCartWithOneDish(user);
    await user.click(screen.getByRole('button', { name: 'Cancel Order', exact: true }));
    const dialog = await screen.findByRole('dialog');
    expect(within(dialog).getByText('Are you sure you want to cancel your order?')).toBeInTheDocument();
    await user.click(within(dialog).getByRole('button', { name: 'Keep My Order' }));
    await waitFor(() => expect(screen.queryByRole('dialog')).not.toBeInTheDocument());
    expect(screen.getByLabelText('Quantity for Green Lantern Board')).toHaveValue('1');
    await user.click(screen.getByRole('button', { name: 'Cancel Order', exact: true }));
    await user.click(await screen.findByRole('button', { name: 'Yes, Cancel Order' }));
    expect(screen.getByRole('heading', { name: 'Thank You' })).toBeInTheDocument();
    expect(screen.getByText('Your cart is empty.')).toBeInTheDocument();
    await user.click(screen.getByRole('button', { name: 'Return to Menu' }));
    expect(screen.getByRole('heading', { name: 'The Cellar Menu' })).toBeInTheDocument();
    expect(screen.getByLabelText('0 items in cart')).toBeInTheDocument();
  });

  it('shows a thank-you modal before clearing a submitted order and returning to the menu', async () => {
    const user = userEvent.setup();
    await openCartWithOneDish(user);
    await user.click(screen.getByRole('button', { name: 'Submit Order' }));
    expect(await screen.findByRole('dialog', { name: 'Thank You' })).toBeInTheDocument();
    expect(screen.getByLabelText('1 items in cart')).toBeInTheDocument();
    await user.click(screen.getByRole('button', { name: 'Return to Menu' }));
    expect(screen.getByRole('heading', { name: 'The Cellar Menu' })).toBeInTheDocument();
    expect(screen.getByLabelText('0 items in cart')).toBeInTheDocument();
  });

  it('rounds tax once on the subtotal and handles an empty cart', () => {
    expect(calculateCartTotals([{ price: 10.5, quantity: 3 }, { price: 8.5, quantity: 2 }])).toEqual({ subtotal: 48.5, tax: 4, total: 52.5 });
    expect(calculateCartTotals([])).toEqual({ subtotal: 0, tax: 0, total: 0 });
  });
});

describe('reservations', () => {
  it('shows inline required errors without browser validation popups', async () => {
    const user = userEvent.setup();
    renderApp('/reservations');
    expect(screen.getByRole('button', { name: 'Submit Request' }).closest('form')).toHaveAttribute('novalidate');
    await user.click(screen.getByRole('button', { name: 'Submit Request' }));
    for (const message of ['Please enter your name.', 'Please enter your email.', 'Please choose a party size.', 'Please choose a date.', 'Please choose a time.', 'Please choose a seating preference.']) {
      expect(await screen.findByText(message)).toBeInTheDocument();
    }
  });

  it('validates length and email, then confirms a valid request and clears all fields', async () => {
    const user = userEvent.setup();
    renderApp('/reservations');
    await user.type(screen.getByLabelText(/^Name/), 'A'.repeat(21));
    await user.type(screen.getByLabelText(/^Email/), 'not-an-email');
    await user.type(screen.getByLabelText(/^Dietary Notes/), 'B'.repeat(31));
    await user.click(screen.getByRole('button', { name: 'Submit Request' }));
    expect(await screen.findByText('Name must be 20 characters or fewer.')).toBeInTheDocument();
    expect(screen.getByText('Please enter a valid email address.')).toBeInTheDocument();
    expect(screen.getByText('Dietary notes must be 30 characters or fewer.')).toBeInTheDocument();
    await user.clear(screen.getByLabelText(/^Name/));
    await user.type(screen.getByLabelText(/^Name/), 'Scott');
    await user.clear(screen.getByLabelText(/^Email/));
    await user.type(screen.getByLabelText(/^Email/), 'scott@example.com');
    await user.clear(screen.getByLabelText(/^Dietary Notes/));
    await user.type(screen.getByLabelText(/^Dietary Notes/), 'No mushrooms');
    await user.selectOptions(screen.getByLabelText(/^Party Size/), '2');
    fireEvent.change(screen.getByLabelText(/^Date/), { target: { value: '2026-10-20' } });
    fireEvent.change(screen.getByLabelText(/^Time/), { target: { value: '18:30' } });
    await user.click(screen.getByLabelText('Main cellar booth'));
    await user.click(screen.getByLabelText('Send me cellar openings and seasonal menu updates.'));
    await user.click(screen.getByRole('button', { name: 'Submit Request' }));
    expect(await screen.findByRole('dialog', { name: 'Request Confirmed' })).toHaveTextContent('Thank you, Scott!');
    await user.click(screen.getByRole('button', { name: 'Done' }));
    await waitFor(() => expect(screen.queryByRole('dialog')).not.toBeInTheDocument());
    for (const label of [/^Name/, /^Email/, /^Party Size/, /^Date/, /^Time/, /^Dietary Notes/]) expect(screen.getByLabelText(label)).toHaveValue('');
    screen.getAllByRole('radio').forEach((radio) => expect(radio).not.toBeChecked());
    expect(screen.getByRole('checkbox')).not.toBeChecked();
  });

  it('rejects party sizes outside 1–8 and allows optional fields to be blank', async () => {
    const valid = { name: 'Scott', email: 'scott@example.com', partySize: 1, date: '2026-10-20', time: '18:30', seating: 'lamp-counter' };
    await expect(reservationSchema.validate(valid)).resolves.toMatchObject(valid);
    for (const partySize of [0, 9, 1.5]) await expect(reservationSchema.validate({ ...valid, partySize })).rejects.toThrow();
    await expect(reservationSchema.validate({ ...valid, name: '   ' })).rejects.toThrow('Please enter your name.');
    await expect(reservationSchema.validate({ ...valid, partySize: 8, name: 'A'.repeat(20), dietaryNotes: 'B'.repeat(30) })).resolves.toBeDefined();
  });
});
