versions=(
  "7.9.3"
  # "7.10.0"
  # "7.11.0"
  # "7.12.0"
  # "7.13.0"
  # "7.14.0"
  # "7.15.0"
  "7.16.0"
  # "7.17.0"
  # "7.18.0"
  # "7.19.0"
  # "7.20.0"
  # "7.21.0"
  # "7.22.0"
  "7.23.0"
)

variants=(
  "router-dev-dep.react_dev-dep"
  "router-dev-dep.react_dep"
  "router-dev-dep.react_peer-dep"
  "router-dev-dep.react_no-dep"
  "router-dep.react_dev-dep"
  "router-dep.react_dep"
  "router-dep.react_peer-dep"
  "router-dep.react_no-dep"
)

mkdir -p results

for version in "${versions[@]}"
do
  for variant in "${variants[@]}"
  do
    echo "#### Building pnpm:$version.$variant ####"
    docker build --build-arg pnpm_version="$version" --build-arg variant="$variant" -t pnpm_peer:"$version.$variant" .
    docker run pnpm_peer:$version.$variant > results/pnpm.$version.$variant.md
  done
done
