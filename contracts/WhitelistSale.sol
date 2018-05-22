pragma solidity ^0.4.21;

import "./AbstractSale.sol";
import "./Whitelist.sol";

contract WhitelistSale is AbstractSale, Whitelist {
	function checkPurchaseValid(address buyer, uint256 sold, uint256 bonus) internal {
		super.checkPurchaseValid(buyer, sold, bonus);
		require(isInWhitelist(buyer));
	}

	function canBuy(address _address) constant public returns (bool) {
		return isInWhitelist(_address);
	}
}
