test-colleen:
	@./Colleen > Colleen.out && diff Colleen.out Colleen.s
	@$(RM) Colleen.out

test-grace:
	@./Grace && diff Grace_kid.s Grace.s
	@$(RM) Grace_kid.s

.ONESHELL:
test-sully:
	@./Sully
	diff Sully_5.s Sully.s
	threedashes=---
	for i in {0..4}; do
		diff Sully_$$i.s Sully.s > Sully.diff
		diff Sully.diff -<<-EOF
		53c53
		< i: dd $$i
		$$threedashes
		> i: dd 5
	EOF
	done
	$(RM) Sully_*
	$(RM) Sully.diff

tests: all test-colleen test-grace test-sully

.PHONY: test-colleen test-grace test-sully tests
