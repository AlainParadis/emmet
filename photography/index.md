---
layout: default
title: Photography Portfolio
---
<div class="gallery-wrapper">
    <div class="carousel-container">
        <div class="carousel-track" id="track">
            {% assign photo_posts = site.photography | sort: 'date' | reverse %}
            {% for post in photo_posts %}
                {% for item in post.gallery %}
                <div class="slide">
                    <img src="{{ site.baseurl }}/{{ item.image }}" alt="{{ item.alt | default: post.title }}">
                    <div class="caption-overlay">
                        <span class="photo-title">{{ post.title }}</span>
                        {% if item.caption %}
                        <span class="photo-desc">— {{ item.caption }}</span>
                        {% endif %}
                    </div>
                </div>
                {% endfor %}
            {% endfor %}
        </div>

        <button class="nav-btn prev" onclick="moveSlide(-1)" aria-label="Previous">❮</button>
        <button class="nav-btn next" onclick="moveSlide(1)" aria-label="Next">❯</button>
    </div>
    <div class="counter" id="counter">1 / 1</div>
</div>

<style>
    :root {
        --carousel-bg: #0a0a0a;
        --accent-color: #ffffff;
    }

    .gallery-wrapper {
        background: var(--carousel-bg);
        padding: 40px 0;
        min-height: 90vh;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .carousel-container {
        width: 90%;
        max-width: 1200px;
        position: relative;
        overflow: hidden;
        border-radius: 4px;
        box-shadow: 0 20px 50px rgba(0,0,0,0.5);
    }

    .carousel-track {
        display: flex;
        transition: transform 0.6s cubic-bezier(0.23, 1, 0.32, 1);
    }

    .slide {
        min-width: 100%;
        height: 75vh;
        position: relative;
        display: flex;
        align-items: center;
        justify-content: center;
        background: #000;
    }

    .slide img {
        max-width: 100%;
        max-height: 100%;
        object-fit: contain; /* Keeps the photo's original aspect ratio */
    }

    .caption-overlay {
        position: absolute;
        bottom: 0;
        left: 0;
        right: 0;
        padding: 30px;
        background: linear-gradient(transparent, rgba(0,0,0,0.8));
        color: white;
        text-align: center;
        opacity: 0;
        transition: opacity 0.3s;
    }

    .slide:hover .caption-overlay { opacity: 1; }

    .photo-title { font-weight: bold; text-transform: uppercase; letter-spacing: 1px; }

    .nav-btn {
        position: absolute; top: 50%; transform: translateY(-50%);
        background: rgba(0,0,0,0.5); border: none; color: white;
        padding: 25px 15px; cursor: pointer; font-size: 2rem;
        transition: background 0.2s; z-index: 5;
    }

    .nav-btn:hover { background: rgba(255,255,255,0.2); }
    .prev { left: 0; border-radius: 0 4px 4px 0; }
    .next { right: 0; border-radius: 4px 0 0 4px; }

    .counter { color: #888; margin-top: 20px; font-family: monospace; }
</style>

<script>
    let currentIndex = 0;
    const track = document.getElementById('track');
    const counter = document.getElementById('counter');

    function updateCounter() {
        const slides = document.querySelectorAll('.slide');
        counter.innerText = `${currentIndex + 1} / ${slides.length}`;
    }

    function moveSlide(direction) {
        const slides = document.querySelectorAll('.slide');
        if (slides.length === 0) return;
        currentIndex = (currentIndex + direction + slides.length) % slides.length;
        track.style.transform = `translateX(-${currentIndex * 100}%)`;
        updateCounter();
    }

    // Add Keyboard Support
    document.addEventListener('keydown', (e) => {
        if (e.key === "ArrowLeft") moveSlide(-1);
        if (e.key === "ArrowRight") moveSlide(1);
    });

    // Initialize counter
    window.onload = updateCounter;
</script>