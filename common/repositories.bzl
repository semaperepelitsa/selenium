# This file has been generated using `bazel run scripts:pinned_browsers`

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("//common/private:dmg_archive.bzl", "dmg_archive")
load("//common/private:drivers.bzl", "local_drivers")
load("//common/private:pkg_archive.bzl", "pkg_archive")

def pin_browsers():
    local_drivers()

    http_archive(
        name = "linux_firefox",
        url = "https://ftp.mozilla.org/pub/firefox/releases/122.0.1/linux-x86_64/en-US/firefox-122.0.1.tar.bz2",
        sha256 = "1c502c15f71bb729e6506667c32de525849d6571f4a3a21e5b02fc08312b20e7",
        build_file_content = """
filegroup(
    name = "files",
    srcs = glob(["**/*"]),
    visibility = ["//visibility:public"],
)

exports_files(
    ["firefox/firefox"],
)
""",
    )

    dmg_archive(
        name = "mac_firefox",
        url = "https://ftp.mozilla.org/pub/firefox/releases/122.0.1/mac/en-US/Firefox%20122.0.1.dmg",
        sha256 = "42721425ca279d48b729eab8e443ce2ad83465ada46dee367d84a103791deb2a",
        build_file_content = "exports_files([\"Firefox.app\"])",
    )

    http_archive(
        name = "linux_beta_firefox",
        url = "https://ftp.mozilla.org/pub/firefox/releases/123.0b9/linux-x86_64/en-US/firefox-123.0b9.tar.bz2",
        sha256 = "c29d96875b8eb03d37e948e3f62cd4505300fce85f0e09dfae6a4443d3878607",
        build_file_content = """
filegroup(
    name = "files",
    srcs = glob(["**/*"]),
    visibility = ["//visibility:public"],
)

exports_files(
    ["firefox/firefox"],
)
""",
    )

    dmg_archive(
        name = "mac_beta_firefox",
        url = "https://ftp.mozilla.org/pub/firefox/releases/123.0b9/mac/en-US/Firefox%20123.0b9.dmg",
        sha256 = "6addddfd288a16c08dc59a88c8f9fe252d7d608b83bc2458f139e77fda4ddab8",
        build_file_content = "exports_files([\"Firefox.app\"])",
    )

    http_archive(
        name = "linux_dev_firefox",
        url = "https://ftp.mozilla.org/pub/firefox/releases/123.0b9/linux-x86_64/en-US/firefox-123.0b9.tar.bz2",
        sha256 = "c29d96875b8eb03d37e948e3f62cd4505300fce85f0e09dfae6a4443d3878607",
        build_file_content = """
filegroup(
    name = "files",
    srcs = glob(["**/*"]),
    visibility = ["//visibility:public"],
)

exports_files(
    ["firefox/firefox"],
)
""",
    )

    dmg_archive(
        name = "mac_dev_firefox",
        url = "https://ftp.mozilla.org/pub/firefox/releases/123.0b9/mac/en-US/Firefox%20123.0b9.dmg",
        sha256 = "6addddfd288a16c08dc59a88c8f9fe252d7d608b83bc2458f139e77fda4ddab8",
        build_file_content = "exports_files([\"Firefox.app\"])",
    )

    http_archive(
        name = "linux_geckodriver",
        url = "https://github.com/mozilla/geckodriver/releases/download/v0.34.0/geckodriver-v0.34.0-linux64.tar.gz",
        sha256 = "79b2e77edd02c0ec890395140d7cdc04a7ff0ec64503e62a0b74f88674ef1313",
        build_file_content = "exports_files([\"geckodriver\"])",
    )

    http_archive(
        name = "mac_geckodriver",
        url = "https://github.com/mozilla/geckodriver/releases/download/v0.34.0/geckodriver-v0.34.0-macos.tar.gz",
        sha256 = "9cec1546585b532959782c8220599aa97c1f99265bb2d75ad00cd56ef98f650c",
        build_file_content = "exports_files([\"geckodriver\"])",
    )

    pkg_archive(
        name = "mac_edge",
        url = "https://msedge.sf.dl.delivery.mp.microsoft.com/filestreamingservice/files/93171c00-f9f0-4e67-8949-0483270d6f53/MicrosoftEdge-121.0.2277.112.pkg",
        sha256 = "5eb19b6d59bf27be888bc633c0b1113845c5ab8f880d2119093fe258573ce421",
        move = {
            "MicrosoftEdge-121.0.2277.112.pkg/Payload/Microsoft Edge.app": "Edge.app",
        },
        build_file_content = "exports_files([\"Edge.app\"])",
    )

    http_archive(
        name = "linux_edgedriver",
        url = "https://msedgedriver.azureedge.net/121.0.2277.112/edgedriver_linux64.zip",
        sha256 = "177395237e60778f8dd482d4700376cd8993f042c10ff891cb00cf837268ad68",
        build_file_content = "exports_files([\"msedgedriver\"])",
    )

    http_archive(
        name = "mac_edgedriver",
        url = "https://msedgedriver.azureedge.net/121.0.2277.112/edgedriver_mac64.zip",
        sha256 = "ab8b7a72cff3c8e9f6351beffc0c3c35f98e1fd6b144f620e7e8a1adbdd8b9d0",
        build_file_content = "exports_files([\"msedgedriver\"])",
    )

    http_archive(
        name = "linux_chrome",
        url = "https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/121.0.6167.85/linux64/chrome-linux64.zip",
        sha256 = "0d4c2fbb4db86121bc72450cb9e8659335a72c1719c348e32331cf512ab1487c",
        build_file_content = """
filegroup(
    name = "files",
    srcs = glob(["**/*"]),
    visibility = ["//visibility:public"],
)

exports_files(
    ["chrome-linux64/chrome"],
)
""",
    )

    http_archive(
        name = "mac_chrome",
        url = "https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/121.0.6167.85/mac-x64/chrome-mac-x64.zip",
        sha256 = "e150319a0fb5e13adbc703772545c7c9fa20b0474b56667f99f7967f5eefe0b8",
        strip_prefix = "chrome-mac-x64",
        patch_cmds = [
            "mv 'Google Chrome for Testing.app' Chrome.app",
            "mv 'Chrome.app/Contents/MacOS/Google Chrome for Testing' Chrome.app/Contents/MacOS/Chrome",
        ],
        build_file_content = "exports_files([\"Chrome.app\"])",
    )

    http_archive(
        name = "linux_chromedriver",
        url = "https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/121.0.6167.85/linux64/chromedriver-linux64.zip",
        sha256 = "3bc538a59efafcdeeaf5b57b77403ec2522aa9aa33e96c9f6503b87085760883",
        strip_prefix = "chromedriver-linux64",
        build_file_content = "exports_files([\"chromedriver\"])",
    )

    http_archive(
        name = "mac_chromedriver",
        url = "https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/121.0.6167.85/mac-x64/chromedriver-mac-x64.zip",
        sha256 = "2033dd8eadc5a4bcba63dc64475e66cdb21a97cc23790cf35ad5ae678b8a9b30",
        strip_prefix = "chromedriver-mac-x64",
        build_file_content = "exports_files([\"chromedriver\"])",
    )
