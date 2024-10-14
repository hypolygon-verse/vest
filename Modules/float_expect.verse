(Input: float).IsGraterThan<public>(Value: float): logic =
  return logic { Input > Value }

(Input: float).IsGraterThanOrEqual<public>(Value: float): logic =
  return logic { Input >= Value }

(Input: float).IsLessThan<public>(Value: float): logic =
  return logic { Input < Value }

(Input: float).IsLessThanOrEqual<public>(Value: float): logic =
  return logic { Input <= Value }