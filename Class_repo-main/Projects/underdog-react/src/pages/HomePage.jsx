import { Link } from 'react-router-dom';
import { Button, Card, Col, Container, Row } from 'reactstrap';
import menuItems from '../data/menuData.json';
import { formatCurrency } from '../utils/cartTotals.js';

export default function HomePage() {
  const featuredItem = menuItems.find((item) => item.id === 1);
  const features = [
    { title: 'Made, Not Issued', description: 'Every shared plate and house tonic is prepared to order instead of pulled from an official ration line.' },
    { title: 'A Shared Table', description: 'Corgis, humans, and trusted travelers gather together without assigned sections.' },
    { title: 'Never in One Place', description: 'Our rotating cellar rooms keep each neighborhood fed and one step ahead of inspection.' },
  ];

  return (
    <>
      <section className="hero">
        <Container><Row className="hero-content align-items-center g-5">
          <Col lg="6" className="hero-copy">
            <p className="overline">The unmarked door below Gearford</p>
            <h1>The Underdog Speakeasy</h1>
            <p className="hero-tagline">A hidden corgi supper club serving real choices beneath the bulldog regime's ration halls.</p>
            <div className="hero-actions">
              <Button tag={Link} to="/reservations" className="button">Request the Password</Button>
              <Button tag={Link} to="/menu" className="button button-outline">Explore the Menu</Button>
            </div>
            <p className="door-note">Look for the green lamp behind the old boiler shop.</p>
          </Col>
          <Col lg="6" className="hero-visual">
            <img src="/images/img1.jpg" alt="Welcome to the resistance at The Underdog Speakeasy" />
            <p className="photo-label">Back Room 07 · Lower Gearford</p>
          </Col>
        </Row></Container>
      </section>
      <section className="notice-bar" aria-label="Tonight's house notice">
        <Container><Row className="notice-content g-3">
          <Col tag="p" md="4">Green lamp means the cellar room is open.</Col>
          <Col tag="p" md="4">Service begins at 8:00 a.m.</Col>
          <Col tag="p" md="4">Confirmed guests only.</Col>
        </Row></Container>
      </section>
      <Container tag="section" className="section" aria-labelledby="club-heading">
        <div className="section-heading">
          <p className="overline">Why we stay below</p>
          <h2 id="club-heading">The Club the Regime Cannot Standardize</h2>
          <p>Above us, bulldog officials decide what every district is allowed to eat. Down here, the kitchen still belongs to the cooks and the table still belongs to the guests.</p>
        </div>
        <Row className="g-4">
          {features.map((feature) => <Col md="4" key={feature.title}><Card tag="article" className="h-100"><h3>{feature.title}</h3><p>{feature.description}</p></Card></Col>)}
        </Row>
      </Container>
      <Container tag="section" className="section" aria-labelledby="signature-heading">
        <Row className="align-items-center g-4">
          <Col lg="7" className="feature-image"><img src="/images/img2.jpg" alt="House tonic and shared supper plates on a speakeasy table" loading="lazy" /></Col>
          <Col lg="5"><Card tag="article" className="feature-card">
            <p className="overline">House favorite</p><h2 id="signature-heading">The {featuredItem.name}</h2>
            <p>{featuredItem.description}</p>
            <p className="price-line"><span>{formatCurrency(featuredItem.price)}</span> Served until the lantern goes dark.</p>
            <Link className="text-link" to="/menu">See the full menu →</Link>
          </Card></Col>
        </Row>
      </Container>
    </>
  );
}
