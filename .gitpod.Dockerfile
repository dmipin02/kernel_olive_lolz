FROM gitpod/workspace-full

# Install custom tools, runtime, etc.
RUN sudo apt-get update \
    && sudo apt-get install -y \
        git openjdk-8-jdk git-core gnupg flex bison gperf build-essential zip \
	curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev \
	x11proto-core-dev libx11-dev libssl-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils \
	xsltproc unzip python bc liblz4-tool vboot-utils vim u-boot-tools \
	device-tree-compiler wget zsh tmux \
    && rm -rf /var/lib/apt/lists/*

# Apply user-specific settings
