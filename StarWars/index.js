$(document).ready(function () {
    $.ajax({
        url: 'https://swapi.dev/api/people/',
        type: 'GET'
    }).done(function (resp) {
        var listadoPersonajes = resp.results;
        listadoPersonajes.forEach(function (personaje) {
            var template =
                `<div class="col">
                <a href="#modal" title="Foto de Darth Maul" class="btn"><img
                src="https://starwars-visualguide.com/assets/img/characters/44.jpg" class="card-img-top"
                alt="Skyscrapers" /></a>
                <div class="card-body bg-dark">
                <h5 class="card-title text-warning">${personaje.name}</h5>
                <hr style="color: white;">
                <p class="card-text text-white">
                ${personaje.birth_year}
                <br>
                ${personaje.gender}
                </p>
                </div>
                </div>`
            $('#row1').append(template);
        });
    });
});
