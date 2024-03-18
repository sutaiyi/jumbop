// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.7.5;

import './interfaces/IERC20.sol';
import './libraries/FixedPoint.sol';
import './libraries/SafeMath.sol';

contract JumboBondingCalculator2 {

    using FixedPoint for *;
    using SafeMath for uint;
    using SafeMath for uint112;

    function valuation( address token_, uint amount_ ) external view returns ( uint _value ) {
        _value = amount_.mul(10**9).div(10**IERC20(token_).decimals());
    }


}
