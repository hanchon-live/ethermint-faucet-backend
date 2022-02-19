export POSTGRES_HOST=localhost
export POSTGRES_PORT=5432
export POSTGRES_DB=faucet
export PROM_USER=postgres
export PROM_PASSWORD=test
export NETWORK_RPC_NODE="http://127.0.0.1:26657"
export FAUCET_WAIT_PERIOD=1d
export FAUCET_DISTRIBUTION_AMOUNT=100000000000000000
export FAUCET_DENOM=auptick
export FAUCET_FEES=1000
export FAUCET_GAS=200000
export FAUCET_MEMO="send amount"
export ADDRESS_PREFIX="uptick"
export AUTH0_DOMAIN="uptick-faucet.jp.auth0.com";
export AUTH0_AUDIENCE="http://uptick-network.com";
export FAUCET_MNEMONIC="visual trend scene cake abstract farm fee orchard child deposit power mean capable chalk enough orange make vendor direct enlist pill dragon early autumn"

bash supportUptick.sh
yarn start
# yarn migrate
