
FROM swift:6.4.1

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
RUN swift sdk install https://download.swift.org/swift-6.4.1-release/wasm-sdk/swift-6.4.1-RELEASE/swift-6.4.1-RELEASE_wasm.artifactbundle.tar.gz --checksum 783e6128d174d9f975b4eda68be02a5960681b723ef372e6876a7c2543a365d8

WORKDIR /workspaces
