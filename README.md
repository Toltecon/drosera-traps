## Foundry

# 🪤 TwapTrap — Admin Trap Contract (Solidity + Foundry)

This repository demonstrates a smart contract "trap" that prevents unauthorized admin changes. The contract uses a onlyAdmin modifier to restrict access.

## ⚙️ Trap Logic

The TwapTrap contract provides a simple but effective protection mechanism:

- Only the current admin can call changeAdmin().
- Any attempt to call this function from another address will revert with the message Only admin allowed.
- This is enforced using the onlyAdmin modifier.

### 🔐 Verified Protection

> If any address other than the current admin tries to call changeAdmin(), the trap is triggered: the transaction is reverted and nothing happens.

---

## 📍 Deployed Contract

The contract was successfully deployed at:
