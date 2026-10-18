import { useState } from 'react';
import { Button, Card, CardBody, CardImg, CardText, CardTitle, Input, Label } from 'reactstrap';
import { formatCurrency } from '../utils/cartTotals.js';

export default function MenuItemCard({ item, inCart, onAddToCart }) {
  const [quantity, setQuantity] = useState(1);
  const [message, setMessage] = useState('');
  const atLimit = inCart >= 5;

  function handleAdd() {
    const added = Math.min(quantity, 5 - inCart);
    if (added < 1) return;
    onAddToCart(item, quantity);
    setMessage(`${added} added to cart.${added < quantity ? ' Maximum 5 per dish.' : ''}`);
    setQuantity(1);
  }

  return (
    <Card tag="article" className="meal-card h-100" aria-labelledby={`dish-${item.id}`}>
      <CardImg top className="meal-card-image" src={`/images/${item.img}`} alt={item.imageAlt} loading="lazy" />
      <CardBody className="meal-card-content">
        <p className="menu-category">{item.category}</p>
        <CardTitle tag="h3" id={`dish-${item.id}`}>{item.name}</CardTitle>
        <CardText>{item.description}</CardText>
        <p className="menu-price">{formatCurrency(item.price)}</p>
        <div className="dish-order-controls">
          <div>
            <Label for={`quantity-${item.id}`}>Quantity<span className="visually-hidden"> for {item.name}</span></Label>
            <Input id={`quantity-${item.id}`} type="select" value={quantity} onChange={(event) => setQuantity(Number(event.target.value))} disabled={atLimit}>
              {[1, 2, 3, 4, 5].map((number) => <option key={number} value={number}>{number}</option>)}
            </Input>
          </div>
          <Button type="button" className="button" onClick={handleAdd} disabled={atLimit} aria-label={`Add ${item.name} to cart`}>{atLimit ? 'Limit Reached' : 'Add to Cart'}</Button>
        </div>
        <p className="cart-quantity-note">{inCart} of 5 in cart</p>
        <p className="add-feedback" role="status" aria-live="polite">{message}</p>
      </CardBody>
    </Card>
  );
}
