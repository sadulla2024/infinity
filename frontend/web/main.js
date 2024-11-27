document.addEventListener('DOMContentLoaded', () => {

    if(document.querySelectorAll('.play_btn').length){
        document.querySelector('.play_btn').addEventListener('click', function(){
            document.querySelector('.video_player').classList.add('active')
        })
    }

    if(document.querySelectorAll('#myChart').length){
        const ctx = document.getElementById('myChart').getContext('2d');
        const gradient = ctx.createLinearGradient(481.134, 0.550648, 480.696, 345.979);
        gradient.addColorStop(0, 'rgba(32, 131, 109, 0.35)');
        gradient.addColorStop(1, 'rgba(47, 131, 113, 0.11)');
        const data = {
            labels: ['2015', '2016', '2017', '2018', '2019', '2020', '2021', '2022', '2023', '2024'],
            datasets: [{
                label: 'Data',
                data: [77500, 84000, 93000, 108500, 135000, 170500, 210000, 335000, 345000, 500000],
                fill: true,
                backgroundColor: gradient,
                borderColor: '#288873',
                borderWidth: 3,
                pointRadius: 4,
                pointBackgroundColor: '#20836D',
                tension: 0.4
            }]
        };

        const options = {
            responsive: true,
            plugins: {
                legend: {
                    display: false
                }
            },
            scales: {
                x: {
                    grid: {
                        display: false
                    }
                },
                y: {
                    beginAtZero: true,
                    grid: {
                        color: '#e0e0e0'
                    }
                }
            }
        };

        const myChart = new Chart(ctx, {
            type: 'line',
            data: data,
            options: options
        });

    }

    if(document.querySelectorAll('#rangeSlider1').length){
        const $rangeInput1 = $("#rangeSlider1");
        var min = parseInt($rangeInput1.attr("min"));
        var max = parseInt($rangeInput1.attr("max"));
        var from = parseInt($rangeInput1.val());
        $("#rangeSlider1").ionRangeSlider({
            min: min,
            max: max,
            from: from,
        });
    }

    if(document.querySelectorAll('#rangeSlider2').length){
        const $rangeInput1 = $("#rangeSlider2");
        var min = parseInt($rangeInput1.attr("min"));
        var max = parseInt($rangeInput1.attr("max"));
        var from = parseInt($rangeInput1.val());
        $("#rangeSlider2").ionRangeSlider({
            min: min,
            max: max,
            from: from,
        });
    }

    if(document.querySelectorAll('#rangeSlider3').length){
        const $rangeInput1 = $("#rangeSlider3");
        var min = parseInt($rangeInput1.attr("min"));
        var max = parseInt($rangeInput1.attr("max"));
        var from = parseInt($rangeInput1.val());
        $("#rangeSlider3").ionRangeSlider({
            min: min,
            max: max,
            from: from,
        });
    }

    if(document.querySelectorAll('.news_swiper').length){
        const swiper = new Swiper('.news_swiper', {
            slidesPerView: 3,
            spaceBetween: 20,
            loop: true,
            navigation: {
                nextEl: '.swiper-next',
                prevEl: '.swiper-prev',
            },
            breakpoints: {
                0: {
                    slidesPerView: 1
                },
                768: {
                    slidesPerView: 2
                },
                992: {
                    slidesPerView: 3
                }
            }
        });
    }

    if (document.querySelector('.faq_section')) {

        let faqToggles = document.querySelectorAll('.faq_title, .faq_arrow');

        faqToggles.forEach(function(toggle) {
            toggle.addEventListener('click', function() {
                const faqTop = this.closest('.faq_top');
                const faqBody = faqTop.nextElementSibling;

                document.querySelectorAll('.faq_body').forEach(function(body) {
                    if (body !== faqBody) {
                        body.style.height = '0px';
                        body.classList.remove('open');

                        const otherArrow = body.previousElementSibling.querySelector('.faq_arrow');
                        if (otherArrow) {
                            otherArrow.classList.remove('rotate');
                        }
                    }
                });

                if (faqBody.classList.contains('open')) {
                    faqBody.style.height = '0px';
                } else {
                    faqBody.style.height = `${faqBody.scrollHeight}px`;
                }

                faqBody.classList.toggle('open');

                const faqArrow = faqTop.querySelector('.faq_arrow');
                if (faqArrow) {
                    faqArrow.classList.toggle('rotate');
                }
            });
        });
    }

    if (document.querySelector('.header_menu')){

        document.querySelector('.hamburger').addEventListener('click', function(){
            document.querySelector('.header_menu').classList.add('show')
            document.querySelector('.modal_back').classList.add('active')
        })

        document.querySelector('.modal_back').addEventListener('click', function(){
            document.querySelector('.header_menu').classList.remove('show')
            document.querySelector('.modal_back').classList.remove('active')
        })
    }

    const telInput = document.querySelectorAll('input[type="tel"]');

    if (telInput.length) {
        telInput.forEach(input => {
            new IMask(input, {
                mask: '+{7} 000 000 00 00'
            });
        });
    }

    if(document.querySelectorAll('.progres').length){
        const progressBars = document.querySelectorAll(".progres");

        progressBars.forEach(progressBar => {
            const progressValue = progressBar.getAttribute("data-value");
            const span = progressBar.querySelector("span");

            span.style.width = `${progressValue}%`;
        });
    }
})