pragma solidity ^0.4.24;

contract day2_2 {

   struct Contract{
       address account;
       uint balance;
   }
   mapping(address => Contract) contracts;

   address[] public contractAccounts;


    function setContract(address _address, uint _balance) public {
        var _contract = contracts[_address];
        _contract.balance = _balance;
        contractAccounts.push(_address);
    }

    function getAccounts() view public returns (address[]){
        return contractAccounts;
    }



      function sort(address[] contractAccounts) public constant returns(address[]) {
       quickSort(contractAccounts, int(0), int(contractAccounts.length - 1));
       return contractAccounts;
    }


    function quickSort(address[] memory _address, int left, int right) internal{
        int i = left;
        int j = right;
        if(i==j) return;
        int pivot = contractAccounts.balance[int(left + (right - left) / 2)];
        while (i <= j) {
            while (contractAccounts._address.balance[uint(i)] < pivot) i++;
            while (pivot < contractAccounts._address.balance[uint(j)]) j--;
            if (i <= j) {
                (contractAccounts._address.balance[contractAccounts._address.balance(i)], contractAccounts._address.balance[uint(j)]) = (contractAccounts._address.balance[uint(j)], contractAccounts._address.balance[uint(i)]);
                i++;
                j--;
            }
        }
        if (left < j)
            quickSort(contractAccounts, left, j);
        if (i < right)
            quickSort(contractAccounts, i, right);
    }





}
