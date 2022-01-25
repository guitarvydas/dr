all:
	./build.bash
	mv a-dr-edgecontainment ../das2f
	mv b-dr-edgecontainment ../das2f

clean:
	rm -f a-dr-edgecontainment
	rm -f b-dr-edgecontainment
