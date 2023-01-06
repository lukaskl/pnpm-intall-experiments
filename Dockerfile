FROM node:18.12.1-alpine
WORKDIR /app

ARG pnpm_version
RUN npm install --global pnpm@${pnpm_version}

ARG variant

# We could copy all files, but there is a risk that doing so
# we'll include additional files (e.g. node_modules, lock files, etc.)
# so we are copying just needed files one by one.
COPY .npmrc .npmrc
COPY Dockerfile Dockerfile
COPY package.json package.json
COPY packages/routes/package.${variant}.json packages/routes/package.json
COPY packages/routes/index.js packages/routes/index.js

COPY packages/react-app/package.json packages/react-app/package.json
COPY packages/react-app/index.js packages/react-app/index.js
COPY pnpm-workspace.yaml pnpm-workspace.yaml

RUN pnpm install
COPY packages/routes/react-router-dom.index.js packages/routes/node_modules/react-router-dom/index.js

COPY run_inside_docker.sh run_inside_docker.sh

CMD [ "/bin/sh", "run_inside_docker.sh" ]



