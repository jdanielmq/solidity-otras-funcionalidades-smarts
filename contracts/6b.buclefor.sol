// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract TestBlucles {
    function suma100(uint _numero) public  pure returns (uint) {
        uint suma = 0;
        for(uint i = _numero; i< (_numero + 100); i++){
            suma += i;
        }
        return suma;
    }

    address[] private direcciones;

    function asociar() public {
        direcciones.push(msg.sender);
    }
    function getDirecciones() public view returns (address[] memory) {
        return direcciones;
    }

    function comprobarAsociacion() public view returns (bool estado, address direccion){
        for (uint i = 0; i < direcciones.length; i++){
            if (direcciones[i] == msg.sender){
                estado = true;
                direccion = direcciones[i];
                return (estado, direccion);
            }
        }
        return (estado, direccion);
    }
}