CC ?= gcc
CFLAGS_common ?= -Wall -std=gnu99
CFLAGS_orig = -O0
CFLAGS_opt  = -O0

<<<<<<< HEAD
EXEC = phonebook_orig phonebook_opt test_hash
=======
EXEC = phonebook_orig phonebook_opt
>>>>>>> 6c62ba461d671e1d2c6a0eb9b6a6e1466fad68ed

GIT_HOOKS := .git/hooks/pre-commit
.PHONY: all
all: $(GIT_HOOKS) $(EXEC)

$(GIT_HOOKS):
	@scripts/install-git-hooks
	@echo

SRCS_common = main.c

phonebook_orig: $(SRCS_common) phonebook_orig.c phonebook_orig.h
	$(CC) $(CFLAGS_common) $(CFLAGS_orig) \
		-DIMPL="\"$@.h\"" -o $@ \
		$(SRCS_common) $@.c

phonebook_opt: $(SRCS_common) phonebook_opt.c phonebook_opt.h
	$(CC) $(CFLAGS_common) $(CFLAGS_opt) \
		-DIMPL="\"$@.h\"" -o $@ \
		$(SRCS_common) $@.c
<<<<<<< HEAD
test_hash: $(SRCS_common) test_hash.c test_hash.h
	$(CC) $(CFLAGS_common) $(CFLAGS_hash) \
		-DIMPL="\"$@.h\"" -o $@ \
		$(SRCS_common) $@.c
=======
>>>>>>> 6c62ba461d671e1d2c6a0eb9b6a6e1466fad68ed

run: $(EXEC)
	echo 3 | sudo tee /proc/sys/vm/drop_caches
	watch -d -t "./phonebook_orig && echo 3 | sudo tee /proc/sys/vm/drop_caches"

cache-test: $(EXEC)
	perf stat --repeat 100 \
		-e cache-misses,cache-references,instructions,cycles \
		./phonebook_orig
	perf stat --repeat 100 \
		-e cache-misses,cache-references,instructions,cycles \
		./phonebook_opt
<<<<<<< HEAD
	perf stat --repeat 100 \
		-e cache-misses,cache-references,instructions,cycles \
		./test_hash
=======
>>>>>>> 6c62ba461d671e1d2c6a0eb9b6a6e1466fad68ed

output.txt: cache-test calculate
	./calculate

plot: output.txt
	gnuplot scripts/runtime.gp

calculate: calculate.c
	$(CC) $(CFLAGS_common) $^ -o $@

.PHONY: clean
clean:
	$(RM) $(EXEC) *.o perf.* \
<<<<<<< HEAD
	      	calculate orig.txt opt.txt hash.txt output.txt runtime.png
=======
	      	calculate orig.txt opt.txt output.txt runtime.png
>>>>>>> 6c62ba461d671e1d2c6a0eb9b6a6e1466fad68ed
