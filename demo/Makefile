# https://hexdocs.pm/distillery/walkthrough.html#adding-distillery-to-your-project
# https://hexdocs.pm/distillery/getting-started.html

# PROJECT_PROD := release_prod_demo
PROJECT_MASTER := release_demo
# PROJECT_SLAVE := release_chat

NODENAME := demo
VERSION := 0.1.0

all: run

## release_demo_vm: 这个key定义在 mix.exs 里，可任意指定，这里跟着修改就成；
rel:
	mix release $(NODENAME) --path ./bin/$(PROJECT_MASTER)

# rel1:
# 	mix release demo --path ./bin/$(PROJECT_SLAVE)_$(VERSION)


run:
	# mix deps.get
	HEX_HTTP_CONCURRENCY=3 HEX_HTTP_TIMEOUT=1200 mix deps.get
	iex --name "$(NODENAME)@127.0.0.1" --cookie "$(NODENAME)_cookie" -S mix

dep:
	HEX_HTTP_CONCURRENCY=3 HEX_HTTP_TIMEOUT=1200 mix deps.get
	
pb:
	cd proto && protoc --elixir_out=./ *.proto && mv *.ex ../apps/common/lib/

test:
	mix test
# release_init:
# 	mix deps.get
# 	mix compile
# 	mix release.init


push:
	git add .
	git commit -m 'init'
	git push

add:
	git add . -A
	git commit -m 'init'