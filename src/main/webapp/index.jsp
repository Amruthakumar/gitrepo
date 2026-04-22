<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>NexusShop — Elevated Modern E‑Commerce</title>
    <!-- Google Fonts + Font Awesome 6 -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: #fefefe;
            font-family: 'Inter', sans-serif;
            color: #111827;
            scroll-behavior: smooth;
        }

        :root {
            --deep: #0a0c10;
            --navy: #0b2b40;
            --teal: #2dd4bf;
            --teal-dark: #14b8a6;
            --amber: #f59e0b;
            --gray-bg: #f9fafb;
            --card-white: #ffffff;
            --shadow-sm: 0 10px 25px -5px rgba(0, 0, 0, 0.02), 0 8px 10px -6px rgba(0, 0, 0, 0.02);
            --shadow-md: 0 20px 25px -12px rgba(0, 0, 0, 0.05);
            --radius-xl: 1.75rem;
            --radius-lg: 1.25rem;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 24px;
        }

        /* header modern glassmorphism */
        .glass-header {
            background: rgba(255, 255, 255, 0.96);
            backdrop-filter: blur(12px);
            border-bottom: 1px solid rgba(45, 212, 191, 0.2);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .header-flex {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 1rem 0;
            gap: 1.5rem;
        }

        .brand-logo {
            font-family: 'Space Grotesk', monospace;
            font-weight: 700;
            font-size: 1.7rem;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, #0b2b40 0%, #2dd4bf 100%);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        .brand-logo span {
            color: #2dd4bf;
            background: none;
            -webkit-background-clip: unset;
        }

        .nav-links {
            display: flex;
            gap: 1.8rem;
            align-items: center;
        }

        .nav-links a {
            text-decoration: none;
            font-weight: 500;
            color: #1f2937;
            transition: 0.2s;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .nav-links a:hover {
            color: #14b8a6;
        }

        .search-wrapper {
            background: #f1f5f9;
            border-radius: 60px;
            padding: 0.5rem 1rem;
            display: flex;
            align-items: center;
            gap: 8px;
            min-width: 240px;
            transition: all 0.2s;
        }

        .search-wrapper input {
            background: transparent;
            border: none;
            outline: none;
            width: 100%;
            font-size: 0.9rem;
        }

        .icon-btn {
            background: transparent;
            border: none;
            font-size: 1.2rem;
            cursor: pointer;
            color: #1e293b;
            transition: 0.2s;
        }

        .cart-badge {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -8px;
            right: -12px;
            background: #2dd4bf;
            color: #0f172a;
            font-weight: 700;
            font-size: 0.7rem;
            width: 18px;
            height: 18px;
            border-radius: 30px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
        }

        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            font-size: 1.6rem;
        }

        /* hero modern */
        .hero-modern {
            background: linear-gradient(102deg, #eef2ff 0%, #e0f2fe 100%);
            border-radius: 0 0 2rem 2rem;
            margin: 0 0 2rem 0;
            position: relative;
            overflow: hidden;
        }

        .hero-inner {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            padding: 3rem 0 3rem 0;
        }

        .hero-text {
            flex: 1.2;
        }

        .hero-text h1 {
            font-size: 3.2rem;
            font-weight: 700;
            font-family: 'Space Grotesk', sans-serif;
            background: linear-gradient(to right, #0f172a, #2dd4bf);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            line-height: 1.2;
        }

        .hero-badge {
            background: rgba(45, 212, 191, 0.2);
            display: inline-block;
            padding: 0.3rem 1rem;
            border-radius: 40px;
            font-size: 0.8rem;
            font-weight: 600;
            margin-bottom: 1rem;
            color: #115e59;
        }

        .btn-group {
            display: flex;
            gap: 1rem;
            margin-top: 1.5rem;
        }

        .btn-primary {
            background: #0f172a;
            color: white;
            border: none;
            padding: 0.8rem 1.8rem;
            border-radius: 60px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.2s;
        }

        .btn-outline {
            background: transparent;
            border: 1px solid #0f172a;
            padding: 0.8rem 1.8rem;
            border-radius: 60px;
            font-weight: 600;
            cursor: pointer;
        }

        .hero-image {
            flex: 0.8;
            text-align: center;
        }

        /* category cards (glass) */
        .section-title {
            font-size: 2rem;
            font-weight: 700;
            margin-bottom: 0.5rem;
            font-family: 'Space Grotesk', sans-serif;
        }

        .categories-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(160px, 1fr));
            gap: 1.5rem;
            margin-top: 2rem;
        }

        .category-card {
            background: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(2px);
            border-radius: 1.5rem;
            padding: 1.5rem 0.8rem;
            text-align: center;
            transition: all 0.25s ease;
            border: 1px solid rgba(45, 212, 191, 0.2);
            cursor: pointer;
        }

        .category-card i {
            font-size: 2.2rem;
            color: #2dd4bf;
        }

        /* product grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }

        .product-card {
            background: var(--card-white);
            border-radius: 1.5rem;
            overflow: hidden;
            transition: all 0.25s;
            box-shadow: var(--shadow-sm);
            border: 1px solid #f0f2f5;
        }

        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 25px 30px -12px rgba(0, 0, 0, 0.1);
        }

        .product-img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            transition: 0.3s;
        }

        .product-info {
            padding: 1rem 1.2rem 1.2rem;
        }

        .price-row {
            display: flex;
            justify-content: space-between;
            align-items: baseline;
        }

        .current-price {
            font-weight: 800;
            font-size: 1.3rem;
            color: #0f172a;
        }

        .old-price {
            text-decoration: line-through;
            color: #94a3b8;
            font-size: 0.8rem;
        }

        .rating i {
            color: #fbbf24;
            font-size: 0.8rem;
        }

        .add-cart {
            background: #f1f5f9;
            border: none;
            width: 100%;
            padding: 0.7rem;
            border-radius: 40px;
            font-weight: 600;
            margin-top: 0.8rem;
            cursor: pointer;
            transition: 0.2s;
        }

        /* deal section */
        .deal-section {
            background: linear-gradient(115deg, #0b2b40 0%, #06212e 100%);
            border-radius: 2rem;
            padding: 2rem;
            margin: 3rem 0;
            color: white;
        }

        .deal-flex {
            display: flex;
            flex-wrap: wrap;
            gap: 2rem;
            align-items: center;
        }

        .timer-grid {
            display: flex;
            gap: 1rem;
            margin: 1.5rem 0;
        }

        .time-card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(4px);
            padding: 0.8rem 1.2rem;
            border-radius: 1rem;
            text-align: center;
            min-width: 70px;
        }

        /* testimonials */
        .testimonial-slider {
            display: flex;
            gap: 1.8rem;
            overflow-x: auto;
            padding: 1rem 0.2rem;
            scrollbar-width: thin;
        }

        .testimonial-card {
            min-width: 300px;
            background: white;
            border-radius: 1.5rem;
            padding: 1.5rem;
            box-shadow: var(--shadow-sm);
        }

        /* newsletter */
        .newsletter-card {
            background: #0f172a;
            border-radius: 2rem;
            padding: 3rem 2rem;
            text-align: center;
            color: white;
        }

        .newsletter-form {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 0.8rem;
            margin-top: 1.5rem;
        }

        .newsletter-form input {
            padding: 0.8rem 1.2rem;
            border-radius: 60px;
            border: none;
            width: 280px;
        }

        footer {
            padding: 2.5rem 0;
            border-top: 1px solid #e2e8f0;
            margin-top: 2rem;
        }

        @media (max-width: 860px) {
            .nav-links {
                display: none;
            }
            .mobile-menu-btn {
                display: block;
            }
            .hero-text h1 {
                font-size: 2.2rem;
            }
        }
        @media (max-width: 640px) {
            .hero-inner {
                flex-direction: column;
                text-align: center;
            }
            .btn-group {
                justify-content: center;
            }
            .categories-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }
        .toast-msg {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background: #0f172a;
            color: white;
            padding: 12px 20px;
            border-radius: 50px;
            font-size: 0.85rem;
            z-index: 200;
            opacity: 0;
            transition: 0.2s;
        }
    </style>
</head>
<body>

<div class="glass-header">
    <div class="container header-flex">
        <div style="display: flex; align-items: center; gap: 1rem;">
            <button class="mobile-menu-btn" id="mobileMenuBtn"><i class="fas fa-bars"></i></button>
            <div class="brand-logo">NEXUS<span>SHOP</span></div>
        </div>
        <div class="nav-links" id="desktopNav">
            <a href="#"><i class="fas fa-home"></i> Home</a>
            <a href="#categories"><i class="fas fa-th-large"></i> Shop</a>
            <a href="#deals"><i class="fas fa-bolt"></i> Flash Sale</a>
            <a href="#trending"><i class="fas fa-chart-line"></i> Trending</a>
        </div>
        <div style="display: flex; align-items: center; gap: 1rem;">
            <div class="search-wrapper">
                <i class="fas fa-search"></i>
                <input type="text" id="searchInput" placeholder="Search products...">
            </div>
            <button class="icon-btn" id="wishlistIcon"><i class="far fa-heart"></i></button>
            <div class="cart-badge">
                <button class="icon-btn" id="cartIconBtn"><i class="fas fa-shopping-bag"></i></button>
                <span class="cart-count" id="cartCountDisplay">0</span>
            </div>
        </div>
    </div>
    <!-- mobile nav -->
    <div id="mobileNavPanel" style="display: none; background: white; border-top: 1px solid #e2e8f0; padding: 1rem 0;">
        <div class="container" style="display: flex; flex-direction: column; gap: 12px;">
            <a href="#">Home</a>
            <a href="#categories">Categories</a>
            <a href="#deals">Deals</a>
            <a href="#trending">Products</a>
        </div>
    </div>
</div>

<main>
    <!-- Hero with better vibe -->
    <div class="hero-modern">
        <div class="container hero-inner">
            <div class="hero-text">
                <div class="hero-badge"><i class="fas fa-gem"></i> limited edition drops</div>
                <h1>Elevate your everyday style</h1>
                <p style="margin-top: 1rem; color: #334155;">Discover premium essentials, curated design, and exclusive flash sales. Free shipping on orders over $50.</p>
                <div class="btn-group">
                    <button class="btn-primary" id="shopNowHero"><i class="fas fa-store"></i> Shop Collection</button>
                    <button class="btn-outline" id="exploreDealsHero"><i class="fas fa-tag"></i> Flash Deals</button>
                </div>
            </div>
            <div class="hero-image">
                <img src="https://images.unsplash.com/photo-1523381294911-8d3cead13475?auto=format&fit=crop&w=500&q=80" alt="hero visual" style="max-width: 280px; border-radius: 2rem; box-shadow: 0 20px 35px -8px rgba(0,0,0,0.2);">
            </div>
        </div>
    </div>

    <!-- Categories section -->
    <div class="container" id="categories">
        <div style="margin: 3rem 0 1rem 0;">
            <span class="section-title">Curated Collections</span>
            <p style="color: #4b5563;">Shop by category — inspired by you.</p>
        </div>
        <div class="categories-grid" id="categoriesGrid"></div>
    </div>

    <!-- Trending products -->
    <div class="container" id="trending">
        <div style="margin: 3rem 0 1rem 0;">
            <span class="section-title"><i class="fas fa-fire" style="color: #f59e0b;"></i> Trending now</span>
            <p>Most loved picks this week</p>
        </div>
        <div class="products-grid" id="productsGrid"></div>
    </div>

    <!-- Flash sale deal with timer -->
    <div class="container" id="deals">
        <div class="deal-section">
            <div class="deal-flex">
                <div style="flex:1">
                    <img src="https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=500&q=80" alt="Flash sale" style="width:100%; border-radius: 1.5rem; max-height: 280px; object-fit: cover;">
                </div>
                <div style="flex:1.2">
                    <h2 style="font-size: 1.9rem;"><i class="fas fa-stopwatch"></i> Flash Sale: Studio Edition</h2>
                    <p style="opacity: 0.9">Premium wireless headphone · 40h battery life · limited stock</p>
                    <div class="timer-grid" id="timerContainer">
                        <div class="time-card"><span id="dealDays" style="font-size: 1.6rem; font-weight: 700;">00</span><br>Days</div>
                        <div class="time-card"><span id="dealHours" style="font-size: 1.6rem; font-weight: 700;">00</span><br>Hrs</div>
                        <div class="time-card"><span id="dealMinutes" style="font-size: 1.6rem; font-weight: 700;">00</span><br>Min</div>
                        <div class="time-card"><span id="dealSeconds" style="font-size: 1.6rem; font-weight: 700;">00</span><br>Sec</div>
                    </div>
                    <div style="display: flex; gap: 1rem; align-items: baseline; margin: 1rem 0;">
                        <span style="font-size: 2rem; font-weight: 800;">$199</span>
                        <span style="text-decoration: line-through; opacity: 0.6;">$349</span>
                        <span style="background: #f59e0b; padding: 4px 12px; border-radius: 40px;">-43% OFF</span>
                    </div>
                    <button class="btn-primary" id="flashSaleBtn" style="background: #2dd4bf; color: #0f172a;">Grab deal <i class="fas fa-arrow-right"></i></button>
                </div>
            </div>
        </div>
    </div>

    <!-- Testimonials slider -->
    <div class="container">
        <div style="margin: 2rem 0 1rem;"><span class="section-title">❤️ Loved by customers</span></div>
        <div class="testimonial-slider" id="testimonialsContainer"></div>
    </div>

    <!-- Newsletter -->
    <div class="container" style="margin: 2rem auto;">
        <div class="newsletter-card">
            <i class="fas fa-envelope-open-text" style="font-size: 2rem; color: #2dd4bf;"></i>
            <h3>Join the inner circle</h3>
            <p>Get early access to sales & new arrivals</p>
            <div class="newsletter-form">
                <input type="email" placeholder="your@email.com" id="newsEmail">
                <button class="btn-primary" id="newsletterBtn" style="background: white; color: #0f172a;">Subscribe</button>
            </div>
        </div>
    </div>
</main>

<footer>
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap;">
        <div>© 2025 NexusShop — modern minimalism</div>
        <div><i class="fab fa-instagram"></i> <i class="fab fa-twitter"></i> <i class="fab fa-tiktok"></i></div>
    </div>
</footer>
<div id="toastMsg" class="toast-msg">Item added 🛒</div>

<script>
    // ---------- Data ----------
    const categories = [
        { name: "Electronics", icon: "fas fa-microchip", color: "#2dd4bf" },
        { name: "Fashion", icon: "fas fa-tshirt", color: "#f97316" },
        { name: "Home & Living", icon: "fas fa-couch", color: "#8b5cf6" },
        { name: "Accessories", icon: "fas fa-gem", color: "#ec4899" }
    ];

    const products = [
        { id: 1, name: "Minimalist Backpack", price: 79, oldPrice: 129, rating: 4.8, img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=300&q=80", category: "Accessories" },
        { id: 2, name: "Smart Watch Ultra", price: 199, oldPrice: 299, rating: 4.9, img: "https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=300&q=80", category: "Electronics" },
        { id: 3, name: "Organic Cotton Hoodie", price: 59, oldPrice: 99, rating: 4.7, img: "https://images.unsplash.com/photo-1556821840-3a63f95609a7?auto=format&fit=crop&w=300&q=80", category: "Fashion" },
        { id: 4, name: "Ceramic Coffee Set", price: 45, oldPrice: 75, rating: 4.6, img: "https://images.unsplash.com/photo-1517256673644-36ad112145d0?auto=format&fit=crop&w=300&q=80", category: "Home & Living" },
        { id: 5, name: "Wireless Earbuds", price: 89, oldPrice: 149, rating: 4.8, img: "https://images.unsplash.com/photo-1590658268037-6bf12165a8df?auto=format&fit=crop&w=300&q=80", category: "Electronics" },
        { id: 6, name: "Leather Sneakers", price: 99, oldPrice: 159, rating: 4.7, img: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=300&q=80", category: "Fashion" },
    ];

    let cart = JSON.parse(localStorage.getItem("nexus_cart")) || [];
    function updateCartUI() {
        const total = cart.reduce((sum, item) => sum + item.qty, 0);
        document.getElementById("cartCountDisplay").innerText = total;
        localStorage.setItem("nexus_cart", JSON.stringify(cart));
    }
    function addToCart(productId) {
        const product = products.find(p => p.id === productId);
        if (!product) return;
        const existing = cart.find(i => i.id === productId);
        if (existing) existing.qty += 1;
        else cart.push({ id: product.id, name: product.name, price: product.price, qty: 1 });
        updateCartUI();
        showToast(`${product.name} added to bag ✨`);
    }
    function showToast(msg) {
        const toast = document.getElementById("toastMsg");
        toast.innerText = msg;
        toast.style.opacity = "1";
        setTimeout(() => { toast.style.opacity = "0"; }, 2000);
    }

    // Render categories
    function renderCategories() {
        const container = document.getElementById("categoriesGrid");
        container.innerHTML = categories.map(cat => `
            <div class="category-card">
                <i class="${cat.icon}" style="font-size: 2.5rem; color: ${cat.color}"></i>
                <h4 style="margin-top: 10px;">${cat.name}</h4>
            </div>
        `).join("");
    }

    // Render products
    function renderProducts(filterText = "") {
        const container = document.getElementById("productsGrid");
        let filtered = products.filter(p => p.name.toLowerCase().includes(filterText.toLowerCase()));
        container.innerHTML = filtered.map(prod => `
            <div class="product-card">
                <img class="product-img" src="${prod.img}" alt="${prod.name}" loading="lazy">
                <div class="product-info">
                    <h4>${prod.name}</h4>
                    <div class="rating">${'★'.repeat(Math.floor(prod.rating))}${prod.rating % 1 ? '½' : ''} <span style="color:#94a3b8;">(${prod.rating})</span></div>
                    <div class="price-row">
                        <span class="current-price">$${prod.price}</span>
                        <span class="old-price">$${prod.oldPrice}</span>
                    </div>
                    <button class="add-cart" data-id="${prod.id}"><i class="fas fa-shopping-cart"></i> Add to Cart</button>
                </div>
            </div>
        `).join("");
        document.querySelectorAll(".add-cart").forEach(btn => {
            btn.addEventListener("click", (e) => {
                const id = parseInt(btn.dataset.id);
                addToCart(id);
            });
        });
    }

    // Testimonials
    const testimonials = [
        { name: "Sophia Chen", text: "Incredible quality and fast delivery. The design is unmatched!", rating: 5, avatar: "https://randomuser.me/api/portraits/women/68.jpg" },
        { name: "Marcus Lee", text: "Best online shopping experience. The flash sale was legit!", rating: 5, avatar: "https://randomuser.me/api/portraits/men/32.jpg" },
        { name: "Emma Watson", text: "Absolutely love my new backpack. Highly recommend NexusShop.", rating: 4, avatar: "https://randomuser.me/api/portraits/women/44.jpg" }
    ];
    function renderTestimonials() {
        const container = document.getElementById("testimonialsContainer");
        container.innerHTML = testimonials.map(t => `
            <div class="testimonial-card">
                <div style="display:flex; gap:8px; align-items:center;">
                    <img src="${t.avatar}" style="width:44px; height:44px; border-radius:50%; object-fit:cover;">
                    <div><strong>${t.name}</strong><br><span>${'⭐'.repeat(t.rating)}</span></div>
                </div>
                <p style="margin-top:12px;">“${t.text}”</p>
            </div>
        `).join("");
    }

    // Flash sale countdown (ends in 2 days + 14 hours)
    let targetDate = new Date();
    targetDate.setDate(targetDate.getDate() + 2);
    targetDate.setHours(targetDate.getHours() + 14);
    function updateCountdown() {
        const now = new Date();
        const diff = targetDate - now;
        if (diff <= 0) {
            document.getElementById("dealDays").innerText = "0";
            document.getElementById("dealHours").innerText = "00";
            document.getElementById("dealMinutes").innerText = "00";
            document.getElementById("dealSeconds").innerText = "00";
            return;
        }
        const days = Math.floor(diff / (1000 * 60 * 60 * 24));
        const hours = Math.floor((diff % (86400000)) / 3600000);
        const mins = Math.floor((diff % 3600000) / 60000);
        const secs = Math.floor((diff % 60000) / 1000);
        document.getElementById("dealDays").innerText = days;
        document.getElementById("dealHours").innerText = hours < 10 ? "0"+hours : hours;
        document.getElementById("dealMinutes").innerText = mins < 10 ? "0"+mins : mins;
        document.getElementById("dealSeconds").innerText = secs < 10 ? "0"+secs : secs;
    }
    setInterval(updateCountdown, 1000);
    updateCountdown();

    // search & interactions
    document.getElementById("searchInput").addEventListener("input", (e) => {
        renderProducts(e.target.value);
    });
    document.getElementById("shopNowHero").addEventListener("click", () => {
        document.getElementById("trending").scrollIntoView({ behavior: "smooth" });
    });
    document.getElementById("exploreDealsHero").addEventListener("click", () => {
        document.getElementById("deals").scrollIntoView({ behavior: "smooth" });
    });
    document.getElementById("flashSaleBtn").addEventListener("click", () => {
        const dealProduct = products.find(p => p.name.includes("Wireless Earbuds")) || products[4];
        if(dealProduct) addToCart(dealProduct.id);
        else showToast("Deal item added!");
    });
    document.getElementById("cartIconBtn").addEventListener("click", () => {
        let msg = cart.length ? `Cart: ${cart.map(i=>`${i.name} x${i.qty}`).join(", ")}` : "Cart is empty";
        showToast(msg);
    });
    document.getElementById("newsletterBtn").addEventListener("click", () => {
        const email = document.getElementById("newsEmail").value;
        if(email.includes("@")) showToast(`Thanks! ${email} subscribed 🎉`);
        else showToast("Valid email please");
    });
    // mobile toggle
    const mobileBtn = document.getElementById("mobileMenuBtn");
    const mobilePanel = document.getElementById("mobileNavPanel");
    mobileBtn.addEventListener("click", () => {
        if(mobilePanel.style.display === "none") mobilePanel.style.display = "block";
        else mobilePanel.style.display = "none";
    });
    // initial renders
    renderCategories();
    renderProducts("");
    renderTestimonials();
    updateCartUI();
    // wishlist click effect
    document.getElementById("wishlistIcon").addEventListener("click", () => showToast("❤️ Wishlist saved (demo)"));
</script>
</body>
</html>
