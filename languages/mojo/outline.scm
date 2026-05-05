(class_definition
  [
    "class"
    "struct"
  ] @context
  name: (identifier) @name) @item

(trait_definition
  "trait" @context
  name: (identifier) @name) @item

(function_definition
  "async"? @context
  [
    "def"
    "fn"
  ] @context
  name: (identifier) @name) @item
