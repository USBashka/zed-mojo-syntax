# Mojo Syntax for Zed

Syntax-only Mojo support for the Zed editor.

This extension intentionally contains no Rust code and no language-server integration. It provides only declarative Zed language features:

- `.mojo` and `.🔥` file detection
- Tree-sitter syntax highlighting

The extension is intentionally minimal while Mojo parser stability in Zed is validated. It does not currently ship outline, bracket, indentation, task, runnable, or LSP integration.

## Why no Rust?

Zed extensions need Rust only when they execute extension logic, such as launching and configuring an LSP server. This repository has no `Cargo.toml` and no `src/lib.rs`, so it does not build an extension WebAssembly module.

Zed still uses the tree-sitter grammar declared in `extension.toml` for parsing and highlighting `.mojo` files.

## Mojo Syntax Note

Mojo v26.2 deprecated the `fn` keyword. New examples should use `def`:

```mojo
def main() raises:
    print("Hello, world!")
```

The syntax highlighter may still recognize legacy `fn` code because existing Mojo code can contain it.
