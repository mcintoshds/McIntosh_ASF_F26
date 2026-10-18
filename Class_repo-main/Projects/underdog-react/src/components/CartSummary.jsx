import { Card, CardBody, CardTitle } from 'reactstrap';
import { calculateCartTotals, formatCurrency } from '../utils/cartTotals.js';

export default function CartSummary({ cart }) {
  const { subtotal, tax, total } = calculateCartTotals(cart);
  return (
    <Card className="summary-card">
      <CardBody>
        <p className="overline">The final tally</p>
        <CardTitle tag="h2">Order Summary</CardTitle>
        <dl className="totals-list">
          <div><dt>Subtotal</dt><dd>{formatCurrency(subtotal)}</dd></div>
          <div><dt>Tax (8.25%)</dt><dd>{formatCurrency(tax)}</dd></div>
          <div className="grand-total"><dt>Total</dt><dd>{formatCurrency(total)}</dd></div>
        </dl>
        <p className="menu-note mb-0">Demo order only. No payment is collected.</p>
      </CardBody>
    </Card>
  );
}
