#!/bin/bash
cp -r ./fixes/protos/ethermint ./node_modules/cosmjs-types/
insert="case '/ethermint.types.v1.EthAccount': {const ethermint_1 = require('cosmjs-types/ethermint/types/v1/account');const baseAccount = ethermint_1.EthAccount.decode(value).baseAccount; utils_1.assert(baseAccount);return accountFromBaseAccount(baseAccount);}"
escaped_insert=$(printf '%s\n' "$insert" | sed -e 's/[\/&]/\\&/g')
file='./node_modules/@cosmjs/stargate/build/accounts.js'
sed -i ""  "s/default:/${escaped_insert}\n\t\tdefault:/" $file
