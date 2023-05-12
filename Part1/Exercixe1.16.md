# Sovellus fly.io:ssa on meidän syksyn 2022 (buginen) ohtu-miniprojektin bibtex-generaattori:

https://jettatest.fly.dev/

## Projektin Github:

https://github.com/Doubleneck/Jetta


# DOCKERFILE:


FROM python:3.8

\# Configure Poetry
ENV POETRY_VERSION=1.2.0
ENV POETRY_HOME=/opt/poetry
ENV POETRY_VENV=/opt/poetry-venv
ENV POETRY_CACHE_DIR=/opt/.cache

\# Install poetry separated from system interpreter
RUN python3 -m venv $POETRY_VENV \
    && $POETRY_VENV/bin/pip install -U pip setuptools \
    && $POETRY_VENV/bin/pip install poetry==${POETRY_VERSION}

\# Add `poetry` to PATH
ENV PATH="${PATH}:${POETRY_VENV}/bin"
WORKDIR /usr/src/app

COPY . .

EXPOSE 5000
RUN poetry -v
RUN poetry install
#RUN poetry shell

CMD ["poetry","run","python3","src/app.py"]
