export const TAX_RATE = 0.0825;

export function formatCurrency(amount) {
  return new Intl.NumberFormat('en-US', { style: 'currency', currency: 'USD' }).format(amount);
}

export function calculateCartTotals(cart) {
  const subtotalCents = cart.reduce((sum, item) => sum + Math.round(item.price * 100) * item.quantity, 0);
  const taxCents = Math.round(subtotalCents * TAX_RATE);
  return {
    subtotal: subtotalCents / 100,
    tax: taxCents / 100,
    total: (subtotalCents + taxCents) / 100,
  };
}
