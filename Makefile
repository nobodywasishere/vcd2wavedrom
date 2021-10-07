.PHONY	: all

all:
	python vcd2wavedrom/vcd2wavedrom.py -i examples/example.vcd \
		-c examples/exampleconfig.json -o tmp.drom && \
	wavedrom-cli -i tmp.drom -s example.svg
