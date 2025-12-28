<p align="center">
  <img src="https://elementary-swift.github.io/assets/elementary-logo.svg" width="125px" alt="Elementary Logo">
</p>

# Minimal Vite Starter for ElementaryUI

A starter template for building web applications with [ElementaryUI](https://github.com/elementary-swift/elementary-ui) powered by [Vite](https://vite.dev/).

Click **Use this template** on GitHub or check the [docs](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template) about using templates.

<p align="center">
  <img src="https://elementary-swift.github.io/assets/vite-starter-split-screen.gif" alt="Elementary Demo Split Screen">
</p>

## Prerequisites

- Swift 6.2+ with matching Swift SDK for WebAssembly ([swift.org](https://www.swift.org/documentation/articles/wasm-getting-started.html))
- Node.js 22+ ([nodejs.org](https://nodejs.org/en/download))
- wasm-opt (optional, [homebrew](https://formulae.brew.sh/formula/binaryen) or [manual](https://github.com/WebAssembly/binaryen/releases))

## Getting Started

```sh
# Verify Swift toolchain
swift --version
# look for a compiler tag like this: (swift-6.2.3-RELEASE)

# Verify Swift SDK for WebAssembly
swift sdk list
# should contain matching entries, eg: swift-6.2.3-RELEASE_wasm and swift-6.2.3-RELEASE_wasm-embedded

# Install dependencies
npm install
```

## Develop

```sh
# Start development server with hot reload
npm run dev
```

Runs an initial debug build of the WebAssembly app in the browser. Swift files are watched and trigger an instant rebuild/reload on save.

## Deploying

```sh
# Build in release and bundle for deployment
npm run build

# Preview the built web app locally
npm run preview
```

## Configuration

The template comes with a [Vite config](vite.config.ts) that uses *Embedded Swift* for release builds.

```ts
// vite.config.ts
import { defineConfig } from "vite";
import swiftWasm from "@elementary-swift/vite-plugin-swift-wasm";

export default defineConfig({
  plugins: [
    swiftWasm({
      useEmbeddedSDK: true,
    }),
  ],
});
```

For all configuration options, visit the plugin's homepage: [vite-plugin-swift-wasm](https://github.com/elementary-swift/vite-plugin-swift-wasm).

## License

[0BSD License](LICENSE) - use it freely with no attribution required.
