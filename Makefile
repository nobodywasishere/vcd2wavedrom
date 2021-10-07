.PHONY	: all

all:
	python vcd2wavedrom/vcd2wavedrom.py -i examples/example.vcd \
		-c examples/exampleconfig.json -o tmp.drom && \
	wavedrom-cli -i tmp.drom -s example.svg
	python vcd2wavedrom/vcd2wavedrom.py -i examples/registers_tb.vcd \
		-o registers_tb.drom -z 3 --top && \
	wavedrom-cli -i registers_tb.drom -s registers_tb.svg