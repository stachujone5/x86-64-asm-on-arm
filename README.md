# x86-64 Assembly Development Environment

A simple Docker-based development environment for writing and running x86-64 assembly programs on macOS ARM architecture.

## Prerequisites

- Docker Desktop with Docker Compose
- Make

## Usage

Simply run:

```bash
make
```

This command will:
1. Start the Docker container (Debian x86-64)
2. Assemble `index.asm` using NASM
3. Link the object file using ld
4. Execute the resulting binary

## File Structure

- `index.asm` - Your assembly source code
- `docker-compose.yml` - Docker environment configuration
- `Makefile` - Build automation

## Example

The included `index.asm` contains a simple "Hello, World!" program that demonstrates basic system calls for writing to stdout and exiting.

## Notes

- The Docker container runs on linux/amd64 platform to ensure x86-64 compatibility
- NASM and binutils are automatically installed in the container
- The workspace is mounted at `/workspace` inside the container
# x86-64-asm-on-arm
# x86-64-asm-on-arm
