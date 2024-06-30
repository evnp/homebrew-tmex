class Tmex < Formula
  desc "tmux-execute – a lightweight tmux command & layout composer"
  homepage "https://github.com/evnp/tmex"
  url "https://github.com/evnp/tmex/archive/v2.0.2.tar.gz"
  sha256 "47a7342e2dfd893d1fb3ee073ebf1cf5b67e92102d5fb034dfe10a87cc21a5d9"
  license "MIT"

  def install
    man1.install "man/tmex.1"
    bin.install "tmex"
  end

  test do
    assert_equal shell_output("#{bin}/tmex test --print 1234 hello world").chomp,
      "new-session -s test ; send-keys hello Enter ; split-window -h -l50% ; "\
      "select-pane -L ; split-window -h -l50% ; send-keys world Enter ; "\
      "select-pane -R ; split-window -h -l50% ; select-pane -L ; select-pane -L ; "\
      "select-pane -L ; select-pane -R ; split-window -v -l50% ; select-pane -R ; "\
      "split-window -v -l67% ; split-window -v -l50% ; select-pane -R ; "\
      "split-window -v -l50% ; select-pane -U ; split-window -v -l50% ; "\
      "select-pane -D ; split-window -v -l50% "
  end
end
