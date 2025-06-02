# docker build -t marp-ubu .

docker run --rm -v $(pwd):/workspace marp-ubu marp --pdf /workspace/example.md --allow-local-fonts

docker run --rm -v $(pwd):/workspace marp-ubu marp --html /workspace/example.md --allow-local-fonts
