from __future__ import annotations
import desbordante
import desbordante.data_types
from . import algorithms

__all__ = ["IND", "IndAlgorithm", "algorithms"]

class IND:
    def __str__(self) -> str: ...
    def get_lhs(self) -> desbordante.data_types.ColumnCombination: ...
    def get_rhs(self) -> desbordante.data_types.ColumnCombination: ...
    def to_long_string(self) -> str: ...
    def to_short_string(self) -> str: ...

class IndAlgorithm(desbordante.Algorithm):
    def get_inds(self) -> list[IND]: ...
