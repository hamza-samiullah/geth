port=3000
rpcport=8000
for i in {1..10}
do
  
  port=$((port+1))
  rpcport=$((rpcport+1))

  gnome-terminal -- bash -c "geth --datadir ~/nodes/n$i --networkid $i --rpc --rpcaddr 192.168.0.107 --rpcport $rpcport --port $port console; exec bash"
  
done

