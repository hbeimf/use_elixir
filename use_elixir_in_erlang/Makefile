TMP_PATH:=/usr/local/erlang_23.3:/usr/local/erlang_23.3/bin:$(PATH)
# TMP_PATH:=/usr/local/erlang_22.3:/usr/local/erlang_22.3/bin:$(PATH)
# TMP_PATH:=/usr/local/erlang_20.3:/usr/local/erlang_20.3/bin:$(PATH)
# TMP_PATH:=/usr/local/erlang_22.3:/usr/local/erlang_22.3/bin:$(PATH)

# erlang:system_info(nif_version).

export PATH=$(TMP_PATH)

PROJECT := release_use_elixir_in_erlang
NODENAME := use_elixir_in_erlang
PREVIOUS_VERSION = 0.1.0
VERSION := 0.1.0

REBAR3 :=  HEX_CDN=https://hexpm.upyun.com ./rebar3 


all: run

dev: dev_node1 dev_node2

# vm:	vm_node1

# vm_node1:
# 	./rebar3 compile
# 	./rebar3 release
# 	./rebar3 tar
# 	mkdir ./$(PROJECT)_vm_node1_v$(VERSION)
# 	tar zxvf ./_build/default/rel/$(NODENAME)/$(NODENAME)-$(VERSION).tar.gz -C ./$(PROJECT)_vm_node1_v$(VERSION)/
# 	cp ./config/config_vm_node1.ini ./$(PROJECT)_vm_node1_v$(VERSION)/config.ini
# 	cp ./config/vm_node1.args ./$(PROJECT)_vm_node1_v$(VERSION)/releases/$(VERSION)/vm.args
# 	tar czvf  ./bin/$(NODENAME).vm_node1_v$(VERSION).tar.gz ./$(PROJECT)_vm_node1_v$(VERSION)
# 	rm -rf ./$(PROJECT)_vm_node1_v$(VERSION)

dev_node1:
	./rebar3 compile
	./rebar3 release
	./rebar3 tar
	mkdir ./$(PROJECT)_dev_node1_v$(VERSION)
	tar zxvf ./_build/default/rel/$(NODENAME)/$(NODENAME)-$(VERSION).tar.gz -C ./$(PROJECT)_dev_node1_v$(VERSION)/
	cp ./config/config_dev_node1.ini ./$(PROJECT)_dev_node1_v$(VERSION)/config.ini
	cp ./config/vm_dev_node1.args ./$(PROJECT)_dev_node1_v$(VERSION)/releases/$(VERSION)/vm.args
	tar czvf  ./bin/$(NODENAME)_dev_node1_v$(VERSION).tar.gz ./$(PROJECT)_dev_node1_v$(VERSION)
	rm -rf ./$(PROJECT)_dev_node1_v$(VERSION)

dev_node2:
	./rebar3 compile
	./rebar3 release
	./rebar3 tar
	mkdir ./$(PROJECT)_dev_node2_v$(VERSION)
	tar zxvf ./_build/default/rel/$(NODENAME)/$(NODENAME)-$(VERSION).tar.gz -C ./$(PROJECT)_dev_node2_v$(VERSION)/
	cp ./config/config_dev_node2.ini ./$(PROJECT)_dev_node2_v$(VERSION)/config.ini
	cp ./config/vm_dev_node2.args ./$(PROJECT)_dev_node2_v$(VERSION)/releases/$(VERSION)/vm.args
	tar czvf  ./bin/$(NODENAME)_dev_node2_v$(VERSION).tar.gz ./$(PROJECT)_dev_node2_v$(VERSION)
	rm -rf ./$(PROJECT)_dev_node2_v$(VERSION)

run:
	$(REBAR3) install_deps
	$(REBAR3) compile
	$(REBAR3) shell --name $(NODENAME)@127.0.0.1 --setcookie $(NODENAME)_cookie

# rel: release_c1_node1

# #  rel_cluster2 rel_cluster3


# rel_cluster1: release_c1_node1 release_c1_node2

