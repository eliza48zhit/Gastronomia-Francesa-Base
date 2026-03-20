// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title GastronomiaFrancesa
 * @dev Registro historico con sistema de Likes y Dislikes.
 */
contract GastronomiaFrancesa {

    struct Plato {
        string nombre;
        string descripcion;
        uint256 likes;
        uint256 dislikes; // Nueva metrica de votacion
    }

    mapping(uint256 => Plato) public menuHistorico;
    uint256 public totalPlatos;

    constructor() {
        // Inauguramos con el Ratatouille
        registrarPlato("Ratatouille", "Guiso de hortalizas: berenjena, calabacin, pimiento y tomate con herbes de Provence.");
    }

    function registrarPlato(string memory _nombre, string memory _descripcion) public {
        require(bytes(_nombre).length > 0, "El nombre no puede estar vacio");
        require(bytes(_nombre).length + bytes(_descripcion).length <= 200, "Texto demasiado largo");

        totalPlatos++;
        menuHistorico[totalPlatos] = Plato({
            nombre: _nombre,
            descripcion: _descripcion,
            likes: 0,
            dislikes: 0
        });
    }

    function darLike(uint256 _id) public {
        require(_id > 0 && _id <= totalPlatos, "El plato no existe.");
        menuHistorico[_id].likes += 1;
    }

    // Nueva funcion para expresar desacuerdo culinario
    function darDislike(uint256 _id) public {
        require(_id > 0 && _id <= totalPlatos, "El plato no existe.");
        menuHistorico[_id].dislikes += 1;
    }

    function consultarPlato(uint256 _id) public view returns (
        string memory nombre, 
        string memory descripcion, 
        uint256 likes, 
        uint256 dislikes
    ) {
        require(_id > 0 && _id <= totalPlatos, "ID invalido.");
        Plato storage p = menuHistorico[_id];
        return (p.nombre, p.descripcion, p.likes, p.dislikes);
    }
}
