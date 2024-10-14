(Input: int).IsGraterThan<public>(Value: int): logic =
  return logic { Input > Value }

(Input: int).IsGraterThanOrEqual<public>(Value: int): logic =
  return logic { Input >= Value }

(Input: int).IsLessThan<public>(Value: int): logic =
  return logic { Input < Value }

(Input: int).IsLessThanOrEqual<public>(Value: int): logic =
  return logic { Input <= Value }
