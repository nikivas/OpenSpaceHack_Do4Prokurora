
<!doctype html>
<html lang="ru">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="/css/styleFirst.css">

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>



    <title>Otkritiye</title>
</head>
<body>

<img src="/img/1.jpg">

<div class="container">

    <h1 class="bagRep">Баг репорт</h1>
    <hr>
    <form>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="typeS">Выберите тип тестируемого ПО</label>
                <select  id="typeS">
                    <option>Веб-приложение</option>
                    <option>Приложение Android</option>
                    <option>Приложение IOS</option>
                </select>
            </div>
        </div>

        <hr />
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputDate">Введите дату:</label>
                <input type="date" id="dataId">
            </div>
            <div class="form-group col-md-6">
                <label for="timeBag1">Введите время</label>
                <input type="time" id="timeBag1" placeholder="">
            </div>
        </div>

        <hr />
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputAddress">ФИО участника бета-тестирования</label>
                <input type="text" id="inputAddress" placeholder="Иванов Иван">
            </div>
            <div class="form-group col-md-6">
                <label for="inputAddress2">Модель смартфона</label>
                <input type="text"  id="inputAddress2" placeholder="">
            </div>
        </div>
        <hr/>
        <div class="form-row">

            <div class="form-group col-md-6">
                <label for="inputOS">Название ОС</label>
                <select  id="inputOS">
                    <option>Windows</option>
                    <option>Linux</option>
                    <option>Mac OS</option>
                    <option>Android</option>
                </select>
            </div>

            <div class="form-group col-md-6">
                <label for="inputOSvers">Версия ОС</label>
                <input type="text"  id="inputOSvers">
            </div>
        </div>

        <div class="form-row">

            <div class="form-group col-md-6">
                <label for="reliz">Версия релиза беты</label>
                <select  id="reliz">
                    <option>V 2.0</option>
                    <option>V 2.1</option>
                    <option>V 3.0</option>
                    <option>V 7.11</option>
                </select>
            </div>

            <div class="form-group col-md-6">
                <label for="nameBag">Название бага</label>
                <input type="text"  id="nameBag">
            </div>
        </div>



        <!-- <h5 class="lgT">Шаги воспроизведения</h5> -->
        <hr>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="step">Новый шаг</label>
                <input type="text"  id="step">
            </div>

            <div class="form-group col-md-6">

                <button onclick="visStep()">

                    <label>В сценарий</label>

                </button>
            </div>
        </div>


        <!-- Скрытый блок поля шагов -->
        <div class="form-row">

            <div class="form-group col-md-6" id = "hidestep">
                <label for="rel">Сценарий</label>
                <!--  <input type="text"  id="step1"> -->
                <textarea id="step1" value = "* "></textarea>
            </div>


        </div>



        <!-- Выберите файл -->
        <div class="form-group">
            <label for="exampleFormControlFile1">Загрузите скриншот</label>
            <input type="file" class="file" multiple id="exampleFormControlFile1" title="ВЫбери же!">
        </div>

        <!-- <button type="submit" class="btn btn-primary">Отправить</button> -->
        <a href="/game">
            <button>
                <label>Отправить</label>
            </button>
        </a>
    </form>

</div>


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.maskedinput/1.4.1/jquery.maskedinput.min.js"></script>
<script type="text/javascript" src="/js/first.js"></script>

</body>
</html>