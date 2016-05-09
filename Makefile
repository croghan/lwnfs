obj-m += lwnfs.o
EXTRA_CFLAGS+="-Werror"
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
