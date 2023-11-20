import subprocess
import argparse
import os


def get_mount_path() -> str:
    parser = argparse.ArgumentParser()

    parser.add_argument(
        "-mount_path",
        "-mp",
        help="Mount Path Argument",
        required=True
    )

    args = parser.parse_args()

    return args.mount_path


def system_apps_cleanup(system_apps_path: str) -> None:
    dirs: list = os.listdir(system_apps_path)

    for i in dirs:
        if "ShellExperienceHost" in i:
            continue

        if "CloudExperienceHost" in i:
            continue

        if "Cortana" in i:
            continue

        abs_path: str = os.path.join(
            system_apps_path,
            i
        )

        subprocess.run(
            args=f"rmdir /s /q \"{abs_path}\" > nul 2>&1",
            shell=True
        )


if __name__ == "__main__":
    mount_path = get_mount_path()

    system_apps_directory = os.path.join(
        mount_path,
        "Windows",
        "SystemApps"
    )

    system_apps_cleanup(
        system_apps_path=system_apps_directory
    )
