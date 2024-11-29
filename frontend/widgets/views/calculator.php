<section class="calculator" id="calculator">
    <div class="container">
        <div class="calculator_row">
            <div class="calculator_form">
                <div class="calc_title">Калькулятор доходности</div>
                <div class="caption">Выбор стратегии</div>
                <div class="radios">
                    <label class="input_radio">
                        <input type="radio" name="radio1" checked>
                        <span class="checkmark"></span>
                        <p>Безрисковая, до 19 %</p>
                    </label>
                    <label class="input_radio">
                        <input type="radio" name="radio1">
                        <span class="checkmark"></span>
                        <p>Сбалансированная, до 25 %</p>
                    </label>
                    <label class="input_radio">
                        <input type="radio" name="radio1">
                        <span class="checkmark"></span>
                        <p>Агрессивная, до 44 %</p>
                    </label>
                    <label class="input_radio">
                        <input type="radio" name="radio1">
                        <span class="checkmark"></span>
                        <p>Свой %</p>
                    </label>
                </div>
                <div class="range_inputs">
                    <div>
                        <p class="range_title">Первоначальная сумма вложений</p>
                        <input type="range" id="rangeSlider1" class="range_input" min="100000" value="350000" max="10000000" step="10">
                    </div>
                    <div>
                        <p class="range_title">Сумма ежемесячного пополнения</p>
                        <input type="range" id="rangeSlider2" class="range_input" min="10000" value="50000" max="100000" step="10">
                    </div>
                    <div>
                        <p class="range_title">Срок инвестиций в месяцах</p>
                        <input type="range" id="rangeSlider3" class="range_input" min="12" value="340" max="340" step="1">
                    </div>
                </div>
                <div class="calc_actions">
                    <a href="#" class="btn_">Начать инвестировать</a>
                    <a href="#" class="btn_ btn_active">Консультация</a>
                </div>
            </div>
            <div class="results">
                <div class="result_title">Ваши условия</div>
                <p class="result_subtitle">Информация о стратегии</p>
                <p class="result_desc">Надежные заемщики, низкие риски, стабильная доходность</p>
                <div class="result_items">
                    <div class="result_item">
                        <p>Ожидаемая доходность</p>
                        <div>2,08%</div>
                    </div>
                    <div class="result_item">
                        <p>Ожидаемая доходность в год</p>
                        <div>19%</div>
                    </div>
                    <div class="result_item">
                        <p>Ожидаемый размер капитала</p>
                        <div>9 438 023 ₽</div>
                    </div>
                    <div class="result_item">
                        <p>Доход через 60 месяцев</p>
                        <div>8 438 023 ₽</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <img src="img/calc_bg.png" alt="" class="calc_bg">
</section>