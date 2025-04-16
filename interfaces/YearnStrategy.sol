// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface YearnStrategy {
    function aToken() external view returns (address);
    function auction() external view returns (address);
    function auctionFactory() external view returns (address);
    function auctionKicked(address _token) external returns (uint256);
    function availableDepositLimit(address ) external view returns (uint256);
    function availableWithdrawLimit(address ) external view returns (uint256);
    function balanceOfAsset() external view returns (uint256);
    function base() external view returns (address);
    function checkCooldown() external view returns (bool);
    function claimRewards() external view returns (bool);
    function deployFunds(uint256 _amount) external;
    function freeFunds(uint256 _amount) external;
    function getSupplyCap() external view returns (uint256);
    function harvestAndReport() external returns (uint256);
    function kickable(address _token) external view returns (uint256);
    function lendingPool() external view returns (address);
    function manualRedeemAave() external;
    function minAmountToSell() external view returns (uint256);
    function minAmountToSellMapping(address ) external view returns (uint256);
    function postTake(address _token, uint256 _amountTaken, uint256 _amountPayed) external;
    function preTake(address _token, uint256 _amountToTake, uint256 _amountToPay) external;
    function rewardsController() external view returns (address);
    function router() external view returns (address);
    function setAuction(address _auction) external;
    function setClaimRewards(bool _bool) external;
    function setIsVirtualAccActive() external;
    function setMinAmountToSellMapping(address _token, uint256 _amount) external;
    function setUniFees(address _token0, address _token1, uint24 _fee) external;
    function setUseAuction(bool _useAuction) external;
    function shutdownWithdraw(uint256 _amount) external;
    function tendThis(uint256 _totalIdle) external;
    function tendTrigger() external view returns (bool, bytes);
    function tokenizedStrategyAddress() external view returns (address);
    function uniFees(address , address ) external view returns (uint24);
    function useAuction() external view returns (bool);
    function DOMAIN_SEPARATOR() external view returns (bytes32);
    function FACTORY() external view returns (address);
    function MAX_FEE() external view returns (uint16);
    function acceptManagement() external;
    function allowance(address owner, address spender) external view returns (uint256);
    function apiVersion() external pure returns (string);
    function approve(address spender, uint256 amount) external returns (bool);
    function asset() external view returns (address);
    function balanceOf(address account) external view returns (uint256);
    function convertToAssets(uint256 shares) external view returns (uint256);
    function convertToShares(uint256 assets) external view returns (uint256);
    function decimals() external view returns (uint8);
    function deposit(uint256 assets, address receiver) external returns (uint256);
    function emergencyAdmin() external view returns (address);
    function emergencyWithdraw(uint256 amount) external;
    function fullProfitUnlockDate() external view returns (uint256);
    function initialize(address _asset, string _name, address _management, address _performanceFeeRecipient, address _keeper) external;
    function isShutdown() external view returns (bool);
    function keeper() external view returns (address);
    function lastReport() external view returns (uint256);
    function management() external view returns (address);
    function maxDeposit(address receiver) external view returns (uint256);
    function maxMint(address receiver) external view returns (uint256);
    function maxRedeem(address owner, uint256 ) external view returns (uint256);
    function maxRedeem(address owner) external view returns (uint256);
    function maxWithdraw(address owner, uint256 ) external view returns (uint256);
    function maxWithdraw(address owner) external view returns (uint256);
    function mint(uint256 shares, address receiver) external returns (uint256);
    function name() external view returns (string);
    function nonces(address _owner) external view returns (uint256);
    function pendingManagement() external view returns (address);
    function performanceFee() external view returns (uint16);
    function performanceFeeRecipient() external view returns (address);
    function permit(address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) external;
    function previewDeposit(uint256 assets) external view returns (uint256);
    function previewMint(uint256 shares) external view returns (uint256);
    function previewRedeem(uint256 shares) external view returns (uint256);
    function previewWithdraw(uint256 assets) external view returns (uint256);
    function pricePerShare() external view returns (uint256);
    function profitMaxUnlockTime() external view returns (uint256);
    function profitUnlockingRate() external view returns (uint256);
    function redeem(uint256 shares, address receiver, address owner, uint256 maxLoss) external returns (uint256);
    function redeem(uint256 shares, address receiver, address owner) external returns (uint256);
    function report() external returns (uint256, uint256);
    function requireEmergencyAuthorized(address _sender) external view;
    function requireKeeperOrManagement(address _sender) external view;
    function requireManagement(address _sender) external view;
    function setEmergencyAdmin(address _emergencyAdmin) external;
    function setKeeper(address _keeper) external;
    function setName(string _name) external;
    function setPendingManagement(address _management) external;
    function setPerformanceFee(uint16 _performanceFee) external;
    function setPerformanceFeeRecipient(address _performanceFeeRecipient) external;
    function setProfitMaxUnlockTime(uint256 _profitMaxUnlockTime) external;
    function shutdownStrategy() external;
    function symbol() external view returns (string);
    function tend() external;
    function totalAssets() external view returns (uint256);
    function totalSupply() external view returns (uint256);
    function transfer(address to, uint256 amount) external returns (bool);
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
    function unlockedShares() external view returns (uint256);
    function withdraw(uint256 assets, address receiver, address owner, uint256 maxLoss) external returns (uint256);
    function withdraw(uint256 assets, address receiver, address owner) external returns (uint256);
}