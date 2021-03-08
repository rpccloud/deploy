
mkdir ~/tmp_rpc_merge && cd ~/tmp_rpc_merge

git clone https://github.com/rpccloud/rpc
cd ~/tmp_rpc_merge/rpc
git checkout dev
git checkout master
git merge dev
git push

cd ~
rm -rf ~/tmp_rpc_merge
