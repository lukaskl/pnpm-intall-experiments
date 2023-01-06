echo ''
echo "pnpm version: $(pnpm -v)"
echo ''

echo '```'
pnpm why -r react
echo '```'

echo ''
echo '```'
node packages/react-app
echo '```'

echo '```json'
cat packages/routes/package.json
echo '```'
