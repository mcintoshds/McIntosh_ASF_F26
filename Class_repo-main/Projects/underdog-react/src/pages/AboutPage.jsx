import { Link } from 'react-router-dom';
import { Button, Card, Container } from 'reactstrap';

export default function AboutPage() {
  return (
    <Container className="section">
      <Card tag="article" className="story-card">
        <h1>Our Story</h1><p className="overline">Independent kitchens · Shared tables</p>
        <p>The Underdog began beneath an old boiler shop in Gearford, where steampunk bulldogs govern the streets above. A small crew of corgi cooks made a place where neighbors could choose their own supper.</p>
        <p>Today, humans, corgis, and other animal travelers gather around the same tables. Airship crews stop in after a shift, engineers trade stories over tea, and couriers rest their boots by the green lamp.</p>
        <h2>Good Food, Quiet Company</h2>
        <p>Our kitchen serves breakfast, lunch, and dinner with alcohol-free house tonics. Expect warm plates, seasonal ingredients, and a welcome that does not depend on a ration card.</p>
        <h2>Find the Green Lamp</h2>
        <p>Look behind the old boiler shop in Lower Gearford. We serve Tuesday through Sunday, 8:00 a.m.–11:00 p.m., with the last reservation at 10:00 p.m.</p>
        <Button tag={Link} to="/reservations" className="button align-self-start">Request a Table</Button>
      </Card>
    </Container>
  );
}
