# A Guide to Embedding Static Files in Go

This is a simple Go server that serves files from an embed.FS file system. This is useful if you want to embed static files (like HTML, CSS, and JavaScript) directly into your Go binary.

## Usage

1. Clone the repository to your local machine.
2. Add the files you want to serve to the static directory.
3. Run the server using the go run command:

```bash
# clone the repo
git clone git@github.com:pyadav/a-guide-to-embedding-static-files-in-go.git
go run main.go
```

## Customization

You can customize the server to serve files from a different directory or port by changing the values in embed.go. For example, to serve files from a directory called public, change this line:

```go
//go:embed all:dist
var assets embed.FS
```

to this:

```go
//go:embed all:public
var assets embed.FS
```

You can also change the port by modifying the argument to http.ListenAndServe in `main.go`. For example, to use port 3000 instead of the default 8080, change this line:

```go
const port = ":8080"
```

to this:

```go
const port = ":3000"
```

## License

This program is licensed under the [Apache 2.0](LICENSE). See the [LICENSE file](LICENSE) for more information.
