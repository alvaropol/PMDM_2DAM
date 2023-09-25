$(document).ready(function () {

    var alfabeto = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];

    function caesarCipher(texto, despl) {

        var result = '';

        for (let i = 0; i < texto.length; i++) {
            let char = texto.charAt(i);
            if (char.match(/[a-z]/i)) { //Verifica si el carácter es una letra del alfabeto (ignorando si es mayúscula o minúscula)
                let isUpperCase = char === char.toUpperCase();
                char = char.toUpperCase();
                let i = alfabeto.indexOf(char);
                if (i !== -1) {
                    let iDespl = (i + despl) % 26;
<<<<<<< HEAD
                    if (iDespl < 0) {

                        iDespl += 26;

                    }

=======
                    //Modulo de 26 porque el array de alfabeto tiene 27 letras (es 26 porque contamos el 0 en un array)
                    if (iDespl < 0) {
                        iDespl += 26;
                    }
>>>>>>> ee3c0f3fe75671ab6a9574f3fde91a9fd6b3513f
                    let iChar = alfabeto[iDespl];
                    if (!isUpperCase) {
                        iChar = iChar.toLowerCase();
                    }
                    result += iChar;
                }
            } else {
                result += char;
            }
        }

        return result;

    }

<<<<<<< HEAD
    $('#encrypt').click(function () {
=======
    $(document).on('click', '#encrypt', function () {
>>>>>>> ee3c0f3fe75671ab6a9574f3fde91a9fd6b3513f
        var texto = $('#text').val();
        var despl = parseInt($('#despl').val());
        var textEncrypt = caesarCipher(texto, despl);
        $('#result').text(textEncrypt);
    });
});

<<<<<<< HEAD
//Me falta el descifrar
=======
//Me falta el descifrar
>>>>>>> ee3c0f3fe75671ab6a9574f3fde91a9fd6b3513f
