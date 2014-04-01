git pull --rebase origin master && \
git submodule foreach git pull origin master && \
cd bundle/vimproc && make

