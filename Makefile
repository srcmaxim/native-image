run: build
	sudo docker run hello

build:
	${GRAALVM_HOME}/bin/javac Hello.java; \
	${GRAALVM_HOME}/bin/native-image -H:+StaticExecutableWithDynamicLibC Hello; \
	sudo docker build -t hello .

clean:
	rm Hello.class hello*
