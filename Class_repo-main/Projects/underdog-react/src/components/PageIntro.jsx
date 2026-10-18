import { Col, Container, Row } from 'reactstrap';

export default function PageIntro({ overline, title, children, note }) {
  return (
    <section className="page-intro">
      <Container>
        <Row className="intro-grid align-items-center g-4">
          <Col lg="9"><p className="overline">{overline}</p><h1>{title}</h1><p className="intro-description">{children}</p></Col>
          {note && <Col lg="3"><p className="stamp">{note}</p></Col>}
        </Row>
      </Container>
    </section>
  );
}
