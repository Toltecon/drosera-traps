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
0xD173ED8df8EAc6e5Cd59f289912b5BBC01149FB0

## ✅ Trap Verification Result

We ran a script that:

1. Attempts to change the admin as the current admin — succeeds ✅  
2. Simulates the same function call from a non-admin address — and it reverts (trap triggered) ❌

### 🧪 Interaction Log:

Current admin: 0x0000000000000000000000000000000000001234
Trap triggered: non-admin could NOT change admin.

[2877] 0xD173ED8df8EAc6e5Cd59f289912b5BBC01149FB0::changeAdmin(0x0000000000000000000000000000000000001234)

└─ ← [Revert] Only admin allowed


## 🚀 Getting Started

### Installation

```bash
git clone https://github.com/Toltecon/drosera-traps.git
cd drosera-traps
forge install

