# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.0

EAPI=8

CRATES="
	addr2line@0.21.0
	adler@1.0.2
	aead@0.5.2
	aes-gcm@0.10.3
	aes@0.8.3
	aho-corasick@1.1.2
	alloc-no-stdlib@2.0.4
	alloc-stdlib@0.2.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anes@0.1.6
	ansi_term@0.12.1
	anstream@0.6.5
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	anstyle@1.0.4
	antidote@1.0.0
	anyhow@1.0.76
	arc-swap@1.6.0
	arrayref@0.3.7
	arrayvec@0.7.4
	async-recursion@1.0.5
	async-stream-impl@0.3.5
	async-stream@0.3.5
	async-trait@0.1.75
	atomic-polyfill@1.0.3
	atty@0.2.14
	autocfg@1.1.0
	axum-core@0.3.4
	axum-core@0.4.1
	axum-macros@0.4.0
	axum@0.6.20
	axum@0.7.2
	backtrace@0.3.69
	base16ct@0.2.0
	base64@0.13.1
	base64@0.21.5
	base64ct@1.6.0
	bindgen@0.59.2
	bindgen@0.68.1
	bindgen@0.69.1
	bitflags@1.3.2
	bitflags@2.4.1
	blake2@0.10.6
	blake3@1.5.0
	block-buffer@0.10.4
	boringtun@0.6.0
	brotli-decompressor@2.5.1
	brotli@3.4.0
	bumpalo@3.14.0
	byte_string@1.0.0
	byteorder@1.5.0
	bytes@1.5.0
	c2rust-bitfields-derive@0.18.0
	c2rust-bitfields@0.18.0
	cast@0.3.0
	cc@1.0.83
	cexpr@0.6.0
	cfg-if@1.0.0
	chacha20@0.9.1
	chacha20poly1305@0.10.1
	chrono@0.4.31
	ciborium-io@0.2.1
	ciborium-ll@0.2.1
	ciborium@0.2.1
	cipher@0.4.4
	clang-sys@1.6.1
	clap@2.34.0
	clap@4.4.11
	clap_builder@4.4.11
	clap_derive@4.4.7
	clap_lex@0.6.0
	cmake@0.1.50
	colorchoice@1.0.0
	console-api@0.6.0
	console-subscriber@0.2.0
	const-oid@0.9.6
	constant_time_eq@0.3.0
	core-foundation-sys@0.8.6
	core-foundation@0.9.4
	cpufeatures@0.2.11
	crc32fast@1.3.2
	criterion-plot@0.5.0
	criterion@0.5.1
	critical-section@1.1.2
	crossbeam-channel@0.5.10
	crossbeam-deque@0.8.4
	crossbeam-epoch@0.9.17
	crossbeam-queue@0.3.10
	crossbeam-utils@0.8.18
	crossbeam@0.8.3
	crypto-bigint@0.5.5
	crypto-common@0.1.6
	ctor@0.2.6
	ctr@0.9.2
	curve25519-dalek-derive@0.1.1
	curve25519-dalek@4.0.0-rc.3
	data-encoding@2.5.0
	defmt-macros@0.3.6
	defmt-parser@0.3.3
	defmt@0.3.5
	der@0.7.8
	deranged@0.3.10
	dhcproto-macros@0.1.0
	dhcproto@0.11.0
	difflib@0.4.0
	digest@0.10.7
	doc-comment@0.3.3
	downcast@0.11.0
	ecdsa@0.16.9
	ed25519@2.2.3
	either@1.9.0
	elliptic-curve@0.13.8
	endian-type@0.1.2
	enum-as-inner@0.5.1
	enum-as-inner@0.6.0
	env_logger@0.9.3
	equivalent@1.0.1
	erased-serde@0.3.31
	errno@0.3.8
	fastrand@2.0.1
	ff@0.13.0
	fiat-crypto@0.1.20
	filetime@0.2.23
	flate2@1.0.28
	float-cmp@0.9.0
	fnv@1.0.7
	foreign-types-macros@0.2.3
	foreign-types-shared@0.3.1
	foreign-types@0.5.0
	form_urlencoded@1.2.1
	fragile@2.0.0
	fs_extra@1.3.0
	fsevent-sys@4.1.0
	fslock@0.2.1
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-executor@0.3.30
	futures-io@0.3.30
	futures-macro@0.3.30
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-util@0.3.30
	futures@0.3.30
	fxhash@0.2.1
	generic-array@0.14.7
	getrandom@0.2.11
	ghash@0.5.0
	gimli@0.28.1
	glob@0.3.1
	group@0.13.0
	h2@0.3.22
	h2@0.4.0
	half@1.8.2
	hash32@0.2.1
	hashbrown@0.12.3
	hashbrown@0.14.3
	hdrhistogram@7.5.4
	headers-core@0.2.0
	headers@0.3.9
	heapless@0.7.17
	heck@0.4.1
	hermit-abi@0.1.19
	hermit-abi@0.3.3
	hex@0.4.3
	hickory-client@0.24.0
	hickory-proto@0.24.0
	hickory-resolver@0.24.0
	hickory-server@0.24.0
	hkdf@0.12.4
	hmac@0.12.1
	home@0.5.9
	hostname@0.3.1
	http-body-util@0.1.0
	http-body@0.4.6
	http-body@1.0.0
	http-range-header@0.4.0
	http@0.2.11
	http@1.0.0
	httparse@1.8.0
	httpdate@1.0.3
	humantime@2.1.0
	hyper-timeout@0.4.1
	hyper-util@0.1.2
	hyper@0.14.28
	hyper@1.1.0
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.58
	idna@0.2.3
	idna@0.4.0
	idna@0.5.0
	indexmap@1.9.3
	indexmap@2.1.0
	inotify-sys@0.1.5
	inotify@0.9.6
	inout@0.1.3
	instant@0.1.12
	integer-encoding@3.0.4
	ioctl-sys@0.8.0
	ip_network@0.4.1
	ip_network_table-deps-treebitmap@0.5.0
	ip_network_table@0.2.0
	ipconfig@0.3.2
	ipnet@2.9.0
	ipnetwork@0.18.0
	is-terminal@0.4.9
	itertools@0.10.5
	itertools@0.11.0
	itoa@1.0.10
	js-sys@0.3.66
	kqueue-sys@1.0.4
	kqueue@1.0.8
	lazy_static@1.4.0
	lazycell@1.3.0
	libc@0.2.151
	libloading@0.7.4
	libloading@0.8.1
	linked-hash-map@0.5.6
	linked_hash_set@0.1.4
	linux-raw-sys@0.4.12
	lock_api@0.4.11
	log@0.4.20
	lru-cache@0.1.2
	lru_time_cache@0.11.11
	mach@0.3.2
	managed@0.8.0
	match_cfg@0.1.0
	matchers@0.1.0
	matches@0.1.10
	matchit@0.7.3
	maxminddb@0.23.0
	md-5@0.10.6
	memchr@2.6.4
	mime@0.3.17
	mime_guess@2.0.4
	minimal-lexical@0.2.1
	miniz_oxide@0.7.1
	mio@0.8.10
	mockall@0.11.4
	mockall_derive@0.11.4
	murmur3@0.5.2
	network-interface@1.1.1
	nibble_vec@0.1.0
	nix@0.25.1
	nom@7.1.3
	normalize-line-endings@0.3.0
	notify@6.1.1
	nu-ansi-term@0.46.0
	num-traits@0.2.17
	num_cpus@1.16.0
	object@0.32.2
	once_cell@1.19.0
	oorandom@11.1.3
	opaque-debug@0.3.0
	opentelemetry-http@0.10.0
	opentelemetry-jaeger@0.20.0
	opentelemetry-semantic-conventions@0.13.0
	opentelemetry@0.21.0
	opentelemetry_sdk@0.21.1
	ordered-float@2.10.1
	ordered-float@4.2.0
	overload@0.1.1
	p256@0.13.2
	p384@0.13.0
	parking_lot@0.11.2
	parking_lot@0.12.1
	parking_lot_core@0.8.6
	parking_lot_core@0.9.9
	peeking_take_while@0.1.2
	percent-encoding@2.3.1
	pin-project-internal@1.1.3
	pin-project-lite@0.2.13
	pin-project@1.1.3
	pin-utils@0.1.0
	pkcs8@0.10.2
	platforms@3.2.0
	plotters-backend@0.3.5
	plotters-svg@0.3.5
	plotters@0.3.5
	poly1305@0.8.0
	polyval@0.6.1
	powerfmt@0.2.0
	ppv-lite86@0.2.17
	predicates-core@1.0.6
	predicates-tree@1.0.9
	predicates@2.1.5
	prettyplease@0.2.15
	primeorder@0.13.6
	proc-macro-error-attr@1.0.4
	proc-macro-error@1.0.4
	proc-macro2@1.0.71
	prost-derive@0.12.3
	prost-types@0.12.3
	prost@0.12.3
	public-suffix@0.1.1
	quanta@0.9.3
	quick-error@1.2.3
	quote@1.0.33
	radix_trie@0.2.1
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	raw-cpuid@10.7.0
	rayon-core@1.12.0
	rayon@1.8.0
	redox_syscall@0.2.16
	redox_syscall@0.4.1
	regex-automata@0.1.10
	regex-automata@0.4.3
	regex-syntax@0.6.29
	regex-syntax@0.8.2
	regex@1.10.2
	resolv-conf@0.7.0
	ring-compat@0.8.0
	ring@0.16.20
	ring@0.17.7
	rustc-demangle@0.1.23
	rustc-hash@1.1.0
	rustc_version@0.4.0
	rustix@0.38.28
	rustls-pemfile@1.0.4
	rustls-webpki@0.101.7
	rustls@0.21.10
	rustversion@1.0.14
	ryu@1.0.16
	same-file@1.0.6
	scopeguard@1.2.0
	sct@0.7.1
	sec1@0.7.3
	security-framework-sys@2.9.1
	security-framework@2.9.2
	semver@1.0.20
	sendfd@0.4.3
	serde@1.0.193
	serde_derive@1.0.193
	serde_json@1.0.108
	serde_path_to_error@0.1.14
	serde_urlencoded@0.7.1
	serde_yaml@0.9.29
	sha1@0.10.6
	sha2@0.10.8
	shadowsocks-crypto@0.5.4
	shadowsocks@1.17.1
	sharded-slab@0.1.7
	shlex@1.2.0
	signal-hook-registry@1.4.1
	signature@2.2.0
	slab@0.4.9
	smallvec@1.11.2
	smoltcp@0.10.0
	socket2@0.5.5
	spin@0.5.2
	spin@0.9.8
	spki@0.7.3
	stable_deref_trait@1.2.0
	strsim@0.10.0
	strsim@0.8.0
	subtle@2.5.0
	syn@1.0.109
	syn@2.0.43
	sync_wrapper@0.1.2
	tempfile@3.8.1
	termcolor@1.4.0
	termtree@0.4.1
	textwrap@0.11.0
	thiserror-impl@1.0.51
	thiserror@1.0.51
	thread_local@1.1.7
	threadpool@1.8.1
	thrift@0.17.0
	time-core@0.1.2
	time-macros@0.2.16
	time@0.3.31
	tinytemplate@1.2.1
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio-io-timeout@1.2.0
	tokio-macros@2.2.0
	tokio-rustls@0.24.1
	tokio-stream@0.1.14
	tokio-test@0.4.3
	tokio-tfo@0.2.2
	tokio-tungstenite@0.20.1
	tokio-tungstenite@0.21.0
	tokio-util@0.7.10
	tokio@1.35.1
	tonic@0.10.2
	tower-http@0.5.0
	tower-layer@0.3.2
	tower-service@0.3.2
	tower@0.4.13
	tracing-appender@0.2.3
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing-log@0.2.0
	tracing-opentelemetry@0.22.0
	tracing-oslog@0.1.2
	tracing-subscriber@0.3.18
	tracing-timing@0.6.0
	tracing@0.1.40
	trust-dns-proto@0.22.0
	try-lock@0.2.5
	tungstenite@0.20.1
	tungstenite@0.21.0
	typenum@1.17.0
	unicase@2.7.0
	unicode-bidi@0.3.14
	unicode-ident@1.0.12
	unicode-normalization@0.1.22
	unicode-width@0.1.11
	universal-hash@0.5.1
	unsafe-libyaml@0.2.10
	untrusted@0.7.1
	untrusted@0.9.0
	url@2.5.0
	urlencoding@2.1.3
	utf-8@0.7.6
	utf8parse@0.2.1
	uuid-macro-internal@1.6.1
	uuid@1.6.1
	valuable@0.1.0
	vec_map@0.8.2
	version_check@0.9.4
	walkdir@2.4.0
	want@0.3.1
	wasi@0.10.2+wasi-snapshot-preview1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.89
	wasm-bindgen-macro-support@0.2.89
	wasm-bindgen-macro@0.2.89
	wasm-bindgen-shared@0.2.89
	wasm-bindgen@0.2.89
	web-sys@0.3.66
	web-time@0.2.4
	webpki-roots@0.25.3
	which@4.4.2
	widestring@1.0.2
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.51.1
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.0
	windows@0.51.1
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.0
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.0
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.0
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.0
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.0
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.0
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.0
	winreg@0.50.0
	wintun@0.3.2
	x25519-dalek@2.0.0-rc.3
	zeroize@1.7.0
	zeroize_derive@1.4.2
