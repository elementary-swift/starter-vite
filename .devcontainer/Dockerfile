
FROM swift:6.4.2

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
RUN swift sdk install https://download.swift.org/swift-6.4.2-release/wasm-sdk/swift-6.4.2-RELEASE/swift-6.4.2-RELEASE_wasm.artifactbundle.tar.gz --checksum 83baca83553f8c443cda7b84800912e6e709c3acd2e7ebf277794ca5836c0da5

WORKDIR /workspaces
