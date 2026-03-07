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