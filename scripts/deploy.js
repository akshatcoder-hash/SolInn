const hre = require("hardhat");

async function main(){
  const hotelBooking = await hre.ethers.getContractFactory("hotelBooking");
  const contract = await hotelBooking.deploy();
  await contract.deployed();
  console.log('Contract deployed to ${contract.address}');
}

main() catch((error) => {
  console.error(error);
  process.exitCode = 1;
});