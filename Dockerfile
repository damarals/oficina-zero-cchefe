FROM astefanutti/decktape

WORKDIR /app

COPY oficina-zero/wsl.qmd .
RUN quarto render oficina-zero/wsl.qmd
RUN decktape oficina-zero/wsl.html oficina-zero/wsl.pdf

CMD ["ls", "-l"]