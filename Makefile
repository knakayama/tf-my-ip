default: test

test:
	@cd example && terraform get && terraform $(args)

.POHNY: test
