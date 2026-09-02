<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NexusShop · Premium</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&family=Poppins:wght@600;700;800;900&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
  <style>
    /* ===== GLOBAL ===== */
    * { margin: 0; padding: 0; box-sizing: border-box; }
    :root {
      --bg: #0a0a0f;
      --surface: rgba(255,255,255,0.05);
      --surface-hover: rgba(255,255,255,0.12);
      --text: #f0f4ff;
      --muted: #8899bb;
      --primary: #0a0a1a;
      --accent: #00d4ff;
      --accent2: #7b2ffc;
      --accent-glow: rgba(0,212,255,0.3);
      --border: rgba(255,255,255,0.08);
      --shadow: 0 25px 60px rgba(0,0,0,0.5);
      --radius: 20px;
      --max-width: 1200px;
    }
    html { scroll-behavior: smooth; }
    body {
      font-family: 'Inter', sans-serif;
      background: var(--bg);
      color: var(--text);
      line-height: 1.6;
      overflow-x: hidden;
    }
    ::selection { background: var(--accent); color: #0a0a0f; }
    .container {
      width: min(var(--max-width), calc(100% - 40px));
      margin: auto;
      position: relative;
      z-index: 2;
    }

    /* ===== ANIMATED BG PARTICLES ===== */
    #particles-canvas {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      z-index: 0;
      pointer-events: none;
    }

    /* ===== GLASSMORPHISM UTILITY ===== */
    .glass {
      background: var(--surface);
      backdrop-filter: blur(20px);
      -webkit-backdrop-filter: blur(20px);
      border: 1px solid var(--border);
    }

    /* ===== HEADER ===== */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(10,10,15,0.85);
      backdrop-filter: blur(24px);
      border-bottom: 1px solid var(--border);
    }
    .header-inner {
      min-height: 76px;
      display: flex;
      align-items: center;
      gap: 24px;
    }
    .brand {
      font-family: 'Poppins', sans-serif;
      font-size: 26px;
      font-weight: 900;
      letter-spacing: -0.5px;
      background: linear-gradient(135deg, var(--accent), var(--accent2));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .brand span { -webkit-text-fill-color: transparent; }

    .nav { display: flex; gap: 6px; margin-right: auto; }
    .nav a {
      padding: 10px 16px;
      border-radius: 12px;
      font-size: 14px;
      font-weight: 600;
      color: var(--muted);
      transition: 0.3s;
      position: relative;
    }
    .nav a:hover, .nav a.active {
      color: white;
      background: var(--surface-hover);
    }
    .nav a.active::after {
      content: '';
      position: absolute;
      bottom: 4px;
      left: 50%;
      transform: translateX(-50%);
      width: 20px;
      height: 2px;
      background: var(--accent);
      border-radius: 4px;
      box-shadow: 0 0 20px var(--accent-glow);
    }

    .search {
      display: flex;
      align-items: center;
      background: rgba(255,255,255,0.06);
      border: 1px solid var(--border);
      border-radius: 999px;
      padding: 0 18px;
      transition: 0.3s;
      width: 280px;
    }
    .search:focus-within {
      border-color: var(--accent);
      box-shadow: 0 0 30px var(--accent-glow);
      background: rgba(255,255,255,0.08);
    }
    .search input {
      width: 100%;
      border: 0;
      outline: 0;
      background: transparent;
      padding: 12px 10px;
      font-size: 14px;
      color: white;
    }
    .search input::placeholder { color: var(--muted); }

    .icon-actions { display: flex; gap: 4px; align-items: center; }
    .icon-btn {
      position: relative;
      width: 44px; height: 44px;
      border-radius: 50%;
      color: var(--muted);
      background: transparent;
      transition: 0.3s;
      font-size: 18px;
    }
    .icon-btn:hover {
      background: var(--surface-hover);
      color: white;
      transform: scale(1.05);
    }
    .badge {
      position: absolute;
      top: 2px; right: 2px;
      background: linear-gradient(135deg, #ff416c, #ff4b2b);
      color: white;
      width: 20px; height: 20px;
      border-radius: 50%;
      font-size: 10px;
      display: grid;
      place-items: center;
      font-weight: 800;
      box-shadow: 0 0 20px rgba(255,65,108,0.4);
    }
    .menu-btn { display: none; }

    /* ===== HERO ===== */
    .hero {
      margin-top: 24px;
      min-height: 560px;
      border-radius: 28px;
      overflow: hidden;
      position: relative;
      display: grid;
      place-items: center;
      text-align: center;
      background: radial-gradient(ellipse at 30% 50%, rgba(0,212,255,0.15), transparent 70%),
                  radial-gradient(ellipse at 70% 50%, rgba(123,47,252,0.1), transparent 70%),
                  linear-gradient(135deg, #0a0a1a, #1a0a2e);
      border: 1px solid var(--border);
    }
    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('data:image/svg+xml,%3Csvg width="60" height="60" viewBox="0 0 60 60" xmlns="http://www.w3.org/2000/svg"%3E%3Cg fill="none" fill-rule="evenodd"%3E%3Cg fill="%2300d4ff" fill-opacity="0.03"%3E%3Cpath d="M36 34v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zm0-30V0h-2v4h-4v2h4v4h2V6h4V4h-4zM6 34v-4H4v4H0v2h4v4h2v-4h4v-2H6zM6 4V0H4v4H0v2h4v4h2V6h4V4H6z"/%3E%3C/g%3E%3C/g%3E%3C/svg%3E');
      opacity: 0.5;
    }
    .hero-content {
      max-width: 800px;
      padding: 60px 30px;
      position: relative;
      z-index: 2;
    }
    .eyebrow {
      display: inline-flex;
      padding: 8px 18px;
      border-radius: 999px;
      background: rgba(0,212,255,0.12);
      border: 1px solid rgba(0,212,255,0.2);
      font-size: 12px;
      font-weight: 700;
      letter-spacing: 0.1em;
      text-transform: uppercase;
      color: var(--accent);
      box-shadow: 0 0 30px rgba(0,212,255,0.1);
    }
    .hero h1 {
      font-family: 'Poppins', sans-serif;
      font-size: clamp(42px, 7vw, 74px);
      line-height: 1.02;
      margin: 20px 0 18px;
      font-weight: 900;
      letter-spacing: -2px;
      background: linear-gradient(135deg, #ffffff 40%, var(--accent), var(--accent2));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .hero p {
      max-width: 600px;
      margin: 0 auto 32px;
      color: var(--muted);
      font-size: 18px;
    }
    .hero-buttons { display: flex; gap: 12px; justify-content: center; flex-wrap: wrap; }

    /* ===== BUTTONS ===== */
    .btn {
      border: 0;
      border-radius: 14px;
      padding: 14px 28px;
      font-weight: 700;
      display: inline-flex;
      align-items: center;
      gap: 10px;
      transition: 0.3s;
      font-size: 15px;
      position: relative;
      overflow: hidden;
    }
    .btn-primary {
      background: linear-gradient(135deg, var(--accent), var(--accent2));
      color: white;
      box-shadow: 0 8px 30px var(--accent-glow);
    }
    .btn-primary:hover {
      transform: translateY(-3px) scale(1.02);
      box-shadow: 0 12px 40px var(--accent-glow);
    }
    .btn-ghost {
      background: var(--surface);
      color: white;
      border: 1px solid var(--border);
      backdrop-filter: blur(10px);
    }
    .btn-ghost:hover {
      background: var(--surface-hover);
      transform: translateY(-3px);
      border-color: var(--accent);
    }
    .btn-glow {
      animation: pulse-glow 2s infinite;
    }
    @keyframes pulse-glow {
      0%, 100% { box-shadow: 0 8px 30px var(--accent-glow); }
      50% { box-shadow: 0 8px 60px var(--accent-glow), 0 0 80px rgba(0,212,255,0.15); }
    }

    /* ===== SECTIONS ===== */
    .section { padding: 70px 0; }
    .section-head {
      display: flex;
      align-items: end;
      justify-content: space-between;
      margin-bottom: 28px;
      gap: 16px;
      flex-wrap: wrap;
    }
    .section-head h2 {
      font-family: 'Poppins', sans-serif;
      font-size: 32px;
      font-weight: 800;
      letter-spacing: -0.5px;
    }
    .section-head h2 span { background: linear-gradient(135deg, var(--accent), var(--accent2)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; }
    .section-head p { color: var(--muted); font-size: 15px; margin-top: 4px; }
    .view-all {
      color: var(--accent);
      font-size: 14px;
      font-weight: 700;
      transition: 0.3s;
    }
    .view-all:hover { color: white; gap: 14px; }

    /* ===== CATEGORIES ===== */
    .categories {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 16px;
    }
    .category {
      background: var(--surface);
      backdrop-filter: blur(10px);
      border: 1px solid var(--border);
      border-radius: 18px;
      padding: 24px 12px;
      text-align: center;
      transition: 0.4s;
      cursor: pointer;
    }
    .category:hover {
      transform: translateY(-8px) scale(1.02);
      border-color: var(--accent);
      box-shadow: 0 20px 50px rgba(0,0,0,0.3);
      background: var(--surface-hover);
    }
    .category-icon {
      width: 56px; height: 56px;
      margin: 0 auto 12px;
      border-radius: 16px;
      display: grid;
      place-items: center;
      background: linear-gradient(135deg, rgba(0,212,255,0.15), rgba(123,47,252,0.15));
      color: var(--accent);
      font-size: 24px;
      transition: 0.3s;
    }
    .category:hover .category-icon {
      transform: scale(1.1) rotate(-5deg);
      box-shadow: 0 0 40px var(--accent-glow);
    }
    .category strong { font-size: 14px; font-weight: 600; }

    /* ===== PRODUCTS ===== */
    .toolbar { display: flex; gap: 10px; align-items: center; }
    .select {
      background: var(--surface);
      border: 1px solid var(--border);
      padding: 10px 16px;
      border-radius: 12px;
      color: var(--text);
      outline: 0;
      backdrop-filter: blur(10px);
      cursor: pointer;
    }
    .select:focus { border-color: var(--accent); }
    .select option { background: #0a0a0f; }

    .products {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
    }
    .product {
      background: var(--surface);
      backdrop-filter: blur(10px);
      border: 1px solid var(--border);
      border-radius: 20px;
      overflow: hidden;
      transition: 0.4s;
    }
    .product:hover {
      transform: translateY(-10px) scale(1.01);
      border-color: var(--accent);
      box-shadow: 0 25px 60px rgba(0,0,0,0.4);
    }
    .product-img {
      height: 230px;
      position: relative;
      background: rgba(255,255,255,0.03);
      overflow: hidden;
    }
    .product-img img {
      width: 100%; height: 100%;
      object-fit: cover;
      transition: 0.6s;
    }
    .product:hover .product-img img { transform: scale(1.08); }
    .tag {
      position: absolute;
      top: 14px; left: 14px;
      background: linear-gradient(135deg, var(--accent), var(--accent2));
      color: white;
      border-radius: 10px;
      padding: 5px 12px;
      font-size: 11px;
      font-weight: 800;
      z-index: 2;
      box-shadow: 0 0 30px var(--accent-glow);
    }
    .tag.sale { background: linear-gradient(135deg, #ff416c, #ff4b2b); }
    .heart {
      position: absolute;
      top: 12px; right: 12px;
      background: rgba(0,0,0,0.6);
      backdrop-filter: blur(10px);
      width: 38px; height: 38px;
      border-radius: 50%;
      color: white;
      z-index: 3;
      display: grid;
      place-items: center;
      transition: 0.3s;
      border: 1px solid var(--border);
    }
    .heart:hover { transform: scale(1.1); }
    .heart.active { color: #ff416c; background: rgba(255,65,108,0.2); }
    .product-body { padding: 18px; }
    .category-name {
      font-size: 11px;
      color: var(--accent);
      text-transform: uppercase;
      letter-spacing: 0.08em;
      font-weight: 700;
    }
    .product h3 {
      font-size: 16px;
      margin: 6px 0 10px;
      font-weight: 700;
    }
    .rating { font-size: 13px; color: #f5ae24; }
    .rating span { color: var(--muted); margin-left: 4px; font-size: 12px; }
    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: 14px;
    }
    .price {
      font-size: 20px;
      font-weight: 800;
      background: linear-gradient(135deg, white, var(--accent));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }
    .old {
      font-size: 13px;
      color: var(--muted);
      text-decoration: line-through;
      margin-left: 6px;
      font-weight: 500;
      -webkit-text-fill-color: var(--muted);
    }
    .add {
      width: 100%;
      margin-top: 14px;
      background: linear-gradient(135deg, var(--accent), var(--accent2));
      color: white;
      border: 0;
      border-radius: 12px;
      padding: 12px;
      font-weight: 700;
      transition: 0.3s;
    }
    .add:hover {
      transform: scale(1.02);
      box-shadow: 0 0 40px var(--accent-glow);
    }

    /* ===== DEAL ===== */
    .deal {
      display: grid;
      grid-template-columns: 1fr 1fr;
      background: var(--surface);
      backdrop-filter: blur(10px);
      border: 1px solid var(--border);
      border-radius: 24px;
      overflow: hidden;
      box-shadow: var(--shadow);
    }
    .deal img {
      width: 100%;
      height: 100%;
      min-height: 360px;
      object-fit: cover;
    }
    .deal-content { padding: 48px; display: flex; flex-direction: column; justify-content: center; }
    .deal-label {
      color: var(--accent);
      font-size: 12px;
      font-weight: 800;
      text-transform: uppercase;
      letter-spacing: 0.1em;
    }
    .deal h2 {
      font-family: 'Poppins', sans-serif;
      font-size: 36px;
      margin: 8px 0;
      font-weight: 800;
    }
    .timer {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 10px;
      margin: 20px 0;
    }
    .time {
      background: rgba(255,255,255,0.05);
      border: 1px solid var(--border);
      border-radius: 12px;
      text-align: center;
      padding: 12px 6px;
      transition: 0.3s;
    }
    .time:hover { border-color: var(--accent); }
    .time strong { display: block; font-size: 24px; font-weight: 800; }
    .time small { font-size: 11px; color: var(--muted); }

    /* ===== TESTIMONIALS ===== */
    .testimonials {
      display: grid;
      grid-template-columns: repeat(3, 1fr);
      gap: 18px;
    }
    .testimonial {
      background: var(--surface);
      backdrop-filter: blur(10px);
      border: 1px solid var(--border);
      border-radius: 18px;
      padding: 24px;
      transition: 0.3s;
    }
    .testimonial:hover {
      border-color: var(--accent);
      transform: translateY(-4px);
    }
    .testimonial p { color: var(--muted); font-size: 14px; }
    .person {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 18px;
    }
    .person img {
      width: 44px; height: 44px;
      border-radius: 50%;
      object-fit: cover;
      border: 2px solid var(--accent);
    }
    .person strong { font-size: 14px; }
    .person small { display: block; color: var(--muted); font-size: 12px; }

    /* ===== NEWSLETTER ===== */
    .newsletter {
      background: radial-gradient(ellipse at 50% 0%, rgba(0,212,255,0.1), transparent 70%),
                  linear-gradient(135deg, #0a0a1a, #1a0a2e);
      border: 1px solid var(--border);
      border-radius: 24px;
      padding: 50px;
      text-align: center;
    }
    .newsletter h2 {
      font-family: 'Poppins', sans-serif;
      font-size: 32px;
      font-weight: 800;
    }
    .newsletter h2 span { background: linear-gradient(135deg, var(--accent), var(--accent2)); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; }
    .newsletter p { color: var(--muted); margin: 0 0 24px; }
    .newsletter-form {
      display: flex;
      max-width: 520px;
      margin: auto;
      background: rgba(255,255,255,0.06);
      border: 1px solid var(--border);
      border-radius: 14px;
      padding: 4px;
      backdrop-filter: blur(10px);
    }
    .newsletter-form input {
      flex: 1;
      border: 0;
      outline: 0;
      padding: 12px 16px;
      background: transparent;
      color: white;
      min-width: 0;
    }
    .newsletter-form input::placeholder { color: var(--muted); }

    /* ===== FOOTER ===== */
    footer {
      padding: 48px 0 24px;
      border-top: 1px solid var(--border);
      color: var(--muted);
    }
    .footer-top {
      display: flex;
      justify-content: space-between;
      gap: 40px;
      padding-bottom: 28px;
      border-bottom: 1px solid var(--border);
      flex-wrap: wrap;
    }
    .footer-brand { max-width: 360px; }
    .footer-brand p { font-size: 14px; margin-top: 8px; }
    .footer-links { display: flex; gap: 60px; flex-wrap: wrap; }
    .footer-links h4 { color: white; margin: 0 0 12px; font-weight: 700; }
    .footer-links a { display: block; font-size: 14px; margin: 8px 0; transition: 0.3s; }
    .footer-links a:hover { color: var(--accent); }
    .copyright { text-align: center; font-size: 13px; padding-top: 20px; color: var(--muted); }

    /* ===== TOAST ===== */
    .toast {
      position: fixed;
      right: 24px;
      bottom: 24px;
      background: rgba(10,10,15,0.95);
      backdrop-filter: blur(20px);
      border: 1px solid var(--border);
      color: white;
      padding: 14px 22px;
      border-radius: 14px;
      box-shadow: var(--shadow);
      transform: translateY(120px);
      opacity: 0;
      transition: 0.4s cubic-bezier(0.34, 1.56, 0.64, 1);
      z-index: 200;
      font-size: 14px;
      font-weight: 500;
    }
    .toast.show { transform: none; opacity: 1; }

    /* ===== RESPONSIVE ===== */
    @media (max-width: 1000px) {
      .nav { display: none; }
      .menu-btn { display: block; }
      .search { width: min(280px, 35vw); }
      .categories { grid-template-columns: repeat(3, 1fr); }
      .products { grid-template-columns: repeat(3, 1fr); }
    }
    @media (max-width: 720px) {
      .header-inner { gap: 12px; padding: 12px 0; flex-wrap: wrap; }
      .brand { font-size: 22px; }
      .search { order: 3; width: 100%; }
      .hero { min-height: 480px; }
      .hero h1 { font-size: 38px; }
      .section { padding: 48px 0; }
      .section-head { flex-direction: column; align-items: flex-start; }
      .categories { grid-template-columns: repeat(2, 1fr); }
      .products { grid-template-columns: repeat(2, 1fr); }
      .deal { grid-template-columns: 1fr; }
      .deal img { min-height: 200px; max-height: 280px; }
      .deal-content { padding: 28px; }
      .testimonials { grid-template-columns: 1fr; }
      .footer-top { flex-direction: column; }
      .footer-links { gap: 30px; }
      .newsletter { padding: 32px 20px; }
    }
    @media (max-width: 480px) {
      .container { width: min(var(--max-width), calc(100% - 20px)); }
      .products { grid-template-columns: 1fr; }
      .categories { grid-template-columns: repeat(2, 1fr); }
      .hero h1 { font-size: 30px; }
      .hero-buttons .btn { width: 100%; justify-content: center; }
      .newsletter-form { flex-direction: column; background: transparent; border: 0; }
      .newsletter-form input { background: var(--surface); border-radius: 12px; border: 1px solid var(--border); }
      .newsletter-form .btn { margin-top: 8px; }
    }
  </style>
</head>
<body>

  <!-- ===== PARTICLES BG ===== -->
  <canvas id="particles-canvas"></canvas>

  <!-- ===== HEADER ===== -->
  <header>
    <div class="container header-inner">
      <button class="icon-btn menu-btn" id="menuBtn"><i class="fa-solid fa-bars"></i></button>
      <a class="brand" href="#">Nexus<span>Shop</span></a>
      <nav class="nav" id="nav">
        <a class="active" href="#">Home</a>
        <a href="#categories">Categories</a>
        <a href="#products">Trending</a>
        <a href="#deals">Deals</a>
        <a href="#about">About</a>
      </nav>
      <div class="search">
        <i class="fa-solid fa-magnifying-glass" style="color:var(--muted)"></i>
        <input id="searchInput" type="search" placeholder="Search products..." aria-label="Search">
      </div>
      <div class="icon-actions">
        <button class="icon-btn" title="Account"><i class="fa-regular fa-user"></i></button>
        <button class="icon-btn" title="Wishlist"><i class="fa-regular fa-heart"></i></button>
        <button class="icon-btn" id="cartBtn" title="Cart">
          <i class="fa-solid fa-bag-shopping"></i>
          <span class="badge" id="cartCount">0</span>
        </button>
      </div>
    </div>
  </header>

  <main>
    <!-- ===== HERO ===== -->
    <section class="container hero">
      <div class="hero-content">
        <span class="eyebrow"><i class="fa-solid fa-bolt" style="margin-right:6px;"></i>New season • premium picks</span>
        <h1>Everything you want,<br>in <span style="background:linear-gradient(135deg,var(--accent),var(--accent2));-webkit-background-clip:text;-webkit-text-fill-color:transparent;background-clip:text;">one place</span>.</h1>
        <p>Discover curated fashion, technology and everyday essentials with simple shopping, great prices and fast delivery.</p>
        <div class="hero-buttons">
          <button class="btn btn-primary btn-glow" id="shopNow">Shop now <i class="fa-solid fa-arrow-right"></i></button>
          <button class="btn btn-ghost" id="exploreDeals">Explore deals</button>
        </div>
      </div>
    </section>

    <!-- ===== CATEGORIES ===== -->
    <section class="section container" id="categories">
      <div class="section-head">
        <div><h2>Shop by <span>category</span></h2><p>Find what you need faster.</p></div>
        <a class="view-all" href="#products">View all <i class="fa-solid fa-arrow-right"></i></a>
      </div>
      <div class="categories" id="categoriesGrid"></div>
    </section>

    <!-- ===== PRODUCTS ===== -->
    <section class="section container" id="products">
      <div class="section-head">
        <div><h2>Trending <span>products</span></h2><p>Popular picks based on recent activity.</p></div>
        <div class="toolbar">
          <select class="select" id="sortSelect" aria-label="Sort products">
            <option value="popular">Most popular</option>
            <option value="price-low">Price: low to high</option>
            <option value="price-high">Price: high to low</option>
            <option value="rating">Top rated</option>
          </select>
        </div>
      </div>
      <div class="products" id="productsGrid"></div>
    </section>

    <!-- ===== DEAL ===== -->
    <section class="section container" id="deals">
      <div class="deal">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85" alt="MacBook Air">
        <div class="deal-content">
          <span class="deal-label"><i class="fa-solid fa-bolt" style="margin-right:6px;"></i>Flash sale</span>
          <h2>MacBook Air M2</h2>
          <p style="color:var(--muted)">Thin, light and powerful. Grab today's featured deal before the timer ends.</p>
          <div class="timer">
            <div class="time"><strong id="days">00</strong><small>Days</small></div>
            <div class="time"><strong id="hours">00</strong><small>Hours</small></div>
            <div class="time"><strong id="minutes">00</strong><small>Minutes</small></div>
            <div class="time"><strong id="seconds">00</strong><small>Seconds</small></div>
          </div>
          <div style="font-size:26px;font-weight:800;">$999 <span class="old">$1,199</span></div>
          <p style="font-size:13px;color:#ff416c;font-weight:700;margin:4px 0 16px;">Only 12 items left at this price.</p>
          <button class="btn btn-primary" id="buyDeal" style="width:max-content">Buy now</button>
        </div>
      </div>
    </section>

    <!-- ===== TESTIMONIALS ===== -->
    <section class="section container" id="about">
      <div class="section-head"><div><h2>What <span>customers</span> say</h2><p>Feedback from verified buyers.</p></div></div>
      <div class="testimonials">
        <article class="testimonial">
          <div class="rating">★★★★★</div>
          <p>“Fast shipping and excellent customer support. The product exceeded my expectations!”</p>
          <div class="person">
            <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80" alt="Ava">
            <div><strong>Ava Martin</strong><small>Verified buyer</small></div>
          </div>
        </article>
        <article class="testimonial">
          <div class="rating">★★★★★</div>
          <p>“Great selection and the checkout was smooth. Will definitely shop again.”</p>
          <div class="person">
            <img src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80" alt="Michael">
            <div><strong>Michael Lee</strong><small>Frequent buyer</small></div>
          </div>
        </article>
        <article class="testimonial">
          <div class="rating">★★★★☆</div>
          <p>“The interface is simple, the deals are clear, and delivery was exactly as promised.”</p>
          <div class="person">
            <img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80" alt="Sofia">
            <div><strong>Sofia Chen</strong><small>Verified buyer</small></div>
          </div>
        </article>
      </div>
    </section>

    <!-- ===== NEWSLETTER ===== -->
    <section class="section container">
      <div class="newsletter">
        <h2>Stay in the <span>loop</span></h2>
        <p>Get new arrivals, special offers and members-only deals.</p>
        <form class="newsletter-form" id="newsletterForm">
          <input id="email" type="email" placeholder="Enter your email" required>
          <button class="btn btn-primary" type="submit">Subscribe</button>
        </form>
      </div>
    </section>
  </main>

  <!-- ===== FOOTER ===== -->
  <footer>
    <div class="container">
      <div class="footer-top">
        <div class="footer-brand">
          <div class="brand">Nexus<span>Shop</span></div>
          <p>A clean, modern e-commerce experience built with HTML, CSS and JavaScript.</p>
        </div>
        <div class="footer-links">
          <div><h4>Company</h4><a href="#about">About</a><a href="#">Careers</a><a href="#">Press</a></div>
          <div><h4>Support</h4><a href="#">Help center</a><a href="#">Shipping & returns</a><a href="#">Contact</a></div>
        </div>
      </div>
      <div class="copyright">© <span id="year"></span> NexusShop. All rights reserved.</div>
    </div>
  </footer>

  <!-- ===== TOAST ===== -->
  <div class="toast" id="toast"></div>

  <script>
    // ===== PARTICLES =====
    (function() {
      const canvas = document.getElementById('particles-canvas');
      const ctx = canvas.getContext('2d');
      let w, h;
      const particles = [];
      const COUNT = 80;

      function resize() {
        w = canvas.width = window.innerWidth;
        h = canvas.height = window.innerHeight;
      }
      window.addEventListener('resize', resize);
      resize();

      class Particle {
        constructor() { this.reset(); }
        reset() {
          this.x = Math.random() * w;
          this.y = Math.random() * h;
          this.size = Math.random() * 2 + 0.5;
          this.speedX = (Math.random() - 0.5) * 0.4;
          this.speedY = (Math.random() - 0.5) * 0.4;
          this.opacity = Math.random() * 0.5 + 0.1;
        }
        update() {
          this.x += this.speedX;
          this.y += this.speedY;
          if (this.x < 0 || this.x > w) this.speedX *= -1;
          if (this.y < 0 || this.y > h) this.speedY *= -1;
        }
        draw() {
          ctx.beginPath();
          ctx.arc(this.x, this.y, this.size, 0, Math.PI * 2);
          ctx.fillStyle = `rgba(0, 212, 255, ${this.opacity})`;
          ctx.fill();
        }
      }

      for (let i = 0; i < COUNT; i++) particles.push(new Particle());

      function animate() {
        ctx.clearRect(0, 0, w, h);
        particles.forEach(p => { p.update(); p.draw(); });
        // draw lines
        for (let i = 0; i < particles.length; i++) {
          for (let j = i + 1; j < particles.length; j++) {
            const dx = particles[i].x - particles[j].x;
            const dy = particles[i].y - particles[j].y;
            const dist = Math.sqrt(dx*dx + dy*dy);
            if (dist < 120) {
              ctx.beginPath();
              ctx.moveTo(particles[i].x, particles[i].y);
              ctx.lineTo(particles[j].x, particles[j].y);
              ctx.strokeStyle = `rgba(0, 212, 255, ${0.08 * (1 - dist/120)})`;
              ctx.lineWidth = 0.5;
              ctx.stroke();
            }
          }
        }
        requestAnimationFrame(animate);
      }
      animate();
    })();

    // ===== DATA =====
    const CATEGORIES = [
      { id: "phones", name: "Smartphones", icon: "fa-mobile-screen-button" },
      { id: "laptops", name: "Laptops", icon: "fa-laptop" },
      { id: "clothing", name: "Clothing", icon: "fa-shirt" },
      { id: "gadgets", name: "Gadgets", icon: "fa-headphones" },
      { id: "footwear", name: "Footwear", icon: "fa-shoe-prints" },
      { id: "accessories", name: "Accessories", icon: "fa-watch" }
    ];

    const PRODUCTS = [
      { id: 1, title: "iPhone 14 Pro Max", price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: "New", img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85", category: "phones" },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85", category: "laptops" },
      { id: 3, title: "Apple Watch Series 8", price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: "-25%", img: "https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=700&q=85", category: "accessories" },
      { id: 4, title: "Nike Air Max 270", price: 150, rating: 4, reviews: 53, img: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85", category: "footwear" },
      { id: 5, title: "Sony A7 IV Camera", price: 2499, rating: 5, reviews: 42, img: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85", category: "gadgets" },
      { id: 6, title: "Chanel No. 5", price: 120, rating: 5, reviews: 189, img: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85", category: "accessories" },
      { id: 7, title: "Travel Backpack", price: 79, oldPrice: 99, rating: 4, reviews: 67, img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85", category: "accessories" },
      { id: 8, title: "Sony WH-1000XM5", price: 399, rating: 5, reviews: 156, img: "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=700&q=85", category: "gadgets" }
    ];

    let cartCount = 0;
    const $ = id => document.getElementById(id);
    const toast = $("toast");
    let toastTimer;

    function showToast(msg) {
      toast.textContent = msg;
      toast.classList.add("show");
      clearTimeout(toastTimer);
      toastTimer = setTimeout(() => toast.classList.remove("show"), 2200);
    }

    function renderCategories() {
      const grid = $("categoriesGrid");
      grid.innerHTML = CATEGORIES.map(cat => `
        <button class="category" data-category="${cat.id}">
          <div class="category-icon"><i class="fa-solid ${cat.icon}"></i></div>
          <strong>${cat.name}</strong>
        </button>
      `).join("");
      document.querySelectorAll(".category").forEach(el => {
        el.onclick = () => {
          const cat = el.dataset.category;
          $("searchInput").value = cat;
          filterProducts(cat);
          $("products").scrollIntoView({ behavior: "smooth" });
        };
      });
    }

    function renderProducts(list) {
      const grid = $("productsGrid");
      if (!list.length) {
        grid.innerHTML = `<div class="empty"><i class="fa-solid fa-box-open" style="font-size:32px;margin-bottom:12px;display:block;"></i>No products found.<br><small style="color:var(--muted)">Try another search term.</small></div>`;
        return;
      }
      grid.innerHTML = list.map(p => `
        <article class="product">
          <div class="product-img">
            ${p.badge ? `<span class="tag ${p.badge.startsWith('-') ? 'sale' : ''}">${p.badge}</span>` : ""}
            <button class="heart" data-heart="${p.id}"><i class="fa-regular fa-heart"></i></button>
            <img src="${p.img}" alt="${p.title}" loading="lazy">
          </div>
          <div class="product-body">
            <div class="category-name">${p.category}</div>
            <h3>${p.title}</h3>
            <div class="rating">${"★".repeat(p.rating)}<span>(${p.reviews})</span></div>
            <div class="price-row">
              <div class="price">$${p.price.toLocaleString()}${p.oldPrice ? ` <span class="old">$${p.oldPrice.toLocaleString()}</span>` : ""}</div>
            </div>
            <button class="add" data-id="${p.id}"><i class="fa-solid fa-cart-plus"></i> Add to cart</button>
          </div>
        </article>
      `).join("");

      document.querySelectorAll(".add").forEach(btn => {
        btn.onclick = () => {
          cartCount++;
          $("cartCount").textContent = cartCount;
          showToast("Product added to your cart");
        };
      });
      document.querySelectorAll(".heart").forEach(btn => {
        btn.onclick = () => {
          btn.classList.toggle("active");
          if (btn.classList.contains("active")) {
            btn.innerHTML = '<i class="fa-solid fa-heart"></i>';
            showToast("Added to wishlist");
          } else {
            btn.innerHTML = '<i class="fa-regular fa-heart"></i>';
            showToast("Removed from wishlist");
          }
        };
      });
    }

    function filterProducts(query) {
      const q = query.trim().toLowerCase();
      if (!q) { renderProducts(PRODUCTS); return; }
      const filtered = PRODUCTS.filter(p =>
        p.title.toLowerCase().includes(q) ||
        p.category.toLowerCase().includes(q)
      );
      renderProducts(filtered);
    }

    $("searchInput").addEventListener("input", e => filterProducts(e.target.value));

    $("sortSelect").addEventListener("change", e => {
      let list = [...PRODUCTS];
      const val = e.target.value;
      if (val === "price-low") list.sort((a,b) => a.price - b.price);
      else if (val === "price-high") list.sort((a,b) => b.price - a.price);
      else if (val === "rating") list.sort((a,b) => b.rating - a.rating);
      renderProducts(list);
    });

    $("shopNow").onclick = () => $("products").scrollIntoView({ behavior: "smooth" });
    $("exploreDeals").onclick = () => $("deals").scrollIntoView({ behavior: "smooth" });

    $("buyDeal").onclick = () => {
      cartCount++;
      $("cartCount").textContent = cartCount;
      showToast("MacBook Air added to your cart");
    };

    $("cartBtn").onclick = () => {
      if (cartCount > 0) showToast(`You have ${cartCount} item${cartCount > 1 ? "s" : ""} in your cart`);
      else showToast("Your cart is empty");
    };

    $("menuBtn").onclick = () => {
      const nav = document.querySelector(".nav");
      if (nav.style.display === "flex") {
        nav.style.display = "none";
      } else {
        nav.style.display = "flex";
        nav.style.flexDirection = "column";
        nav.style.position = "absolute";
        nav.style.top = "76px";
        nav.style.left = "12px";
        nav.style.right = "12px";
        nav.style.padding = "16px";
        nav.style.background = "rgba(10,10,15,0.95)";
        nav.style.backdropFilter = "blur(20px)";
        nav.style.border = "1px solid var(--border)";
        nav.style.borderRadius = "16px";
        nav.style.boxShadow = "var(--shadow)";
      }
    };

    $("newsletterForm").onsubmit = e => {
      e.preventDefault();
      showToast("Thanks! You are subscribed.");
      e.target.reset();
    };

    // countdown
    const target = Date.now() + 24 * 3600000 + 36 * 60000;
    function tick() {
      const diff = Math.max(0, target - Date.now());
      $("days").textContent = String(Math.floor(diff / 86400000)).padStart(2,"0");
      $("hours").textContent = String(Math.floor(diff / 3600000) % 24).padStart(2,"0");
      $("minutes").textContent = String(Math.floor(diff / 60000) % 60).padStart(2,"0");
      $("seconds").textContent = String(Math.floor(diff / 1000) % 60).padStart(2,"0");
    }
    setInterval(tick, 1000);
    tick();

    $("year").textContent = new Date().getFullYear();

    renderCategories();
    renderProducts(PRODUCTS);
  </script>
</body>
</html>
