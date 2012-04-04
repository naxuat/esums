.PHONY: deps xref

all: compile test

compile: deps
	rebar compile

test:
	rebar skip_deps=true eunit ct

deps:
	rebar get-deps

xref:
	rebar skip_deps=true xref
