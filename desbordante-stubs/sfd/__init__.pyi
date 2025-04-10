from __future__ import annotations
from . import algorithms

__all__ = ["Correlation", "algorithms"]

class Correlation:
    def GetLhsIndex(self) -> int: ...
    def GetLhsName(self) -> str: ...
    def GetRhsIndex(self) -> int: ...
    def GetRhsName(self) -> str: ...
    def __str__(self) -> str: ...
    def to_string(self) -> str: ...
