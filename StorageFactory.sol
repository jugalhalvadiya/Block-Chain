//SPDX-License_Identifier: MIT

pragma solidity ^0.6.0;

import "./Jugal.sol";

contract StorageFactory is Jugal {

        Jugal[] public simpleStorageArray;

        function createSimpleStorageContract() public {
            Jugal simpleStorage = new Jugal();
            simpleStorageArray.push(simpleStorage);
        }

        function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {

            // Address
            // ABI (application binary interface)

            Jugal simpleStorage = Jugal(address(simpleStorageArray[_simpleStorageIndex]));
            simpleStorage.store(_simpleStorageNumber);


        }


        function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){

               // return Jugal(address(simpleStorageArray[_simpleStorageIndex])).retrieve();

                Jugal simpleStorage = Jugal(address(simpleStorageArray[_simpleStorageIndex]));
                return simpleStorage.retrieve();

        }

 

}

//You Tube
//03:26:38