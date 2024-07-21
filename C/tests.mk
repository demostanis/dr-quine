test-colleen:
	@./Colleen > Colleen.out && diff Colleen.out Colleen.c
	@$(RM) Colleen.out

test-grace:
	@./Grace
	@diff Grace_kid.c Grace.c
	@$(RM) Grace_kid.c

.ONESHELL:
test-sully:
	@./Sully
	diff Sully_5.c Sully.c
	threedashes=---
	for i in {0..4}; do
		diff Sully_$$i.c Sully.c > Sully.diff
		diff Sully.diff -<<-EOF
		1c1
		< int i = $$i;
		$$threedashes
		> int i = 5;
	EOF
	done
	$(RM) Sully_*
	$(RM) Sully.diff

tests: all test-colleen test-grace test-sully

.PHONY: test-colleen test-grace test-sully tests
