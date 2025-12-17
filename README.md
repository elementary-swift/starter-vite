<p align="center">
  <img src="https://elementary-swift.github.io/assets/elementary-logo.svg" width="125px" alt="Elementary Logo">
</p>

# Minimal Vite Starter for ElementaryUI

A starter template for building web applications with [Elementary UI](https://github.com/elementary-swift/elementary-ui) powered by [Vite](https://vite.dev/).

Click **Use this template** on GitHub or check the [docs](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template) about using templates.

## Prerequisites

- Swift 6.2+ with matching Swift SDK for WebAssembly ([swift.org](https://www.swift.org/documentation/articles/wasm-getting-started.html))
- Node.js 22+ with pnpm ([nodejs.org](https://nodejs.org/en/download), [pnpm.io](https://pnpm.io/installation))
- wasm-opt (optional, [homebrew](https://formulae.brew.sh/formula/binaryen) or [manual](https://github.com/WebAssembly/binaryen/releases))

## Getting Started

```sh
pnpm install
```

## Develop

```sh
# Start development server with hot reload
pnpm dev
```

Runs an initial debug build of the WebAssembly app in the browser. Swift files are watched and trigger an instant rebuild/reload on save.

## Deploying

```sh
# Build in release and bundle for deployment
pnpm build

# Preview the built web app locally
pnpm preview
```

## License

[0BSD License](LICENSE) - use it freely with no attribution required.
