pragma solidity ^0.4.17;

contract Day1 {
    uint sum;


    function getSum(uint number1, uint number2) public returns (uint) {
        sum = number1 + number2;
        return sum;
    }

}
