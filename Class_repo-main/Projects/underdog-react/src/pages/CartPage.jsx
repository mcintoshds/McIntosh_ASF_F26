import { useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { Button, Card, Col, Container, Input, Label, Row, Table } from 'reactstrap';
import PageIntro from '../components/PageIntro.jsx';
import CartSummary from '../components/CartSummary.jsx';
import ConfirmModal from '../components/ConfirmModal.jsx';
import { formatCurrency } from '../utils/cartTotals.js';

export default function CartPage({ cart, onUpdateQuantity, onRemoveItem, onClearCart }) {
  const [modal, setModal] = useState(null);
  const navigate = useNavigate();
  const isCancelPrompt = modal === 'cancel';

  function confirmCancellation() {
    onClearCart();
    setModal('cancelled');
  }

  function finishOrder() {
    if (modal === 'submitted') onClearCart();
    setModal(null);
    navigate('/menu');
  }

  return (
    <>
      <PageIntro overline="Before your next departure" title="Your Order" note="A good meal, ready to tally">
        Review your dishes and quantities before sending them to the cellar kitchen.
      </PageIntro>
      <Container className="section">
        {cart.length === 0 ? (
          <Card className="empty-cart text-center">
            <p className="overline">The ledger is clear</p><h2>Your cart is empty.</h2>
            <p>Find something worth staying below for.</p>
            <Button tag={Link} to="/menu" className="button align-self-center">Explore the Menu</Button>
          </Card>
        ) : (
          <Row className="g-4 align-items-start">
            <Col lg="8">
              <div className="table-wrapper">
                <Table responsive className="menu-table cart-table align-middle">
                  <caption>Your selected dishes</caption>
                  <thead><tr><th scope="col">Dish</th><th scope="col">Price</th><th scope="col">Quantity</th><th scope="col">Line total</th><th scope="col"><span className="visually-hidden">Actions</span></th></tr></thead>
                  <tbody>{cart.map((item) => (
                    <tr key={item.id}>
                      <th scope="row">{item.name}</th>
                      <td className="table-price">{formatCurrency(item.price)}</td>
                      <td>
                        <Label for={`cart-quantity-${item.id}`} className="visually-hidden">Quantity for {item.name}</Label>
                        <Input id={`cart-quantity-${item.id}`} type="select" value={item.quantity} onChange={(event) => onUpdateQuantity(item.id, event.target.value)}>
                          {[1, 2, 3, 4, 5].map((number) => <option key={number} value={number}>{number}</option>)}
                        </Input>
                      </td>
                      <td className="table-price">{formatCurrency(item.price * item.quantity)}</td>
                      <td><Button type="button" className="remove-button" onClick={() => onRemoveItem(item.id)} aria-label={`Remove ${item.name}`}>Remove</Button></td>
                    </tr>
                  ))}</tbody>
                </Table>
              </div>
              <Button tag={Link} to="/menu" className="button button-outline mt-3">Continue Ordering</Button>
            </Col>
            <Col lg="4">
              <CartSummary cart={cart} />
              <div className="cart-actions">
                <Button type="button" className="button" onClick={() => setModal('submitted')}>Submit Order</Button>
                <Button type="button" className="button button-outline" onClick={() => setModal('cancel')}>Cancel Order</Button>
              </div>
            </Col>
          </Row>
        )}
      </Container>
      <ConfirmModal isOpen={modal !== null} title={isCancelPrompt ? 'Cancel Order' : 'Thank You'} confirmText={isCancelPrompt ? 'Yes, Cancel Order' : 'Return to Menu'} onConfirm={isCancelPrompt ? confirmCancellation : finishOrder} onCancel={isCancelPrompt ? () => setModal(null) : undefined} cancelText="Keep My Order">
        {isCancelPrompt ? 'Are you sure you want to cancel your order?' : modal === 'cancelled' ? 'Your order has been cancelled and your cart is clear. Thank you for visiting The Underdog.' : 'Thank you for your order! This classroom demo does not send an order to a real kitchen. Return to the menu to start a fresh order.'}
      </ConfirmModal>
    </>
  );
}
