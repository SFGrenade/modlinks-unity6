from modlinks import *

vasi = Manifest(
    name="Vasi",
    description="A library with some utility classes.",
    version=Version("2.0.0.0"),
    platform_links={
        System.Universal: Link(
            URL(
                "https://github.com/fifty-six/HollowKnight.Vasi/releases/download/v2/Vasi.zip"
            ),
            "B93FA7ECDF40D5F91F942ACFD31CD2A5243551720C96E18DDE99FD64919162EC",
        )
    },
    repository=URL("https://github.com/fifty-six/HollowKnight.Vasi/"),
    readme=URL(
        "https://github.com/fifty-six/HollowKnight.Vasi/raw/refs/heads/master/README.md"
    ),
    issues=URL("https://github.com/fifty-six/HollowKnight.Vasi/issues/"),
    dependencies=[],
    integrations=[],
    tags=[Tags.Library],
    authors=["56"],
    display_name="Vasi",
)
