var TFTS = artifacts.require("TFTLtd");

module.exports = function(developer, network, accounts) {
  let proxyRegistryAddress = "";
  if (network === "rinkeby") {
    proxyRegistryAddress = "0xf57b2c51ded3a29e6891aba85459d600256cf317";
  } else {
    proxyRegistryAddress = "0xa5409ec958c83c3f309868babaca7c86dcb077c1";
  }

  developer.deploy(TFTS, proxyRegistryAddress);
};
