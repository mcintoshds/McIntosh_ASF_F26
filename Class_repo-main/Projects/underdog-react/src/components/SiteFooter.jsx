import { Container } from 'reactstrap';

export default function SiteFooter() {
  return (
    <footer className="site-footer">
      <Container className="footer-content">
        <p>The Underdog Speakeasy · Unmarked doors beneath Gearford</p>
        <p className="demo-note">Classroom demo · Orders and reservation requests stay in this session.</p>
      </Container>
    </footer>
  );
}
