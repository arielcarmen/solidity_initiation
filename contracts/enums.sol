// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract EnumsDemo {

    enum step {ordered, shipped, delivered} // no ';' needed for this

    struct product {
        uint _sku;
        EnumsDemo.step _step;
    }

    mapping(address => product) Orders;

    function order(address _clientAddress, uint _sku) public {
        product memory p = product(_sku, step.ordered);
        Orders[_clientAddress] = p;
    }

    function ship(address _clientAddress) public {
        Orders[_clientAddress]._step = step.shipped;
    }

    function deliver(address _clientAddress) public {
        Orders[_clientAddress]._step = step.delivered;
    }

    function getOrderStep(address _clientAddress) public view returns (step){
        return Orders[_clientAddress]._step;
    }
}