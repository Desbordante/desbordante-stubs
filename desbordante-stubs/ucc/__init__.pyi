from __future__ import annotations
import desbordante
from . import algorithms

__all__ = ["UCC", "UccAlgorithm", "algorithms"]

class UCC:
    def __eq__(self, arg0: UCC) -> bool: ...
    def __hash__(self) -> int: ...
    def __str__(self) -> str: ...
    def to_long_string(self) -> str: ...
    def to_short_string(self) -> str: ...
    @property
    def indices(self) -> list[int]: ...

class UccAlgorithm(desbordante.Algorithm):
    def get_uccs(self) -> list[UCC]: ...
