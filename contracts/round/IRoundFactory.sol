// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.17;
import "../settings/IAlloSettings.sol";
interface IRoundFactory {
    function initialize() external;

    function updateAlloSettings(IAlloSettings newAlloSettings) external;

    function updateRoundImplementation(
        address payable newRoundImplementation
    ) external;

    function create(
        uint256 projectID,
        bytes32 projectIdentifier,
        bytes calldata encodedParameters
    ) external returns (address);
}
