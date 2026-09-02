<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">

  <title>NexusShop — Modern E-commerce</title>

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

  <link
    href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap"
    rel="stylesheet"
  >

  <!-- Font Awesome -->
  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
  >

  <style>

    /* =========================
       GLOBAL
    ========================= */

    :root {
      --bg: #f7f9fc;
      --surface: #ffffff;
      --text: #10233b;
      --muted: #718096;

      --primary: #102a43;
      --accent: #18bff5;
      --accent-dark: #0798c9;

      --border: #e8edf3;
      --danger: #ff4d67;
      --success: #20a866;

      --shadow: 0 12px 35px rgba(16, 42, 67, 0.08);

      --radius: 18px;
      --max-width: 1180px;
    }

    * {
      box-sizing: border-box;
    }

    html {
      scroll-behavior: smooth;
    }

    body {
      margin: 0;
      font-family: Inter, system-ui, sans-serif;
      color: var(--text);
      background: var(--bg);
      line-height: 1.5;
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    button,
    input,
    select {
      font: inherit;
    }

    button {
      cursor: pointer;
    }

    .container {
      width: min(
        var(--max-width),
        calc(100% - 32px)
      );

      margin: auto;
    }


    /* =========================
       HEADER
    ========================= */

    header {
      position: sticky;
      top: 0;

      z-index: 100;

      background: rgba(255, 255, 255, 0.94);

      backdrop-filter: blur(14px);

      border-bottom: 1px solid var(--border);
    }

    .header-inner {
      min-height: 72px;

      display: flex;
      align-items: center;

      gap: 24px;
    }

    .brand {
      font-family: Poppins, sans-serif;

      font-size: 22px;
      font-weight: 800;

      white-space: nowrap;
    }

    .brand span {
      color: var(--accent);
    }


    /* Navigation */

    .nav {
      display: flex;

      gap: 5px;

      margin-right: auto;
    }

    .nav a {
      padding: 10px 12px;

      border-radius: 10px;

      font-size: 14px;

      font-weight: 600;

      color: #41566d;
    }

    .nav a:hover,
    .nav a.active {
      background: #eefaff;

      color: var(--accent-dark);
    }


    /* Search */

    .search {
      display: flex;

      align-items: center;

      width: 300px;

      background: #f1f5f9;

      border: 1px solid transparent;

      border-radius: 999px;

      padding: 0 14px;
    }

    .search:focus-within {
      background: white;

      border-color: #bceafa;

      box-shadow: 0 0 0 4px #e9faff;
    }

    .search input {
      width: 100%;

      border: 0;

      outline: 0;

      background: transparent;

      padding: 11px 8px;

      font-size: 14px;
    }


    /* Header buttons */

    .icon-actions {
      display: flex;

      gap: 4px;

      align-items: center;
    }

    .icon-btn {
      position: relative;

      width: 40px;
      height: 40px;

      border: 0;

      background: transparent;

      border-radius: 50%;

      color: var(--text);
    }

    .icon-btn:hover {
      background: #f1f5f9;
    }

    .badge {
      position: absolute;

      top: 1px;
      right: 0;

      background: var(--danger);

      color: white;

      width: 18px;
      height: 18px;

      border-radius: 50%;

      font-size: 10px;

      display: grid;
      place-items: center;

      font-weight: 700;
    }

    .menu-btn {
      display: none;
    }


    /* =========================
       HERO
    ========================= */

    .hero {
      margin-top: 20px;

      min-height: 430px;

      border-radius: 24px;

      overflow: hidden;

      position: relative;

      display: grid;

      place-items: center;

      text-align: center;

      color: white;

      background:
        linear-gradient(
          90deg,
          rgba(5, 24, 43, 0.82),
          rgba(5, 24, 43, 0.38)
        ),

        url(
          'https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85'
        )
        center / cover;
    }

    .hero-content {
      max-width: 760px;

      padding: 50px 20px;
    }

    .eyebrow {
      display: inline-flex;

      padding: 7px 12px;

      border-radius: 999px;

      background: rgba(255, 255, 255, 0.14);

      border: 1px solid rgba(255, 255, 255, 0.18);

      font-size: 12px;

      font-weight: 700;

      letter-spacing: 0.08em;

      text-transform: uppercase;
    }

    .hero h1 {
      font-family: Poppins, sans-serif;

      font-size: clamp(34px, 5vw, 58px);

      line-height: 1.05;

      margin: 18px 0 16px;

      font-weight: 800;
    }

    .hero p {
      max-width: 650px;

      margin: 0 auto 26px;

      color: #e8f1f8;
    }


    /* =========================
       BUTTONS
    ========================= */

    .btn {
      border: 0;

      border-radius: 12px;

      padding: 12px 18px;

      font-weight: 700;

      display: inline-flex;

      align-items: center;

      justify-content: center;

      gap: 9px;

      transition: 0.2s;
    }

    .btn-primary {
      background: var(--accent);

      color: #062438;

      box-shadow:
        0 8px 22px rgba(24, 191, 245, 0.25);
    }

    .btn-primary:hover {
      background: #52d3fa;

      transform: translateY(-2px);
    }

    .btn-ghost {
      background: transparent;

      color: white;

      border: 1px solid rgba(255, 255, 255, 0.35);

      margin-left: 8px;
    }

    .btn-ghost:hover {
      background: rgba(255, 255, 255, 0.1);
    }


    /* =========================
       SECTIONS
    ========================= */

    .section {
      padding: 58px 0;
    }

    .section-head {
      display: flex;

      align-items: end;

      justify-content: space-between;

      margin-bottom: 22px;

      gap: 16px;
    }

    .section-head h2 {
      font-family: Poppins, sans-serif;

      font-size: 28px;

      margin: 0;
    }

    .section-head p {
      margin: 4px 0 0;

      color: var(--muted);

      font-size: 14px;
    }

    .view-all {
      color: var(--accent-dark);

      font-size: 14px;

      font-weight: 700;
    }


    /* =========================
       CATEGORIES
    ========================= */

    .categories {
      display: grid;

      grid-template-columns:
        repeat(6, 1fr);

      gap: 14px;
    }

    .category {
      border: 1px solid var(--border);

      background: var(--surface);

      border-radius: 16px;

      padding: 22px 12px;

      text-align: center;

      box-shadow:
        0 4px 16px rgba(16, 42, 67, 0.03);

      transition: 0.2s;
    }

    .category:hover {
      transform: translateY(-4px);

      box-shadow: var(--shadow);

      border-color: #bdebf8;
    }

    .category-icon {
      width: 50px;
      height: 50px;

      margin: 0 auto 11px;

      border-radius: 14px;

      display: grid;

      place-items: center;

      background: #eafaff;

      color: var(--accent-dark);

      font-size: 21px;
    }

    .category strong {
      font-size: 13px;
    }


    /* =========================
       PRODUCT SECTION
    ========================= */

    .toolbar {
      display: flex;

      gap: 10px;

      align-items: center;
    }

    .select {
      border: 1px solid var(--border);

      background: white;

      padding: 10px 12px;

      border-radius: 10px;

      color: #50657b;

      outline: 0;
    }

    .products {
      display: grid;

      grid-template-columns:
        repeat(4, 1fr);

      gap: 18px;
    }


    /* Product card */

    .product {
      background: white;

      border: 1px solid var(--border);

      border-radius: 18px;

      overflow: hidden;

      position: relative;

      transition: 0.22s;
    }

    .product:hover {
      transform: translateY(-5px);

      box-shadow: var(--shadow);
    }


    /* Product image */

    .product-img {
      height: 215px;

      position: relative;

      background: #f4f7fa;

      overflow: hidden;
    }

    .product-img img {
      width: 100%;
      height: 100%;

      object-fit: cover;

      transition: 0.35s;
    }

    .product:hover .product-img img {
      transform: scale(1.045);
    }


    /* Product badge */

    .tag {
      position: absolute;

      top: 12px;
      left: 12px;

      background: var(--success);

      color: white;

      border-radius: 8px;

      padding: 5px 8px;

      font-size: 11px;

      font-weight: 800;

      z-index: 2;
    }

    .tag.sale {
      background: var(--danger);
    }


    /* Wishlist */

    .heart {
      position: absolute;

      top: 10px;
      right: 10px;

      background: white;

      border: 0;

      width: 36px;
      height: 36px;

      border-radius: 50%;

      box-shadow:
        0 5px 15px rgba(0, 0, 0, 0.1);

      color: #62758a;

      z-index: 3;
    }

    .heart.active {
      color: var(--danger);
    }


    /* Product body */

    .product-body {
      padding: 15px;
    }

    .category-name {
      font-size: 11px;

      color: var(--muted);

      text-transform: uppercase;

      letter-spacing: 0.06em;

      font-weight: 700;
    }

    .product h3 {
      font-size: 15px;

      margin: 5px 0 10px;
    }

    .rating {
      font-size: 12px;

      color: #f5ae24;
    }

    .rating span {
      color: var(--muted);

      margin-left: 4px;
    }

    .price-row {
      display: flex;

      align-items: center;

      justify-content: space-between;

      margin-top: 14px;
    }

    .price {
      font-size: 18px;

      font-weight: 800;
    }

    .old {
      font-size: 12px;

      color: #9aa6b2;

      text-decoration: line-through;

      margin-left: 5px;

      font-weight: 500;
    }

    .add {
      width: 100%;

      margin-top: 14px;

      background: var(--primary);

      color: white;

      border: 0;

      border-radius: 10px;

      padding: 10px;

      font-weight: 700;
    }

    .add:hover {
      background: #1a456c;
    }


    /* =========================
       FLASH SALE
    ========================= */

    .deal {
      display: grid;

      grid-template-columns:
        1fr 1fr;

      background: white;

      border: 1px solid var(--border);

      border-radius: 22px;

      overflow: hidden;

      box-shadow: var(--shadow);
    }

    .deal img {
      width: 100%;

      height: 100%;

      min-height: 330px;

      object-fit: cover;
    }

    .deal-content {
      padding: 42px;

      display: flex;

      flex-direction: column;

      justify-content: center;
    }

    .deal-label {
      color: var(--danger);

      font-size: 12px;

      font-weight: 800;

      text-transform: uppercase;

      letter-spacing: 0.08em;
    }

    .deal h2 {
      font-family: Poppins, sans-serif;

      font-size: 32px;

      margin: 8px 0;
    }


    /* Countdown */

    .timer {
      display: grid;

      grid-template-columns:
        repeat(4, 1fr);

      gap: 8px;

      margin: 20px 0;
    }

    .time {
      background: #102a43;

      color: white;

      border-radius: 10px;

      text-align: center;

      padding: 10px 4px;
    }

    .time strong {
      display: block;

      font-size: 20px;
    }

    .time small {
      font-size: 10px;

      color: #b9c8d6;
    }


    /* =========================
       TESTIMONIALS
    ========================= */

    .testimonials {
      display: grid;

      grid-template-columns:
        repeat(3, 1fr);

      gap: 16px;
    }

    .testimonial {
      background: white;

      border: 1px solid var(--border);

      border-radius: 16px;

      padding: 20px;
    }

    .testimonial p {
      color: #52677d;

      font-size: 14px;
    }

    .person {
      display: flex;

      align-items: center;

      gap: 10px;

      margin-top: 18px;
    }

    .person img {
      width: 40px;
      height: 40px;

      border-radius: 50%;

      object-fit: cover;
    }

    .person strong {
      font-size: 13px;
    }

    .person small {
      display: block;

      color: var(--muted);
    }


    /* =========================
       NEWSLETTER
    ========================= */

    .newsletter {
      background:
        linear-gradient(
          135deg,
          #102a43,
          #173f61
        );

      color: white;

      border-radius: 22px;

      padding: 42px;

      text-align: center;
    }

    .newsletter h2 {
      font-family: Poppins, sans-serif;

      font-size: 28px;

      margin: 0 0 7px;
    }

    .newsletter p {
      color: #cbd8e3;

      margin: 0 0 22px;
    }

    .newsletter-form {
      display: flex;

      max-width: 500px;

      margin: auto;

      background: white;

      border-radius: 12px;

      padding: 5px;
    }

    .newsletter-form input {
      flex: 1;

      border: 0;

      outline: 0;

      padding: 10px 12px;

      min-width: 0;
    }


    /* =========================
       FOOTER
    ========================= */

    footer {
      padding: 42px 0 24px;

      color: var(--muted);
    }

    .footer-top {
      display: flex;

      justify-content: space-between;

      gap: 30px;

      border-bottom: 1px solid var(--border);

      padding-bottom: 28px;
    }

    .footer-brand {
      max-width: 340px;
    }

    .footer-brand p {
      font-size: 13px;
    }

    .footer-links {
      display: flex;

      gap: 70px;
    }

    .footer-links h4 {
      color: var(--text);

      margin: 0 0 10px;
    }

    .footer-links a {
      display: block;

      font-size: 13px;

      margin: 7px 0;
    }

    .copyright {
      text-align: center;

      font-size: 12px;

      padding-top: 20px;
    }


    /* =========================
       EMPTY STATE
    ========================= */

    .empty {
      grid-column: 1 / -1;

      text-align: center;

      background: white;

      border: 1px dashed #cbd5df;

      padding: 45px;

      border-radius: 16px;

      color: var(--muted);
    }


    /* =========================
       TOAST
    ========================= */

    .toast {
      position: fixed;

      right: 22px;

      bottom: 22px;

      background: #102a43;

      color: white;

      padding: 13px 17px;

      border-radius: 12px;

      box-shadow: var(--shadow);

      transform: translateY(120px);

      opacity: 0;

      transition: 0.25s;

      z-index: 200;

      font-size: 14px;
    }

    .toast.show {
      transform: none;

      opacity: 1;
    }


    /* =========================
       RESPONSIVE
    ========================= */

    @media (max-width: 1000px) {

      .nav {
        display: none;
      }

      .menu-btn {
        display: block;
      }

      .search {
        width: min(300px, 35vw);
      }

      .categories {
        grid-template-columns:
          repeat(3, 1fr);
      }

      .products {
        grid-template-columns:
          repeat(3, 1fr);
      }
    }


    @media (max-width: 720px) {

      .header-inner {
        gap: 10px;

        flex-wrap: wrap;

        padding: 12px 0;
      }

      .brand {
        font-size: 19px;
      }

      .search {
        order: 3;

        width: 100%;
      }

      .hero {
        margin-top: 12px;

        min-height: 400px;
      }

      .hero h1 {
        font-size: 36px;
      }

      .section {
        padding: 42px 0;
      }

      .section-head {
        align-items: flex-start;

        flex-direction: column;
      }

      .categories {
        grid-template-columns:
          repeat(2, 1fr);
      }

      .products {
        grid-template-columns:
          repeat(2, 1fr);
      }

      .deal {
        grid-template-columns: 1fr;
      }

      .deal img {
        min-height: 220px;

        max-height: 260px;
      }

      .deal-content {
        padding: 28px;
      }

      .testimonials {
        grid-template-columns: 1fr;
      }

      .footer-top {
        flex-direction: column;
      }

      .footer-links {
        gap: 35px;
      }
    }


    @media (max-width: 480px) {

      .container {
        width:
          min(
            var(--max-width),
            calc(100% - 22px)
          );
      }

      .products {
        grid-template-columns: 1fr;
      }

      .categories {
        grid-template-columns:
          repeat(2, 1fr);
      }

      .hero h1 {
        font-size: 30px;
      }

      .btn-ghost {
        margin: 8px 0 0;
      }

      .newsletter {
        padding: 30px 18px;
      }

      .newsletter-form {
        flex-direction: column;

        background: transparent;
      }

      .newsletter-form input {
        border-radius: 10px;
      }

      .newsletter-form .btn {
        margin-top: 6px;
      }
    }

  </style>
</head>


<body>


<!-- =========================
     HEADER
========================= -->

<header>

  <div class="container header-inner">

    <button
      class="icon-btn menu-btn"
      id="menuBtn"
      aria-label="Open menu"
    >
      <i class="fa-solid fa-bars"></i>
    </button>


    <a class="brand" href="#">
      Nexus<span>Shop</span>
    </a>


    <nav class="nav" id="nav">

      <a class="active" href="#">
        Home
      </a>

      <a href="#categories">
        Categories
      </a>

      <a href="#products">
        Trending
      </a>

      <a href="#deals">
        Deals
      </a>

      <a href="#about">
        About
      </a>

    </nav>


    <!-- Search -->

    <div class="search">

      <i
        class="fa-solid fa-magnifying-glass"
        style="color:#8293a5"
      ></i>

      <input
        id="searchInput"
        type="search"
        placeholder="Search products..."
        aria-label="Search products"
      >

    </div>


    <!-- Header Actions -->

    <div class="icon-actions">

      <button
        class="icon-btn"
        title="Account"
      >
        <i class="fa-regular fa-user"></i>
      </button>


      <button
        class="icon-btn"
        title="Wishlist"
      >
        <i class="fa-regular fa-heart"></i>
      </button>


      <button
        class="icon-btn"
        id="cartBtn"
        title="Cart"
      >

        <i class="fa-solid fa-bag-shopping"></i>

        <span
          class="badge"
          id="cartCount"
        >
          0
        </span>

      </button>

    </div>

  </div>

</header>



<main>


<!-- =========================
     HERO
========================= -->

<section class="container hero">

  <div class="hero-content">

    <span class="eyebrow">
      New season • premium picks
    </span>


    <h1>
      Everything you want,
      in one place.
    </h1>


    <p>
      Discover curated fashion, technology
      and everyday essentials with simple
      shopping, great prices and fast delivery.
    </p>


    <button
      class="btn btn-primary"
      id="shopNow"
    >

      Shop now

      <i class="fa-solid fa-arrow-right"></i>

    </button>


    <button
      class="btn btn-ghost"
      id="exploreDeals"
    >

      Explore deals

    </button>

  </div>

</section>



<!-- =========================
     CATEGORIES
========================= -->

<section
  class="section container"
  id="categories"
>

  <div class="section-head">

    <div>

      <h2>
        Shop by category
      </h2>

      <p>
        Find what you need faster.
      </p>

    </div>


    <a
      class="view-all"
      href="#products"
    >

      View all

      <i class="fa-solid fa-arrow-right"></i>

    </a>

  </div>


  <div
    class="categories"
    id="categoriesGrid"
  ></div>

</section>



<!-- =========================
     PRODUCTS
========================= -->

<section
  class="section container"
  id="products"
>

  <div class="section-head">

    <div>

      <h2>
        Trending products
      </h2>

      <p>
        Popular picks based on recent activity.
      </p>

    </div>


    <div class="toolbar">

      <select
        class="select"
        id="sortSelect"
        aria-label="Sort products"
      >

        <option value="popular">
          Most popular
        </option>

        <option value="price-low">
          Price: low to high
        </option>

        <option value="price-high">
          Price: high to low
        </option>

        <option value="rating">
          Top rated
        </option>

      </select>

    </div>

  </div>


  <div
    class="products"
    id="productsGrid"
  ></div>

</section>



<!-- =========================
     FLASH SALE
========================= -->

<section
  class="section container"
  id="deals"
>

  <div class="deal">

    <img
      src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85"
      alt="MacBook Air"
    >


    <div class="deal-content">

      <span class="deal-label">
        Flash sale
      </span>


      <h2>
        MacBook Air M2
      </h2>


      <p style="color:var(--muted)">

        Thin, light and powerful.
        Grab today's featured deal
        before the timer ends.

      </p>


      <div class="timer">

        <div class="time">

          <strong id="days">
            00
          </strong>

          <small>
            Days
          </small>

        </div>


        <div class="time">

          <strong id="hours">
            00
          </strong>

          <small>
            Hours
          </small>

        </div>


        <div class="time">

          <strong id="minutes">
            00
          </strong>

          <small>
            Minutes
          </small>

        </div>


        <div class="time">

          <strong id="seconds">
            00
          </strong>

          <small>
            Seconds
          </small>

        </div>

      </div>


      <div
        style="
          font-size:24px;
          font-weight:800
        "
      >

        $999

        <span class="old">
          $1,199
        </span>

      </div>


      <p
        style="
          font-size:13px;
          color:var(--danger);
          font-weight:700
        "
      >

        Only 12 items left at this price.

      </p>


      <button
        class="btn btn-primary"
        id="buyDeal"
        style="width:max-content"
      >

        Buy now

      </button>

    </div>

  </div>

</section>



<!-- =========================
     TESTIMONIALS
========================= -->

<section
  class="section container"
  id="about"
>

  <div class="section-head">

    <div>

      <h2>
        What customers say
      </h2>

      <p>
        Feedback from verified buyers.
      </p>

    </div>

  </div>


  <div class="testimonials">


    <article class="testimonial">

      <div class="rating">
        ★★★★★
      </div>


      <p>

        “Fast shipping and excellent
        customer support. The product
        exceeded my expectations!”

      </p>


      <div class="person">

        <img
          src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"
          alt="Ava Martin"
        >


        <div>

          <strong>
            Ava Martin
          </strong>

          <small>
            Verified buyer
          </small>

        </div>

      </div>

    </article>



    <article class="testimonial">

      <div class="rating">
        ★★★★★
      </div>


      <p>

        “Great selection and the checkout
        was smooth. Will definitely
        shop again.”

      </p>


      <div class="person">

        <img
          src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
          alt="Michael Lee"
        >


        <div>

          <strong>
            Michael Lee
          </strong>

          <small>
            Frequent buyer
          </small>

        </div>

      </div>

    </article>



    <article class="testimonial">

      <div class="rating">
        ★★★★☆
      </div>


      <p>

        “The interface is simple,
        the deals are clear, and delivery
        was exactly as promised.”

      </p>


      <div class="person">

        <img
          src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
          alt="Sofia Chen"
        >


        <div>

          <strong>
            Sofia Chen
          </strong>

          <small>
            Verified buyer
          </small>

        </div>

      </div>

    </article>

  </div>

</section>



<!-- =========================
     NEWSLETTER
========================= -->

<section class="section container">

  <div class="newsletter">

    <h2>
      Stay in the loop
    </h2>


    <p>
      Get new arrivals, special offers
      and members-only deals.
    </p>


    <form
      class="newsletter-form"
      id="newsletterForm"
    >

      <input
        id="email"
        type="email"
        placeholder="Enter your email"
        required
      >


      <button
        class="btn btn-primary"
        type="submit"
      >

        Subscribe

      </button>

    </form>

  </div>

</section>

</main>



<!-- =========================
     FOOTER
========================= -->

<footer>

  <div class="container">

    <div class="footer-top">


      <div class="footer-brand">

        <div class="brand">

          Nexus<span>Shop</span>

        </div>


        <p>

          A clean, modern e-commerce
          experience built with HTML,
          CSS and JavaScript.

        </p>

      </div>


      <div class="footer-links">


        <div>

          <h4>
            Company
          </h4>

          <a href="#about">
            About
          </a>

          <a href="#">
            Careers
          </a>

          <a href="#">
            Press
          </a>

        </div>


        <div>

          <h4>
            Support
          </h4>

          <a href="#">
            Help center
          </a>

          <a href="#">
            Shipping & returns
          </a>

          <a href="#">
            Contact
          </a>

        </div>


      </div>

    </div>


    <div class="copyright">

      ©
      <span id="year"></span>
      NexusShop.
      All rights reserved.

    </div>

  </div>

</footer>



<!-- Toast notification -->

<div
  class="toast"
  id="toast"
></div>



<script>

/* =========================
   DATA
========================= */

const CATEGORIES = [

  {
    id: "phones",
    name: "Smartphones",
    icon: "fa-mobile-screen-button"
  },

  {
    id: "laptops",
    name: "Laptops",
    icon: "fa-laptop"
  },

  {
    id: "clothing",
    name: "Clothing",
    icon: "fa-shirt"
  },

  {
    id: "gadgets",
    name: "Gadgets",
    icon: "fa-headphones"
  },

  {
    id: "footwear",
    name: "Footwear",
    icon: "fa-shoe-prints"
  },

  {
    id: "accessories",
    name: "Accessories",
    icon: "fa-watch"
  }

];


const PRODUCTS = [

  {
    id: 1,
    title: "iPhone 14 Pro Max",
    price: 1099,
    oldPrice: 1199,
    rating: 5,
    reviews: 128,
    badge: "New",

    img:
      "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85",

    category: "phones"
  },


  {
    id: 2,
    title: 'MacBook Pro 14"',
    price: 1999,
    rating: 4,
    reviews: 86,

    img:
      "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85",

    category: "laptops"
  },


  {
    id: 3,
    title: "Apple Watch Series 8",
    price: 349,
    oldPrice: 399,
    rating: 5,
    reviews: 214,
    badge: "-25%",

    img:
      "https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=700&q=85",

    category: "accessories"
  },


  {
    id: 4,
    title: "Nike Air Max 270",
    price: 150,
    rating: 4,
    reviews: 53,

    img:
      "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85",

    category: "footwear"
  },


  {
    id: 5,
    title: "Sony A7 IV Camera",
    price: 2499,
    rating: 5,
    reviews: 42,

    img:
      "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=700&q=85",

    category: "gadgets"
  },


  {
    id: 6,
    title: "Chanel No. 5",
    price: 120,
    rating: 5,
    reviews: 189,

    img:
      "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85",

    category: "accessories"
  },


  {
    id: 7,
    title: "Travel Backpack",
    price: 79,
    oldPrice: 99,
    rating: 4,
    reviews: 67,

    img:
      "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85",

    category: "accessories"
  },


  {
    id: 8,
    title: "Sony WH-1000XM5",
    price: 399,
    rating: 5,
    reviews: 156,

    img:
      "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=700&q=85",

    category: "gadgets"
  }

];


let cartCount = 0;


/* =========================
   HELPERS
========================= */

const $ = id =>
  document.getElementById(id);


/* =========================
   TOAST
========================= */

function showToast(message) {

  const toast = $("toast");

  toast.textContent = message;

  toast.classList.add("show");

  clearTimeout(showToast.timer);

  showToast.timer =
    setTimeout(
      () => toast.classList.remove("show"),
      2200
    );
}


/* =========================
   RENDER CATEGORIES
========================= */

function renderCategories() {

  $("categoriesGrid").innerHTML =
    CATEGORIES.map(category => `

      <button
        class="category"
        data-category="${category.id}"
      >

        <div class="category-icon">

          <i
            class="fa-solid ${category.icon}"
          ></i>

        </div>

        <strong>
          ${category.name}
        </strong>

      </button>

    `).join("");


  document
    .querySelectorAll(".category")
    .forEach(element => {

      element.onclick = () => {

        const category =
          element.dataset.category;

        $("searchInput").value =
          category;

        filterProducts(category);

        $("products")
          .scrollIntoView({
            behavior: "smooth"
          });

      };

    });

}


/* =========================
   RENDER PRODUCTS
========================= */

function renderProducts(list) {

  if (!list.length) {

    $("productsGrid").innerHTML = `

      <div class="empty">

        <i
          class="fa-solid fa-box-open"
          style="font-size:28px;margin-bottom:10px"
        ></i>

        <br>

        No products found.

        <br>

        <small>
          Try another search term.
        </small>

      </div>

    `;

    return;
  }


  $("productsGrid").innerHTML =

    list.map(product => `

      <article class="product">

        <div class="product-img">


          ${
            product.badge
              ? `

                <span
                  class="
                    tag
                    ${
                      product.badge.startsWith("-")
                        ? "sale"
                        : ""
                    }
                  "
                >
                  ${product.badge}
                </span>

              `
              : ""
          }


          <button
            class="heart"
            data-heart="${product.id}"
            aria-label="Wishlist"
          >

            <i
              class="fa-regular fa-heart"
            ></i>

          </button>


          <img
            src="${product.img}"
            alt="${product.title}"
            loading="lazy"
          >

        </div>


        <div class="product-body">


          <div class="category-name">

            ${product.category}

          </div>


          <h3>
            ${product.title}
          </h3>


          <div class="rating">

            ${"★".repeat(product.rating)}

            <span>
              (${product.reviews})
            </span>

          </div>


          <div class="price-row">

            <div class="price">

              $${product.price.toLocaleString()}

              ${
                product.oldPrice
                  ? `
                    <span class="old">
                      $${product.oldPrice.toLocaleString()}
                    </span>
                  `
                  : ""
              }

            </div>

          </div>


          <button
            class="add"
            data-id="${product.id}"
          >

            <i
              class="fa-solid fa-cart-plus"
            ></i>

            Add to cart

          </button>

        </div>

      </article>

    `).join("");


  /* Add to cart */

  document
    .querySelectorAll(".add")
    .forEach(button => {

      button.onclick = () => {

        cartCount++;

        $("cartCount").textContent =
          cartCount;

        showToast(
          "Product added to your cart"
        );

      };

    });


  /* Wishlist */

  document
    .querySelectorAll(".heart")
    .forEach(button => {

      button.onclick = () => {

        button.classList.toggle(
          "active"
        );


        if (
          button.classList.contains(
            "active"
          )
        ) {

          button.innerHTML =
            '<i class="fa-solid fa-heart"></i>';

          showToast(
            "Added to wishlist"
          );

        } else {

          button.innerHTML =
            '<i class="fa-regular fa-heart"></i>';

          showToast(
            "Removed from wishlist"
          );

        }

      };

    });

}


/* =========================
   SEARCH
========================= */

function filterProducts(query) {

  const q =
    query
      .trim()
      .toLowerCase();


  if (!q) {

    renderProducts(PRODUCTS);

    return;
  }


  const filtered =
    PRODUCTS.filter(product =>

      product.title
        .toLowerCase()
        .includes(q)

      ||

      product.category
        .toLowerCase()
        .includes(q)

    );


  renderProducts(filtered);

}


$("searchInput")
  .addEventListener(
    "input",
    event => {

      filterProducts(
        event.target.value
      );

    }
  );


/* =========================
   SORTING
========================= */

$("sortSelect")
  .addEventListener(
    "change",
    event => {

      let list =
        [...PRODUCTS];


      const value =
        event.target.value;


      if (
        value === "price-low"
      ) {

        list.sort(
          (a, b) =>
            a.price - b.price
        );

      }


      if (
        value === "price-high"
      ) {

        list.sort(
          (a, b) =>
            b.price - a.price
        );

      }


      if (
        value === "rating"
      ) {

        list.sort(
          (a, b) =>
            b.rating - a.rating
        );

      }


      renderProducts(list);

    }
  );


/* =========================
   HERO BUTTONS
========================= */

$("shopNow").onclick =
  () => {

    $("products")
      .scrollIntoView({
        behavior: "smooth"
      });

  };


$("exploreDeals").onclick =
  () => {

    $("deals")
      .scrollIntoView({
        behavior: "smooth"
      });

  };


/* =========================
   DEAL BUTTON
========================= */

$("buyDeal").onclick =
  () => {

    cartCount++;

    $("cartCount").textContent =
      cartCount;

    showToast(
      "MacBook Air added to your cart"
    );

  };


/* =========================
   CART
========================= */

$("cartBtn").onclick =
  () => {

    if (cartCount > 0) {

      showToast(
        `You have ${cartCount} item${
          cartCount > 1 ? "s" : ""
        } in your cart`
      );

    } else {

      showToast(
        "Your cart is empty"
      );

    }

  };


/* =========================
   MOBILE MENU
========================= */

$("menuBtn").onclick =
  () => {

    const nav =
      document.querySelector(".nav");


    if (
      nav.style.display === "flex"
    ) {

      nav.style.display = "none";

    } else {

      nav.style.display = "flex";

      nav.style.flexDirection =
        "column";

      nav.style.position =
        "absolute";

      nav.style.top = "72px";

      nav.style.left = "10px";

      nav.style.right = "10px";

      nav.style.padding = "10px";

      nav.style.background =
        "white";

      nav.style.border =
        "1px solid var(--border)";

      nav.style.borderRadius =
        "12px";

      nav.style.boxShadow =
        "var(--shadow)";

    }

  };


/* =========================
   NEWSLETTER
========================= */

$("newsletterForm").onsubmit =
  event => {

    event.preventDefault();

    showToast(
      "Thanks! You are subscribed."
    );

    event.target.reset();

  };


/* =========================
   COUNTDOWN
========================= */

const target =
  Date.now()

  +

  24 *
  60 *
  60 *
  1000

  +

  36 *
  60 *
  1000;


function tick() {

  const difference =
    Math.max(
      0,
      target - Date.now()
    );


  $("days").textContent =
    String(
      Math.floor(
        difference / 86400000
      )
    ).padStart(2, "0");


  $("hours").textContent =
    String(
      Math.floor(
        difference / 3600000
      ) % 24
    ).padStart(2, "0");


  $("minutes").textContent =
    String(
      Math.floor(
        difference / 60000
      ) % 60
    ).padStart(2, "0");


  $("seconds").textContent =
    String(
      Math.floor(
        difference / 1000
      ) % 60
    ).padStart(2, "0");

}


setInterval(
  tick,
  1000
);

tick();


/* =========================
   CURRENT YEAR
========================= */

$("year").textContent =
  new Date().getFullYear();


/* =========================
   INITIALIZE
========================= */

renderCategories();

renderProducts(PRODUCTS);

</script>

</body>
</html>
