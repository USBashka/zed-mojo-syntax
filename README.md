# Mojo Syntax for Zed

Syntax-only Mojo support for the Zed editor.

This extension intentionally contains no Rust code and no language-server integration. It provides only declarative Zed language features:

- `.mojo` and `.🔥` file detection
- Tree-sitter syntax highlighting
- Outline entries for functions, structs/classes, and traits
- Bracket matching and indentation queries
- Task templates for `mojo run`, `mojo build`, and `mojo format`
- Runnable detection for `def main`

## Why no Rust?

Zed extensions need Rust only when they execute extension logic, such as launching and configuring an LSP server. This repository has no `Cargo.toml` and no `src/lib.rs`, so it does not build an extension WebAssembly module.

Zed still uses the tree-sitter grammar declared in `extension.toml` for parsing and highlighting Mojo files.

## Mojo Syntax Note

Mojo v26.2 deprecated the `fn` keyword. New examples should use `def`:

```mojo
def main() raises:
    print("Hello, world!")
```

The syntax highlighter may still recognize legacy `fn` code because existing Mojo code can contain it.

## Tasks

Open `task: spawn` in a Mojo file to run:

- `mojo run $ZED_FILENAME`
- `mojo build $ZED_FILENAME`
- `mojo format $ZED_FILENAME`

Files containing a `main` function are tagged as `mojo-main`, so Zed can attach runnable actions to the `mojo run` task where supported.
