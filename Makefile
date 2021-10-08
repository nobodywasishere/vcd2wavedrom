.PHONY	: all docs

all:
	python vcd2wavedrom/vcd2wavedrom.py -i examples/example.vcd \
		-c examples/exampleconfig.json -o tmp.drom && \
	wavedrom-cli -i tmp.drom -s example.svg
	python vcd2wavedrom/vcd2wavedrom.py -i examples/registers_tb.vcd \
		-o registers_tb.drom -z 3 --top && \
	wavedrom-cli -i registers_tb.drom -s registers_tb.svg

docs:
	rm -rf src vcdvcd-*.zip
	pip download -r requirements.txt
	cp vcd2wavedrom/vcd2wavedrom.py docs/
	cp src/vcdvcd/vcdvcd/vcdvcd.py docs/
	cd docs && python -m http.server