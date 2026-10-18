import { useState } from 'react';
import { Link, NavLink as RouterNavLink } from 'react-router-dom';
import { Badge, Collapse, Container, Nav, Navbar, NavbarBrand, NavbarToggler, NavItem, NavLink } from 'reactstrap';

export default function SiteNavbar({ cartCount }) {
  const [isOpen, setIsOpen] = useState(false);
  const links = [
    { path: '/', label: 'Home' },
    { path: '/about', label: 'About' },
    { path: '/menu', label: 'Menu' },
    { path: '/reservations', label: 'Reservations' },
    { path: '/cart', label: 'Cart' },
  ];

  return (
    <header className="site-header">
      <Navbar dark expand="lg" aria-label="Main navigation">
        <Container>
          <NavbarBrand tag={Link} to="/" className="brand" onClick={() => setIsOpen(false)}>
            <img className="brand-logo" src="/images/logo.png" alt="" />
            <span className="brand-copy"><span className="brand-name">The Underdog</span><span className="brand-subtitle">Speakeasy</span></span>
          </NavbarBrand>
          <NavbarToggler onClick={() => setIsOpen(!isOpen)} aria-controls="main-nav" aria-expanded={isOpen} aria-label="Toggle navigation" />
          <Collapse isOpen={isOpen} navbar id="main-nav">
            <Nav navbar className="ms-auto gap-lg-2">
              {links.map((link) => (
                <NavItem key={link.path}>
                  <NavLink tag={RouterNavLink} to={link.path} end={link.path === '/'} onClick={() => setIsOpen(false)}>
                    {link.label}
                    {link.path === '/cart' && <Badge pill className="cart-badge ms-2" aria-label={`${cartCount} items in cart`}>{cartCount}</Badge>}
                  </NavLink>
                </NavItem>
              ))}
            </Nav>
          </Collapse>
        </Container>
      </Navbar>
    </header>
  );
}
