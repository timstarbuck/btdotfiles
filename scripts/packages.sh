taps=(
azure/functions
homebrew/services
ngrok/ngrok
)

packages=(
        act
        autoconf
        azure-cli
        azure-functions-core-tools@3
        azure-functions-core-tools@4
        ca-certificates
        cairo
        fontconfig
        freetype
        fribidi
        gdbm
        genact
        gettext
        gh
        giflib
        glib
        graphite2
        gdk-pixbuf
        harfbuzz
        icu4c
        jpeg
        jpeg-turbo
        jq
        krb5
        libpng
        librsvg
        libtiff
        libx11
        libxau
        libxcb
        libxdmcp
        libxext
        libxrender
        libyaml
        lz4
        lzo
        m4
        mkcert
        mpdecimal
        nginx
        nvm
        oniguruma
        openssl@1.1
        openssl@3
        pango
        pcre2
        pixman
        pkg-config
        postgresql
        postgresql@14
        python@3.10
        python@3.11
        python@3.12
        rbenv
        readline
        redis
        ruby-build
        sqlite
        starship
        stow
        xorgproto
        xz
        zstd
)

install_packages() {
	info "Configuring taps"
	apply_brew_taps "${taps[@]}"

	info "Installing packages..."
	install_brew_formulas "${packages[@]}"

	info "Cleaning up brew packages..."
	brew cleanup
}

post_install_packages() {
	info "Installing fzf bindings"
	# shellcheck disable=SC2046
	$(brew --prefix)/opt/fzf/install
}