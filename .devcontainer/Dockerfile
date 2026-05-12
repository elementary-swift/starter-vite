
FROM swift:6.3.1

#  Install wasp-opt from binaryen
RUN apt-get update && apt-get install -y \
    curl \
    binaryen \
    && rm -rf /var/lib/apt/lists/*

# Install node 22 + npm
RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \ 
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*

# WASM sdk install
RUN swift sdk install https://download.swift.org/swift-6.3.1-release/wasm-sdk/swift-6.3.1-RELEASE/swift-6.3.1-RELEASE_wasm.artifactbundle.tar.gz --checksum bd47baa20771f366d8beed7970afaa30742b2210097afd15f85427226d8f4cf2

WORKDIR /workspaces