"

declare -A GIT_CRATES=(
	[netstack-lwip]='https://github.com/Watfaq/netstack-lwip;2817bf82740e04bbee6b7bf1165f55657a6ed163;netstack-lwip-%commit%'
	[tun]='https://github.com/Watfaq/rust-tun;8f7568190f1200d3e272ca534baf8d1578147e18;rust-tun-%commit%'
)

inherit cargo systemd

DESCRIPTION="Custom protocol, rule based network proxy"
HOMEPAGE="
	https://watfaq.gitbook.io/clashrs-user-manual/
	https://github.com/Watfaq/clash-rs/
"
BORING_CRATE="58d5e7c66b537989bde45d20ce54aff11de1bcea"
BORINGSSL_COMMIT="410247096a96910339f7ca8aaec479f19316152b"
SRC_URI="
	https://github.com/Watfaq/clash-rs/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	https://github.com/Watfaq/boring/archive/${BORING_CRATE}.tar.gz -> boring-${BORING_CRATE}.gh.tar.gz
	https://github.com/google/boringssl/archive/${BORINGSSL_COMMIT}.tar.gz -> boringssl-${BORINGSSL_COMMIT}.gh.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="Apache-2.0"
# Dependent crate licenses
LICENSE+="
	0BSD Apache-2.0 BSD-2 BSD CC0-1.0 ISC MIT MPL-2.0 Unicode-DFS-2016
	WTFPL-2 ZLIB
