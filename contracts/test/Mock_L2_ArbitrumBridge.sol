// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "../bridges/L2_ArbitrumBridge.sol";

contract Mock_L2_ArbitrumBridge is L2_ArbitrumBridge {
    uint256 private _chainId;

    constructor (
        uint256 chainId_,
        IArbSys _messenger,
        address _l1Governance,
        IERC20 _canonicalToken,
        address _l1BridgeAddress,
        uint256[] memory _supportedChainIds,
        address[] memory _bonders,
        address _exchangeAddress,
        string memory _name,
        string memory _symbol,
        uint8 _decimals
    )
        public
        L2_ArbitrumBridge(
            _messenger,
            _l1Governance,
            _canonicalToken,
            _l1BridgeAddress,
            _supportedChainIds,
            _bonders,
            _exchangeAddress,
            _name,
            _symbol,
            _decimals
        )
    {
        _chainId = chainId_;
    }

    function getChainId() public override view returns (uint256) {
        return _chainId;
    }
}
