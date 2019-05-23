$pkg_name="ProcessExplorer"
$pkg_origin="devoptimist"
$pkg_version="16.22"
$pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
$pkg_license=@("Apache-2.0")
$pkg_source="https://download.sysinternals.com/files/ProcessExplorer.zip"
$pkg_shasum="d393f062091c4fcf720ce0cad56520a920ffcc9412cdc7941150e3bb3fc4fefa"

function Invoke-Unpack {
    Expand-Archive -Path "$HAB_CACHE_SRC_PATH/${pkg_name}.zip" -DestinationPath "$HAB_CACHE_SRC_PATH/$pkg_dirname"
}

function Invoke-Install {
    Copy-Item "$HAB_CACHE_SRC_PATH/$pkg_dirname/" $pkg_prefix/bin -Recurse
}
