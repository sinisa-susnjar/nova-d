all:
	@dub build -a x86_64-windows-msvc -b release-nobounds -C dll64

test:
	@dub test

cov:
	@dub test -b unittest-cov
	@grep covered source-*.lst|egrep -v "100%"

clean:
	@rm -rf .dub
	@rm -f libmql5lib.so mql5lib-test-lib source-*.lst .dub-code*.lst