# release_c1_node1: 
# 	./rebar3 compile
# 	./rebar3 release
# 	./rebar3 tar
# 	mkdir ./$(PROJECT)_v$(VERSION)_cluster1_node1
# 	tar zxvf ./_build/default/rel/$(NODENAME)/$(NODENAME)-$(VERSION).tar.gz -C ./$(PROJECT)_v$(VERSION)_cluster1_node1/
# 	cp ./config.ini ./$(PROJECT)_v$(VERSION)_cluster1_node1/config.ini
# 	cp ./gw_api.config ./$(PROJECT)_v$(VERSION)_cluster1_node1/gw_api.config
# 	# cp ./config/vm.cluster1.node1.args ./$(PROJECT)_v$(VERSION)_cluster1_node1/releases/$(VERSION)/vm.args
# 	tar czvf  ./bin/$(PROJECT)_v$(VERSION)_cluster1_node1.tar.gz ./$(PROJECT)_v$(VERSION)_cluster1_node1
# 	rm -rf ./$(PROJECT)_v$(VERSION)_cluster1_node1

# release_c1_node2: 
# 	./rebar3 compile
# 	./rebar3 release
# 	./rebar3 tar
# 	mkdir ./$(PROJECT)_v$(VERSION)_cluster1_node2
# 	tar zxvf ./_build/default/rel/$(NODENAME)/$(NODENAME)-$(VERSION).tar.gz -C ./$(PROJECT)_v$(VERSION)_cluster1_node2/
# 	cp ./config/config.cluster1.node2.ini ./$(PROJECT)_v$(VERSION)_cluster1_node2/config.ini
# 	cp ./gw_hub.config ./$(PROJECT)_v$(VERSION)_cluster1_node2/gw_hub.config
# 	cp ./config/vm.cluster1.node2.args ./$(PROJECT)_v$(VERSION)_cluster1_node2/releases/$(VERSION)/vm.args
# 	tar czvf  ./bin/$(PROJECT)_v$(VERSION)_cluster1_node2.tar.gz ./$(PROJECT)_v$(VERSION)_cluster1_node2
# 	rm -rf ./$(PROJECT)_v$(VERSION)_cluster1_node2


# rel_cluster2: release_c2_node1 release_c2_node2

# release_c2_node1: 
# 	./rebar3 compile
# 	./rebar3 release
# 	./rebar3 tar
# 	mkdir ./$(PROJECT)_v$(VERSION)_cluster2_node1
# 	tar zxvf ./_build/default/rel/$(NODENAME)/$(NODENAME)-$(VERSION).tar.gz -C ./$(PROJECT)_v$(VERSION)_cluster2_node1/
# 	cp ./config/config.c2.node1.ini ./$(PROJECT)_v$(VERSION)_cluster2_node1/config.ini
# 	cp ./config/hubs.config ./$(PROJECT)_v$(VERSION)_cluster2_node1/hubs.config
# 	cp ./config/vm.c2.node1.args ./$(PROJECT)_v$(VERSION)_cluster2_node1/releases/$(VERSION)/vm.args
# 	tar czvf  ./bin/$(PROJECT)_v$(VERSION)_cluster2_node1.tar.gz ./$(PROJECT)_v$(VERSION)_cluster2_node1
# 	rm -rf ./$(PROJECT)_v$(VERSION)_cluster2_node1

# release_c2_node2: 
# 	./rebar3 compile
# 	./rebar3 release
# 	./rebar3 tar
# 	mkdir ./$(PROJECT)_v$(VERSION)_cluster2_node2
# 	tar zxvf ./_build/default/rel/$(NODENAME)/$(NODENAME)-$(VERSION).tar.gz -C ./$(PROJECT)_v$(VERSION)_cluster2_node2/
# 	cp ./config/config.c2.node2.ini ./$(PROJECT)_v$(VERSION)_cluster2_node2/config.ini
# 	cp ./config/hubs.config ./$(PROJECT)_v$(VERSION)_cluster2_node2/hubs.config
# 	cp ./config/vm.c2.node2.args ./$(PROJECT)_v$(VERSION)_cluster2_node2/releases/$(VERSION)/vm.args
# 	tar czvf  ./bin/$(PROJECT)_v$(VERSION)_cluster2_node2.tar.gz ./$(PROJECT)_v$(VERSION)_cluster2_node2
# 	rm -rf ./$(PROJECT)_v$(VERSION)_cluster2_node2

