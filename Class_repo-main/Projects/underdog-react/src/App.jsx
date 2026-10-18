import { useEffect, useState } from 'react';
import { Route, Routes, useLocation } from 'react-router-dom';
import SiteNavbar from './components/SiteNavbar.jsx';
import SiteFooter from './components/SiteFooter.jsx';
import HomePage from './pages/HomePage.jsx';
import AboutPage from './pages/AboutPage.jsx';
import MenuPage from './pages/MenuPage.jsx';
import ReservationsPage from './pages/ReservationsPage.jsx';
import CartPage from './pages/CartPage.jsx';
import NotFoundPage from './pages/NotFoundPage.jsx';

export default function App() {
  const [cart, setCart] = useState([]);
  const { pathname } = useLocation();

  useEffect(() => {
    const titles = {
      '/': 'Home', '/about': 'Our Story', '/menu': 'Menu',
      '/reservations': 'Reservations', '/cart': 'Cart',
    };
    document.title = `The Underdog Speakeasy | ${titles[pathname] || 'Page Not Found'}`;
    window.scrollTo(0, 0);
  }, [pathname]);

  function addToCart(item, quantity) {
    const amount = Math.min(5, Math.max(1, Number(quantity) || 1));
    setCart((currentCart) => {
      const existingItem = currentCart.find((cartItem) => cartItem.id === item.id);
      if (existingItem) {
        return currentCart.map((cartItem) => cartItem.id === item.id
          ? { ...cartItem, quantity: Math.min(5, cartItem.quantity + amount) }
          : cartItem);
      }
      return [...currentCart, {
        id: item.id, name: item.name, price: item.price, quantity: amount,
      }];
    });
  }

  function updateQuantity(id, quantity) {
    const amount = Math.min(5, Math.max(1, Number(quantity) || 1));
    setCart((currentCart) => currentCart.map((item) => item.id === id
      ? { ...item, quantity: amount } : item));
  }

  function removeItem(id) {
    setCart((currentCart) => currentCart.filter((item) => item.id !== id));
  }

  function clearCart() {
    setCart([]);
  }

  const cartCount = cart.reduce((count, item) => count + item.quantity, 0);

  return (
    <>
      <a className="skip-link" href="#main-content">Skip to main content</a>
      <SiteNavbar cartCount={cartCount} />
      <main id="main-content" tabIndex="-1">
        <Routes>
          <Route path="/" element={<HomePage />} />
          <Route path="/about" element={<AboutPage />} />
          <Route path="/menu" element={<MenuPage cart={cart} onAddToCart={addToCart} />} />
          <Route path="/reservations" element={<ReservationsPage />} />
          <Route path="/cart" element={<CartPage cart={cart} onUpdateQuantity={updateQuantity} onRemoveItem={removeItem} onClearCart={clearCart} />} />
          <Route path="*" element={<NotFoundPage />} />
        </Routes>
      </main>
      <SiteFooter />
    </>
  );
}
