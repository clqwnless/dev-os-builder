import subprocess
import argparse
import os


def get_mount_path() -> str:
    parser = argparse.ArgumentParser()

    parser.add_argument(
        "--mount_path",
        "-mp",
        help="Mount Path Argument",
        required=True
    )

    args = parser.parse_args()
    
    return args.mount_path


def winsxs_cleanup(winsxs_path: str) -> None:
    dirs: list = os.listdir(winsxs_path)

    for i in dirs:
        if "s..cingstack.resources" in i:
            continue

        if "c..-controls.resources" in i:
            continue

        if "servicingstack" in i:
            continue

        if "common-controls" in i:
            continue

        if "gdiplus" in i:
            continue

        if i == "Catalogs":
            continue

        if i == "InstallTemp":
            continue

        if i == "Manifests":
            continue

        if "vc80" in i:
            continue

        if "vc90" in i:
            continue

        if i == "migration.xml":
            abs_path: str = os.path.join(
                winsxs_path,
                i
            )

            subprocess.run(
                args=f"del /s /q \"{abs_path}\" > nul 2>&1",
                shell=True
            )

            continue

        abs_path: str = os.path.join(
            winsxs_path,
            i
        )

        subprocess.run(
            args=f"rmdir /s /q \"{abs_path}\" > nul 2>&1",
            shell=True
        )


if __name__ == "__main__":
    mount_path = get_mount_path()

    winsxs_directory = os.path.join(
        mount_path,
        "Windows",
        "WinSxS"
    )
    
    winsxs_cleanup(
        winsxs_path=winsxs_directory
    )
