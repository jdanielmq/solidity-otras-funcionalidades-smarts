// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract SentenceIf {
    function checkAge(uint256 age) public pure returns (string memory) {
        if (age >= 18) {
            return "You are an adult.";
        } else {
            return "You are a minor.";
        }
    }

    function valorAbsoluto(int _numero) public pure returns (int) {
        if (_numero < 0) {
            return _numero * -1;
        } else {
            return _numero;
        }
    }

    function esParDeTres(uint _numero) public pure returns (bool) {
        return (_numero % 2 == 0 && _numero >= 100 && _numero <= 999);
    }

    function votar(string memory _candidato) public pure returns (string memory) {
        if(esIgual(_candidato,"JuanDaniel")){
            return "Votaste por Juan Daniel";
        } else if(esIgual(_candidato,"Juanito")){
            return "Votaste por Juanito";
        } else if(esIgual(_candidato,"Juancho")){
            return "Votaste por Juancho";
        } else {
            return "Voto invalido";
        }
    }

    function esIgual(string memory _a, string memory _b) internal pure returns (bool) {
        return keccak256(abi.encodePacked(_a)) == keccak256(abi.encodePacked(_b));
    }
}