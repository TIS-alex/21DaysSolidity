pragma solidity ^0.4.17;

contract day2 {
    uint[] array;

    function sort(uint[] array) public constant returns(uint[]) {
       quickSort(array, int(0), int(array.length - 1));
       return array;
    }

    function quickSort(uint[] memory array, int left, int right) internal{
        int i = left;
        int j = right;
        if(i==j) return;
        uint pivot = array[uint(left + (right - left) / 2)];
        while (i <= j) {
            while (array[uint(i)] < pivot) i++;
            while (pivot < array[uint(j)]) j--;
            if (i <= j) {
                (array[uint(i)], array[uint(j)]) = (array[uint(j)], array[uint(i)]);
                i++;
                j--;
            }
        }
        if (left < j)
            quickSort(array, left, j);
        if (i < right)
            quickSort(array, i, right);
    }
}


//spent some time creating function to populate array, then another to sort. However, ended up using Quicksort function.
