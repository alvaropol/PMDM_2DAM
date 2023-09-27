$(document).ready(function () {
    $.ajax({
        url: 'https://swapi.dev/api/people',
        type: 'GET'
    }).done(function (resp) {
        var listadoPersonajes = resp.results;
        listadoPersonajes.forEach(function (personaje) {
            // var template = '<p><h1>' + pokemon.name + '</h1></p>';;
            var template =
                `<h5 class="card-title text-warning">${personaje.name}</h5>
            <hr style="color: white;">
            <p class="card-text text-white">
            ${personaje.birth_year}
                <br>
                ${personaje.gender}
            </p>`
            $('#tarjeta').append(template);
        });
    });

});