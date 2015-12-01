## What does it do?

Sets up a node (5.1) development environment, with automatic reload, package installs, and babel compilation

## How does it work

You need 4 things

- A package.json
- A source folder
- An entry file (default: [source_folder]/index.js)
- Docker

From your application folder run

```
 docker run -it --rm \
  -v $(pwd)/package.json:/app/package.json
  -v $(pwd)/source:/app/source
  johnydays/node-development
```

This will start nodemon which will reload when you change one of you files, babel which will compile your files and eye which will install packages when you alter package.json

And that's it, you can start editing your files and watch the app automatically reload

## Contributing

Clone the repository, and run ./test to start an example container. Only dependency is docker
