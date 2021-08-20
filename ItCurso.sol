// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 <0.9.0;

contract ItCurso {
    
    address autor;
    string mensaje;
    
    constructor() {
        autor = msg.sender;
        mensaje = "hola mundo";
    }
    
    function verUltimoMensaje() public view returns (address, string memory) {
        return (autor, mensaje);
    }
    
    function saveMesaje(address nuevoAutor, string memory newMesaje) public {
       autor = nuevoAutor;
       mensaje = newMesaje;
    }
    
}