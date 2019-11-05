Type "gci" (toggle: "gcc", uncomment: "gcui")
  before:
      "   <- inserted here"
  after:
      "   # <- inserted here"

Type "gcI" (uncomment: "gcuI")
  before:
      "   inserted the first column"
  after:
      "#    inserted the first column"

Type "gca" (uncomment: "gcua")
  before:
      "inserted after this"
  after:
      "inserted after this    # "

Type "gcw" (uncomment: "gcuw")
  before:
      "  wrap!"
  after:
      "  /* wrap! */"

Type "gcb"
  before:
      "  box!"
  after:
      "  /********/"
      "  /* box! */"
      "  /********/"

Type "gco"
  before:
      "   func1();"
  after:
      "   func1()"
      "   // "  (now cursor is at the end and entered insert-mode)

Type "gcO"
  before:
      "   func1();"
  after:
      "   // "  (now cursor is at the end and entered insert-mode)
      "   func1();"
