; Definitions

(function_definition
  name: (identifier) @function)

(class_definition
  name: (identifier) @type)

(trait_definition
  name: (identifier) @type)

(decorator) @function

; Calls and attributes

(call
  function: (identifier) @function)

(call
  function: (attribute
    attribute: (identifier) @function.method))

(attribute
  attribute: (identifier) @property)

; Types and naming conventions

(type (identifier) @type)

((identifier) @type
  (#match? @type "^[A-Z]"))

((identifier) @constant
  (#match? @constant "^_*[A-Z][A-Z\\d_]*$"))

((identifier) @variable.special
  (#match? @variable.special "^(self|Self|__owned|__origin_of)$"))

((identifier) @type.builtin
  (#match? @type.builtin "^(AnyType|Bool|Boolable|CollectionElement|Copyable|DType|Dict|DynamicVector|Float16|Float32|Float64|FloatLiteral|Hashable|ImplicitlyCopyable|IndexList|Int|Int8|Int16|Int32|Int64|IntLiteral|List|Movable|NoneType|Optional|PythonObject|SIMD|Scalar|Set|String|Tuple|UInt|UInt8|UInt16|UInt32|UInt64|UnsafePointer|Variant)$"))

((call
  function: (identifier) @function.builtin)
  (#match? @function.builtin "^(abs|all|any|ascii|bin|bool|breakpoint|chr|compile|constrained|debug_assert|dict|dir|enumerate|eval|exec|float|format|getattr|hasattr|hash|hex|id|int|isinstance|issubclass|len|list|max|min|object|ord|print|range|repr|round|set|str|sum|tuple|type|unroll|zip|__import__|__mlir_attr|__mlir_op|__mlir_type)$"))

; Literals

[
  (none)
  (true)
  (false)
] @constant.builtin

[
  (integer)
  (float)
] @number

(comment) @comment
(string) @string
(escape_sequence) @string.escape

; Punctuation and operators

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

[
  ","
  "."
  ":"
] @punctuation.delimiter

(interpolation
  "{" @punctuation.special
  "}" @punctuation.special)

[
  "-"
  "-="
  "!="
  "*"
  "**"
  "**="
  "*="
  "/"
  "//"
  "//="
  "/="
  "&"
  "%"
  "%="
  "^"
  "+"
  "->"
  "+="
  "<"
  "<<"
  "<="
  "<>"
  "="
  ":="
  "=="
  ">"
  ">="
  ">>"
  "|"
  "~"
  "and"
  "in"
  "is"
  "not"
  "or"
  "is not"
  "not in"
  "!"
] @operator

[
  "as"
  "assert"
  "async"
  "await"
  "borrowed"
  "break"
  "capturing"
  "case"
  "class"
  "comptime"
  "continue"
  "def"
  "del"
  "deinit"
  "elif"
  "else"
  "escaping"
  "except"
  "finally"
  "fn"
  "for"
  "from"
  "global"
  "if"
  "import"
  "inout"
  "lambda"
  "match"
  "mut"
  "nonlocal"
  "owned"
  "out"
  "pass"
  "raise"
  "raises"
  "read"
  "ref"
  "return"
  "struct"
  "trait"
  "try"
  "unified"
  "var"
  "while"
  "where"
  "with"
  "yield"
] @keyword

; MLIR literals embedded in Mojo.

(mlir_type "!" @punctuation.special)
(mlir_type ">" @punctuation.special)
(mlir_type "<" @punctuation.special)
(mlir_type "->" @punctuation.special)
(mlir_type "(" @punctuation.special)
(mlir_type ")" @punctuation.special)
(mlir_type "." @punctuation.special)
(mlir_type ":" @punctuation.special)
(mlir_type "+" @punctuation.special)
(mlir_type "-" @punctuation.special)
(mlir_type "*" @punctuation.special)
(mlir_type "," @punctuation.delimiter)
(mlir_type) @type
