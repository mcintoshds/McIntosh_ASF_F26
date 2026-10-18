import { Link } from 'react-router-dom';
import { Button, Card, Container } from 'reactstrap';

export default function NotFoundPage() {
  return <Container className="section"><Card className="story-card"><p className="overline">Wrong door · 404</p><h1>This Room Has Moved</h1><p>The page you requested is not behind this door. Follow the green lamp back to somewhere familiar.</p><div className="hero-actions"><Button tag={Link} to="/" className="button">Return Home</Button><Button tag={Link} to="/menu" className="button button-outline">Explore the Menu</Button></div></Card></Container>;
}
