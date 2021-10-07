.PHONY	: all

all:
	python vcd2wavedrom/vcd2wavedrom.py -i example.vcd -c exampleconfig.json -o tmp.drom \
		&& wavedrom-cli -i tmp.drom -s example.svg
