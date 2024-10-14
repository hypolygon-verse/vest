(Input: comparable).ToBe<public>(Expected: comparable): logic =
  return logic { Input = Expected }

(Input: ?comparable).OptionalToBe<public>(Expected: ?comparable): logic =
  return logic { Input = Expected }

(Input: ?comparable).IsUndefined<public>(): logic =
  return logic { Input = false }

(Input: ?comparable).IsDefined<public>(): logic =
  return logic { Input <> false }