const hre = require("hardhat");

async function main() {
  const Mirror = await hre.ethers.getContractFactory("USDTzMirror");
  const mirror = await Mirror.deploy(); // ✅ نشر العقد
  await mirror.waitForDeployment();     // ✅ تنتظر النشر بشكل صحيح

  const address = await mirror.getAddress(); // ✅ تجيب العنوان الجديد
  console.log(`✅ USDTzMirror deployed to: ${address}`);
}

main().catch((error) => {
  console.error("❌ Error deploying contract:", error);
  process.exitCode = 1;
});
