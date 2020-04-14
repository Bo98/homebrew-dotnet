class DotnetHost < Formula
  desc "The host runtime for .NET Core"
  homepage "https://dotnet.microsoft.com/"
  url "https://github.com/dotnet/source-build.git",
      :tag      => "v3.1.3.2-runtime",
      :revision => "ed88943d2414b1abaaae657b5b3c2d38a1391164"

  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
  depends_on "icu4c"
  depends_on "openssl@1.1"

  def install
    ENV["SOURCE_BUILD_SKIP_SUBMODULE_CHECK"] = "1"
    inreplace "repos/coreclr.proj", %r{(<RepositoryReference Include="linker" />)},
                                    '<RepositoryReference Include="arcade" />\\1'
    system "./build.sh", "/p:RootRepo=core-setup",
                         "/p:Configuration=Release"
    (share/"dotnet").install "bin/x64/Release"
  end

  test do
    # TODO
    system "false"
  end
end
