DOCKER := docker compose
CONTAINER := asm-lab

# Default target: assemble, link and run index.asm
all:
	$(DOCKER) up -d
	docker exec $(CONTAINER) nasm -f elf64 /workspace/index.asm -o /workspace/index.o
	docker exec $(CONTAINER) ld /workspace/index.o -o /workspace/index
	docker exec $(CONTAINER) /workspace/index