# rel_cluster3: release_c3_node1 release_c3_node2

# release_c3_node1: 
# 	./rebar3 compile
# 	./rebar3 release
# 	./rebar3 tar
# 	mkdir ./$(PROJECT)_v$(VERSION)_cluster3_node1
# 	tar zxvf ./_build/default/rel/$(NODENAME)/$(NODENAME)-$(VERSION).tar.gz -C ./$(PROJECT)_v$(VERSION)_cluster3_node1/
# 	cp ./config/config.c3.node1.ini ./$(PROJECT)_v$(VERSION)_cluster3_node1/config.ini
# 	cp ./config/hubs.config ./$(PROJECT)_v$(VERSION)_cluster3_node1/hubs.config
# 	cp ./config/vm.c3.node1.args ./$(PROJECT)_v$(VERSION)_cluster3_node1/releases/$(VERSION)/vm.args
# 	tar czvf  ./bin/$(PROJECT)_v$(VERSION)_cluster3_node1.tar.gz ./$(PROJECT)_v$(VERSION)_cluster3_node1
# 	rm -rf ./$(PROJECT)_v$(VERSION)_cluster3_node1

# release_c3_node2: 
# 	./rebar3 compile
# 	./rebar3 release
# 	./rebar3 tar
# 	mkdir ./$(PROJECT)_v$(VERSION)_cluster3_node2
# 	tar zxvf ./_build/default/rel/$(NODENAME)/$(NODENAME)-$(VERSION).tar.gz -C ./$(PROJECT)_v$(VERSION)_cluster3_node2/
# 	cp ./config/config.c3.node2.ini ./$(PROJECT)_v$(VERSION)_cluster3_node2/config.ini
# 	cp ./config/hubs.config ./$(PROJECT)_v$(VERSION)_cluster3_node2/hubs.config
# 	cp ./config/vm.c3.node2.args ./$(PROJECT)_v$(VERSION)_cluster3_node2/releases/$(VERSION)/vm.args
# 	tar czvf  ./bin/$(PROJECT)_v$(VERSION)_cluster3_node2.tar.gz ./$(PROJECT)_v$(VERSION)_cluster3_node2
# 	rm -rf ./$(PROJECT)_v$(VERSION)_cluster3_node2



# unzip:
# 	tar xzvf ./bin/release_gw_v0.1.0_cluster1_node1.tar.gz -C ./bin/
# 	tar xzvf ./bin/release_gw_v0.1.0_cluster1_node2.tar.gz -C ./bin/
# 	# tar xzvf ./bin/release_gw_v0.1.0_cluster2_node1.tar.gz -C ./bin/
# 	# tar xzvf ./bin/release_gw_v0.1.0_cluster2_node2.tar.gz -C ./bin/
# 	# tar xzvf ./bin/release_gw_v0.1.0_cluster3_node1.tar.gz -C ./bin/
# 	# tar xzvf ./bin/release_gw_v0.1.0_cluster3_node2.tar.gz -C ./bin/

# clean:
# 	rm -rf ./bin/*

# start: rel unzip
# 	./bin/release_gw_v0.1.0_cluster1_node1/bin/gw start
# 	./bin/release_gw_v0.1.0_cluster1_node2/bin/gw start
# 	./bin/release_gw_v0.1.0_cluster2_node1/bin/gw start
# 	./bin/release_gw_v0.1.0_cluster2_node2/bin/gw start
# 	./bin/release_gw_v0.1.0_cluster3_node1/bin/gw start
# 	./bin/release_gw_v0.1.0_cluster3_node2/bin/gw start
	
