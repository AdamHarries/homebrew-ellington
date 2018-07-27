class Ellington < Formula
  desc "Automated BPM calculation for swing dance DJs"
  homepage "https://github.com/AdamHarries/ellington/"
  url "https://github.com/AdamHarries/ellington/archive/0.1.3-alpha.zip"
  sha256 "4ccdcfd58272071c2cec930b32afe02ba71c337175a57cba2a20f12eeb8a3cb3"

  depends_on "rust" => :build
  depends_on "id3v2"
  depends_on "mp4v2"
  def install
    system "cargo build --release"
    bin.install "target/release/ellington"
  end

  test do
    system "#{bin}cargo", "test", "--all", "-vv"
  end
end
