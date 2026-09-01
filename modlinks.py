from dataclasses import dataclass
from enum import Enum
from packaging.version import Version
import re
from typing import Optional, List, Dict


class System(Enum):
    """
    The individual systems
    """

    Universal = 1
    Linux = 2
    MacOS = 3
    Windows = 4


class Tags(Enum):
    """
    The individual tags
    """

    Accessibility = 1
    Boss = 2
    Charm = 3
    Cosmetic = 4
    Expansion = 5
    Gameplay = 6
    Joke = 7
    Library = 8
    LLM_Assisted = 9
    Optimization = 10
    Utility = 11


@dataclass
class URL:
    """
    Represents a url
    """

    url: str

    def __post_init__(self):
        if not re.match(r"^https?://.*$", self.url):
            raise ValueError("URL must start with http:// or https://")


@dataclass
class Link:
    """
    Represents a download link with its SHA256 hash
    """

    url: URL
    sha256: str  # 64-character hex string

    def __post_init__(self):
        if not re.match(r"^[0-9a-fA-F]{64}$", self.sha256):
            raise ValueError("SHA256 must be a 64-character hex string")


@dataclass
class Manifest:
    """
    Base class for a mod manifest.
    """

    name: str
    description: str
    version: Version
    platform_links: Dict[System, Link]
    repository: URL
    readme: URL
    issues: URL
    dependencies: List[str]
    integrations: List[str]
    tags: List[Tags]
    authors: List[str]
    display_name: Optional[str] = None

    def __post_init__(self):
        if not re.match(r"^[a-zA-Z][^\\/:*?<>\"|]+$", self.name):
            raise ValueError(
                'Name must start with a letter and not contain \\ / : * ? < > " |'
            )
        if self.display_name is None:
            self.display_name = self.name
