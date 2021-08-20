// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract CriptoSabados {
    
    uint256 public valorRespectoAlEther;
    
    mapping(address => uint256) balances;
    
    constructor() {
        balances[msg.sender] = 1000;
        valorRespectoAlEther = 2;
    }
    
    function enviar(address direccionDestino, uint monto) public {
        if (balances[msg.sender] < monto) revert("El balance de tu cuenta no es suficiente");
        
        balances[direccionDestino] += monto;
        balances[msg.sender] -= monto;
    }
    
    function verBalance(address direccion) public view returns (uint256) {
        return balances[direccion];
    }
    
}