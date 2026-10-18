import { useState } from 'react';
import { Link } from 'react-router-dom';
import { Button, Col, Container, Row } from 'reactstrap';
import PageIntro from '../components/PageIntro.jsx';
import MenuFilter from '../components/MenuFilter.jsx';
import MenuItemCard from '../components/MenuItemCard.jsx';
import menuItems from '../data/menuData.json';

export default function MenuPage({ cart, onAddToCart }) {
  const [category, setCategory] = useState('All');
  const filteredItems = category === 'All' ? menuItems : menuItems.filter((item) => item.category === category);

  return (
    <>
      <PageIntro overline="From the hidden kitchen" title="The Cellar Menu" note="Breakfast · Lunch · Dinner">
        Shared plates and house tonics, prepared to order and served below street level.
      </PageIntro>
      <Container tag="section" className="section" aria-labelledby="menu-heading">
        <Row className="g-4 align-items-center">
          <Col lg="7" className="menu-photo">
            <img src="/images/img3.jpg" alt="Corgi cooks preparing plates and house tonics in a concealed cellar" />
            <p className="photo-label">Prepared behind the pantry wall</p>
          </Col>
          <Col lg="5" className="menu-copy">
            <p className="overline">No ration cards required</p><h2 id="menu-heading">Supper Worth Finding</h2>
            <p>Each combination matches a shared plate with a house tonic. Choose a meal, set your quantity, and build your order.</p>
            <Button tag={Link} to="/cart" className="button button-outline">View Your Cart</Button>
          </Col>
        </Row>
      </Container>
      <Container tag="section" className="section menu-section" aria-label="Order from the menu">
        <div className="menu-toolbar">
          <div><p className="overline mb-2">From first shift to last lamp</p><h2>{category === 'All' ? 'All Dishes' : category}</h2><p id="menu-count" role="status">{filteredItems.length} dishes · Maximum 5 of each dish per order</p></div>
          <MenuFilter category={category} onCategoryChange={setCategory} />
        </div>
        <Row className="g-4">
          {filteredItems.map((item) => <Col md="6" lg="4" key={item.id}><MenuItemCard item={item} inCart={cart.find((cartItem) => cartItem.id === item.id)?.quantity || 0} onAddToCart={onAddToCart} /></Col>)}
        </Row>
        <p className="menu-note">Prices are in US dollars. Tax is calculated in your cart.</p>
      </Container>
    </>
  );
}
