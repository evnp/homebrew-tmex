> [!WARNING]
> **This repository is deprecated.** You can now install tmex from Homebrew core, without a tap:<br>
> ```
> brew install tmex
> ```
> This will ensure the latest version of tmex is installed.<br>
> Please see https://formulae.brew.sh/formula/tmex for further information.

---

Homebrew tap for

```
 ______   __    __    ______    __  __
/\__  _\ /\ \  |\ \  /\  ___\  /\_\_\_\
\/_/\ \/ \ \ \ | \ \ \ \  ___\ \/_/\_\/_
   \ \_\  \ \_\ \ \_\ \ \_____\  /\_\/\_\
    \/_/   \/_/  \/_/  \/_____/  \/_/\/_/  tmux execute
```

A lightweight tmux command & layout composer - one shell script + tmux + zero other dependencies

Please see https://github.com/evnp/tmex for full documentation.

Install
-------
```sh
brew tap evnp/tmex
brew install tmex
```
Verify installation:
```sh
tmex -v
==> tmex 2.0.3
brew test tmex
==> Testing tmex
==> /opt/homebrew/Cellar/tmex/2.0.3/bin/tmex test --print 1234 hello world
```

License
-------
MIT

