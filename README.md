# USDT.z Mirror Token 🔁

Smart mirror token that reflects the balances of the original USDT.z on BNB Smart Chain.

## 📌 What is this?

This contract mirrors the balance of the original USDT.z token at:

0x4BE35Ec329343d7d9F548d42B0F8c17FFfe07db4

It **does not mint or store any balances**. Instead, it fetches user balances from the original contract using a custom `balanceOf()` view.

## ✅ Why?

- Allows visibility of historical balances in wallets.
- Useful for analytics or soft migration tracking.
- Can appear in Trust Wallet or SafePal due to matching name/symbol/decimals.

## 📄 Contract Info

- 📍 Deployed at: [0x558cE6f4F6106F383c329b63E94799471Fe5cc0B](https://bscscan.com/address/0x558cE6f4F6106F383c329b63E94799471Fe5cc0B#code)
- 🛠️ Verified on BscScan
- 🔁 Reads balance from: `0x4BE3...`

## 🧪 How to use

Simply add the token to your wallet manually:

- Name: **Tether USD Bridged ZED20**
- Symbol: **USDT.z**
- Decimals: **18**
- Contract: `0x558cE6f4F6106F383c329b63E94799471Fe5cc0B`

## 📬 Contact

This token is for demonstration / mirroring purposes only. For support or integration, reach out via GitHub issues.

---

> Built with ❤️ using Hardhat
