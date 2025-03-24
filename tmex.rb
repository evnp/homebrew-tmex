class Tmex < Formula
  desc "tmux-execute – a lightweight tmux command & layout composer"
  homepage "https://github.com/evnp/tmex"
  url "https://github.com/evnp/tmex/archive/v2.0.3.tar.gz"
  sha256 "98cd4046421b6dad611628261932243481d2454c09e6670b3f7c09f48483c81d"
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