# stop:
# 	./bin/release_gw_v0.1.0_cluster1_node1/bin/gw stop
# 	./bin/release_gw_v0.1.0_cluster1_node2/bin/gw stop
# 	./bin/release_gw_v0.1.0_cluster2_node1/bin/gw stop
# 	./bin/release_gw_v0.1.0_cluster2_node2/bin/gw stop
# 	./bin/release_gw_v0.1.0_cluster3_node1/bin/gw stop
# 	./bin/release_gw_v0.1.0_cluster3_node2/bin/gw stop
# 	rm -rf ./bin/*

# release_master: 
# 	./rebar3 compile
# 	./rebar3 release
# 	./rebar3 tar
# 	mkdir ./$(PROJECT)_v$(VERSION)_master
# 	tar zxvf ./_build/default/rel/$(NODENAME)/$(NODENAME)-$(VERSION).tar.gz -C ./$(PROJECT)_v$(VERSION)_master/
# 	# cp ./config/BulletRateConfig.json ./$(PROJECT)_v$(VERSION)_master/BulletRateConfig.json
# 	# cp ./config/RoomTypeConfig.json ./$(PROJECT)_v$(VERSION)_master/RoomTypeConfig.json	
# 	cp ./config.ini ./$(PROJECT)_v$(VERSION)_master/config.ini
# 	cp ./hubs.config ./$(PROJECT)_v$(VERSION)_master/hubs.config
# 	cp ./config/vm.args ./$(PROJECT)_v$(VERSION)_master/releases/$(VERSION)/vm.args
# 	tar czvf  ./bin/$(PROJECT)_v$(VERSION)_master.tar.gz ./$(PROJECT)_v$(VERSION)_master 
# 	rm -rf ./$(PROJECT)_v$(VERSION)_master


up:
	./rebar3 release
	./rebar3 appup generate --previous_version $(PREVIOUS_VERSION)
	./rebar3 relup
	./rebar3 tar
	cp ./_build/default/rel/account_center/account_center-$(VERSION).tar.gz ./bin/
	# cd generate && python gen_release.py up $(PREVIOUS_VERSION) $(VERSION)

# c12:
# 	rm config.ini
# 	cp ./config.c12.ini ./config.ini
# 	./rebar3 shell --name c12@127.0.0.1 --setcookie c1_cookie


# c21:
# 	rm config.ini
# 	cp ./config.c21.ini ./config.ini
# 	./rebar3 shell --name c21@127.0.0.1 --setcookie c2_cookie


# c22:
# 	rm config.ini
# 	cp ./config.c22.ini ./config.ini
# 	./rebar3 shell --name c22@127.0.0.1 --setcookie c2_cookie


# c23:
# 	rm config.ini
# 	cp ./config.c23.ini ./config.ini
# 	./rebar3 shell --name c23@127.0.0.1 --setcookie c2_cookie



# stop:
# 	ps -efww|grep xgn.node|grep -v grep|cut -c 9-15|xargs kill -9

push:
	git add .
	git commit -m 'pu'
	git push

add:
	git add . -A
	git commit -m 'pu'

# ps:
# 	ps aux | grep xgn.node

# rel: 
# 	./rebar3 compile
# 	./rebar3 release
# 	./rebar3 tar


post:
	curl  -X POST -d 'action=rollback&currency=EUR&game_uuid=12345&player_id=4&transaction_id=12345&rollback_transactions[0][action]=bet&rollback_transactions[0][amount]=1.5&rollback_transactions[0][transaction_id]=12346&rollback_transactions[0][type]=bet&rollback_transactions[1][action]=win&rollback_transactions[1][amount]=0&rollback_transactions[1][transaction_id]=12347&rollback_transactions[1][type]=win&session_id=23456&type=rollback&provider_round_id=1' "http://127.0.0.1:18855/echo"

# 参数 内容
# -H 请求头
# -d POST内容
# -X 请求协议

