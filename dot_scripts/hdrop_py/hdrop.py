import time
import click
import i18n


from hyprpy import Hyprland
# from hyprpy.utils.shell import run_or_fail

i18n.set("filename_format", "{namespace}.{format}")
i18n.set("file_format", "json")
# i18n.set("locale", "cn")
i18n.load_path.append("./i18n")

instance = Hyprland()


def move_window_to_hdrop(class_name):
    instance.dispatch(
        [
            "movetoworkspacesilent",
            f"special:hdrop,class:{class_name}",
        ]
    )


def move_window_to_active_workspace(class_name):
    active_workspace = instance.get_active_workspace()
    instance.dispatch(
        [
            "movetoworkspace",
            f"{active_workspace.id},class:{class_name}",
        ]
    )


def is_window_exists(class_name):
    windows = instance.get_windows()
    for window in windows:
        if window.wm_class == class_name:
            return True
    return False


def is_window_in_hdrop(class_name):
    windows = instance.get_windows()
    for window in windows:
        if window.wm_class == class_name and window.workspace_name == "special:hdrop":
            return True
    return False


def switch_window_state(class_name):
    if is_window_in_hdrop(class_name):
        move_window_to_active_workspace(class_name)
    else:
        move_window_to_hdrop(class_name)


def focus_mode(class_name):
    if is_window_in_hdrop(class_name):
        move_window_to_active_workspace(class_name)
    else:
        instance.dispatch(["focuswindow", f"class:{class_name}"])


def handle_func(
    command,
    class_name,
    focus_flag,
    floating_flag,
    height,
    width,
    center_flag,
    skip_flag=False,
):
    if skip_flag is True:
        instance.dispatch(["execr", command])
        time.sleep(0.5)
    if is_window_exists(class_name) is True:
        if is_window_in_hdrop(class_name):
            move_window_to_active_workspace(class_name)
            if floating_flag is True:
                instance.dispatch(["setprop", f"class:{class_name}", "noanim", "true"])
                instance.dispatch(["setfloating", f"class:{class_name}"])
                if center_flag is True:
                    instance.dispatch(["centerwindow", f"class:{class_name}"])
                if height is not None and width is not None:
                    instance.dispatch(
                        [
                            "resizewindowpixel",
                            f"exact {width}% {height}%,class:{class_name}",
                        ]
                    )
                instance.dispatch(["setprop", f"class:{class_name}", "noanim", "false"])
        elif focus_flag is True:
            instance.dispatch(["focuswindow", f"class:{class_name}"])
        else:
            move_window_to_hdrop(class_name)
    else:
        handle_func(
            command,
            class_name,
            focus_flag,
            floating_flag,
            height,
            width,
            center_flag,
            skip_flag=True,
        )


@click.command()
@click.option("--class", "-c", type=str, help=i18n.t("i18n.class_help"))
@click.option("--focus", "-F", is_flag=True, help=i18n.t("i18n.focus_help"))
@click.option("--floating", "-f", is_flag=True, help=i18n.t("i18n.floating_help"))
@click.option("--height", "-h", type=int, help=i18n.t("i18n.height_help"))
@click.option("--width", "-w", type=int, help=i18n.t("i18n.width_help"))
@click.option("--center", "-C", is_flag=True, help=i18n.t("i18n.center_help"))
@click.argument("command", nargs=1, type=str)
def main(command, **kwargs):
    class_name = kwargs.get("class")
    focus_flag = kwargs.get("focus")
    floating_flag = kwargs.get("floating")
    height = kwargs.get("height")
    width = kwargs.get("width")
    center_flag = kwargs.get("center")
    if class_name is not None:
        handle_func(
            command, class_name, focus_flag, floating_flag, height, width, center_flag
        )


if __name__ == "__main__":
    main()
