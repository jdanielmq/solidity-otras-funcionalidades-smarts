// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract TestWhile {
    function test() public pure returns (uint) {
        uint i = 0;
        while (i < 10) {
            i++;
        }
        return i;
    }

    //funcion 1: suma de los numeros impares menores a 100
    function sumaImpares() public pure returns (uint) {
        uint suma = 0;
        uint contatdor = 1;
        while (contatdor <= 100) {
            if (contatdor % 2 != 0) {
                suma += contatdor;
            }
            contatdor++;
        }
        return suma;
    }

    //funcion 1: suma de los numeros pares menores a 100
    function sumaPares() public pure returns (uint) {
        uint suma = 0;
        uint contatdor = 1;
        while (contatdor <= 100) {
            if (contatdor % 2 == 0) {
                suma += contatdor;
            }
            contatdor++;
        }
        return suma;
    }

    // funcion 3: suma los primero n numeros naturales.
    function sumaNaturales(uint n) public pure returns (uint) {
        uint suma = 0;
        uint contatdor = 1;
        while (contatdor <= n) {
            suma += contatdor;
            contatdor++;
        }
        return suma;
    }
}