"
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc +lto"
REQUIRED_UES="debug? ( !lto )"

BDEPEND="
	sys-devel/clang
	dev-build/cmake
"

src_prepare() {
	# git submodule
	rm -rf "${S}/deps/boringssl/src" || die
	ln -sv "${WORKDIR}/boringssl-${BORINGSSL_COMMIT}" "${S}/deps/boringssl/src" || die

	workspace_config() {
		case "${1}" in
			root)
				cat >> "${ECARGO_HOME}/config" <<- _EOF_ || die "Failed to append cargo git config"
				[source."git+${3}.git?rev=${4}"]
				git = "${3}.git"
				rev = "${4}"
				replace-with = "${2}-sources"

				[source.${2}-sources]
				directory = "${WORKDIR}/${2}-${4}"

				_EOF_
				;;
			member)
				cat > "${3}/.cargo-checksum.json" <<- _EOF_ || die "Failed to set checksum for ${2}"
				{
					"package": "",
					"files": {}
				}
				_EOF_
				;;
			*)
				:
				;;
		esac
	}

	local CARGO_WORKSPACE=(
		"root boring https://github.com/Watfaq/boring ${BORING_CRATE}"
		"member boring ${WORKDIR}/boring-${BORING_CRATE}/boring"
		"member boring-sys ${WORKDIR}/boring-${BORING_CRATE}/boring-sys"
		"member hyper-boring ${WORKDIR}/boring-${BORING_CRATE}/hyper-boring"
		"member tokio-boring ${WORKDIR}/boring-${BORING_CRATE}/tokio-boring"
	)
	for line in "${CARGO_WORKSPACE[@]}"; do
		read -r role name path var4 <<< "${line}" || die
		workspace_config "${role}" "${name}" "${path}" "${var4}"
	done

	default
}

src_compile() {
	if use !debug; then
		# let portage do the strip
		export CARGO_PROFILE_RELEASE_STRIP=false
		if use !lto; then
			export CARGO_PROFILE_RELEASE_LTO=false
		fi
	fi
	cargo_src_compile
}

src_install() {
	insinto "/etc/clash-rs"
	doins "${FILESDIR}/config.example.yaml"
	systemd_dounit "${FILESDIR}/clash-rs.service"

	newbin target/$(usex debug "debug" "release")/clash clash-rs
	use doc && dodoc -r ./docs
}
