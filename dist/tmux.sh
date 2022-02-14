#/bin/bash -evx
set -e

SESSION='HyperNode'

function start_tmux_with_logs {

    LOGS_COMMAND='docker-compose logs --tail 100 --follow'

    tmux new-session -d -s $SESSION -n 'containers / processes' watch docker-compose ps
    tmux split-window -d -t $SESSION:0 htop
    tmux set-option -t $SESSION:0 -w remain-on-exit on

    tmux new-window -d -t $SESSION -n '{BTC logs}' $LOGS_COMMAND btc-mainnet
    tmux split-window -d -t $SESSION:1 $LOGS_COMMAND btc-testnet
    tmux set-option -t $SESSION:1 -w remain-on-exit on

    tmux new-window -d -t $SESSION -n 'bitcore-node logs' $LOGS_COMMAND bitcore-node
    tmux set-option -t $SESSION:2 -w remain-on-exit on

    tmux new-window -d -t $SESSION -n '{ETH logs}' $LOGS_COMMAND ethereum-mainnet
    tmux split-window -d -t $SESSION:3 $LOGS_COMMAND ethereum-rinkeby
    tmux set-option -t $SESSION:3 -w remain-on-exit on

    tmux new-window -d -t $SESSION -n '{TRON logs}' $LOGS_COMMAND tron-mainnet
    tmux split-window -d -t $SESSION:5 $LOGS_COMMAND tron-nile
    tmux set-option -t $SESSION:5 -w remain-on-exit on

    tmux new-window -d -t $SESSION -n 'tron-tx-watcher' $LOGS_COMMAND tron-tx-watcher-mainnet
    tmux split-window -d -t $SESSION:6 $LOGS_COMMAND tron-tx-watcher-nile
    tmux set-option -t $SESSION:6 -w remain-on-exit on

    tmux new-window -d -t $SESSION -n 'mongo' $LOGS_COMMAND mongo-bitcore-node
    tmux split-window -d -t $SESSION:7 $LOGS_COMMAND mongo-tron-tx-watcher
    tmux split-window -d -t $SESSION:7 $LOGS_COMMAND mongo-worker
    tmux select-layout -t $SESSION:7 even-vertical
    tmux set-option -t $SESSION:7 -w remain-on-exit on

    tmux new-window -d -t $SESSION -n 'worker' $LOGS_COMMAND worker
    tmux set-option -t $SESSION:8 -w remain-on-exit on

    tmux attach-session -t $SESSION
}

tmux list-sessions -F '#{session_name}' | grep -q -w $SESSION && tmux attach-session -t $SESSION || start_tmux_with_logs
