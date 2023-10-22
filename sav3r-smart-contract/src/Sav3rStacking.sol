//SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.0;

import "./ApeCoinStaking.sol";

contract Sav3rStacking is ApeCoinStaking(
    0x4D22422222222222222222222222222222222222,
    0xB47e3cd837dfda8559f06d99566b737e0313ce8c,
    0x66e94073d952d962bf82179ef5fbaae0cd1c5549,
    0xba30e5f9a8bce7c5a20bc8476396b39c787828ae
) {
    constructor(
        address _apeCoinContractAddress,
        address _baycContractAddress,
        address _maycContractAddress,
        address _bakcContractAddress
    ) ApeCoinStaking(
        _apeCoinContractAddress, 
        _baycContractAddress, 
        _maycContractAddress, 
        _bakcContractAddress
    ) {}

    //Swaping function USDC to ApeCoin
    function swapUSDCtoApeCoin(uint256 _amount) public {
        require(_amount > 0, "Amount must be greater than 0");
        require(
            usdcToken.allowance(msg.sender, address(this)) >= _amount,
            "You must approve the contract"
        );
        usdcToken.transferFrom(msg.sender, address(this), _amount);
        usdcToken.transfer(address(apeCoinToken), _amount);
        apeCoinToken.mint(msg.sender, _amount);
    }

    //Staking the ApeCoin
    function stakeApeCoin(uint256 _amount) public {
        require(_amount > 0, "Amount must be greater than 0");
        require(
            apeCoinToken.allowance(msg.sender, address(this)) >= _amount,
            "You must approve the contract"
        );
        apeCoinToken.transferFrom(msg.sender, address(this), _amount);
        _stakeApeCoin(_amount);
    }

}