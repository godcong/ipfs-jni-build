module github.com/godcong/ipfs-jni-build

require (
	github.com/Kubuxu/go-os-helper v0.0.1
	github.com/hashicorp/go-multierror v1.0.0
	github.com/ipfs/go-ipfs v0.4.22
	github.com/ipfs/go-ipfs-cmds v0.0.8
	github.com/ipfs/go-ipfs-config v0.0.3
	github.com/ipfs/go-ipfs-files v0.0.3
	github.com/ipfs/go-ipfs-util v0.0.1
	github.com/ipfs/go-log v0.0.1
	github.com/ipfs/go-metrics-prometheus v0.0.2
	github.com/jbenet/goprocess v0.1.3
	github.com/libp2p/go-libp2p-loggables v0.0.1
	github.com/multiformats/go-multiaddr v0.0.4
	github.com/multiformats/go-multiaddr-dns v0.0.3
	github.com/multiformats/go-multiaddr-net v0.0.1
	github.com/prometheus/client_golang v0.9.3
	golang.org/x/sys v0.0.0-20190922100055-0a153f010e69
)

replace github.com/go-critic/go-critic v0.0.0-20181204210945-ee9bf5809ead => github.com/go-critic/go-critic v0.4.0

replace github.com/golangci/golangci-lint v1.16.1-0.20190425135923-692dacb773b7 => github.com/golangci/golangci-lint v1.21.0

go 1.12
