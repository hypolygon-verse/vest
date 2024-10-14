using { /UnrealEngine.com/Temporary/SpatialMath }

(Input: vector2).ToBe<public>(Expected: vector2): logic =
  return logic { Input.X = Expected.X and Input.Y = Expected.Y }

(Input: vector3).ToBe<public>(Value: vector3): logic =
  return logic { Input.X = Value.X and Input.Y = Value.Y and Input.Z = Value.Z }