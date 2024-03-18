// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.7.5;

import './interfaces/IERC20.sol';
import './interfaces/IWarmup.sol';


contract StakingWarmup is IWarmup {

    address public immutable staking;
    address public immutable sJUB;

    constructor ( address _staking, address _sJUB ) {
        require( _staking != address(0) );
        staking = _staking;
        require( _sJUB != address(0) );
        sJUB = _sJUB;
    }

    function retrieve( address _staker, uint _amount ) override external {
        require( msg.sender == staking );
        IERC20( sJUB ).transfer( _staker, _amount );
    }
}