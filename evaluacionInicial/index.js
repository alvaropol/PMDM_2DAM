$(document).ready(function () {

    var correctAnswer = generateCaptcha();


    $(document).on('click', '#createSlug', function () {

        var slugUrl = createSlug($('#tittleNew').val());
        $('#url').val(slugUrl);
    });

    $(document).on('click', '#save', function () {

        var title = $('#tittleNew').val();
        var url = $('#url').val();
        var description = $('#descriptionNew')

        if (title == '') {
            $('#tittleNew').addClass('is-invalid');
        }

        if (url == '') {
            $('#url').addClass('is-invalid');
        }

        if (description == '') {
            $('#descriptionNew').addClass('is-invalid');
        }

        var userAnswer = parseInt($('#captcha').val());

        if (userAnswer === correctAnswer) {

            alert("Respuesta correcta. Puedes guardar la noticia.");


        } else {

            alert("Respuesta incorrecta. Inténtalo de nuevo.");
            correctAnswer = generateCaptcha();
            $('#captcha').val('');
        }
    });

    function generateCaptcha() {
        var num1 = Math.floor(Math.random() * 10);
        var num2 = Math.floor(Math.random() * 10);
        var operation = num1 + " + " + num2;
        var correctAnswer = num1 + num2;

        $('#captcha-question').text("¿Cuánto es " + operation + "?");

        return correctAnswer;
    };

    function createSlug(tittle) {
        var result = '';
        var tittletoSlug = tittle.toLowerCase().split(/\s+/).join("-");
        result = tittletoSlug;
        return result;
    };

});