VERSION=${VERSION:-"v1.10.26"}

echo "Deploy go-ethereum"
git add .
git commit -m "Publish $VERSION"
git push
git tag $VERSION
git push origin $VERSION
GOPROXY=proxy.golang.org go list -m github.com/Helios-Chain-Labs/go-ethereum@$VERSION

echo "Publish done"