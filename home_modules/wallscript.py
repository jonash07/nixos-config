import json
import argparse
import random
import subprocess
import os


USER_DIR = os.path.expanduser("~")
WALLPAPER_DIR = f"{USER_DIR}/Wallpaper"
WALLPAPERS_DIR = f"{WALLPAPER_DIR}/Wallpapers"
LATEST = f"{WALLPAPER_DIR}/latest.txt"


def check_dirs():
    if os.path.isdir(WALLPAPER_DIR) == False:
        os.mkdir(WALLPAPER_DIR)
        os.mkdir(WALLPAPERS_DIR)
        return False

    if os.path.isdir(WALLPAPERS_DIR) == False:
        os.mkdir(WALLPAPERS_DIR)
        return False

    return True


def get_wallpapers():
    wallpapers = os.listdir(WALLPAPERS_DIR)
    return wallpapers


def check_wallpapers(wallpapers):
    if len(wallpapers) == 0:
        return False
    
    return True


def run_checks():
    if check_dirs() == False:
        return False

    if check_wallpapers(get_wallpapers()) == False:
        return False

    return True


def check_latest():
    if os.path.isfile(LATEST) == False:
        return False
    
    with open(LATEST, "r") as f:
        contents = f.read()

    if contents == "":
        return False
    
    wallpapers = get_wallpapers()

    if contents in wallpapers:
        return True
    
    return False


def gen_ran_duration():
    possible_durations = [1.5, 2, 2.5]
    random_duration = random.choice(possible_durations)
    return random_duration


def gen_ran_angle():
    possible_angles = [0, 45, 90, 135, 180, 225, 270, 315]
    random_angle = random.choice(possible_angles)
    return random_angle


def default_wallpaper():
    ran_duration = gen_ran_duration()
    ran_angle = gen_ran_angle()  
    subprocess.run(["swww", "img", "-t", "wipe", "--transition-angle", str(ran_angle), "--transition-duration", str(ran_duration), "./default.png"])


def set_wallpaper(wallpaper_path):
    ran_duration = gen_ran_duration()
    ran_angle = gen_ran_angle()  
    subprocess.run(["swww", "img", "-t", "wipe", "--transition-angle", str(ran_angle), "--transition-duration", str(ran_duration), f"{WALLPAPERS_DIR}/{wallpaper_path}"])

    with open(LATEST, "w") as f:
        f.write(wallpaper_path)


def wallpaper_main(args):
    if run_checks() == False:
        default_wallpaper()
        return

    wallpapers = get_wallpapers()

    if check_latest() == False:
        set_wallpaper(wallpapers[0])
        return

    with open(LATEST, "r") as f:
        current_wallpaper = f.read()

    index = wallpapers.index(current_wallpaper)
    max_index = len(wallpapers) - 1

    if args.init:
        set_wallpaper(current_wallpaper)
        return(current_wallpaper)

    elif args.prev:
        prev = index - 1

        if prev == -1:
            prev_wallpaper = wallpapers[-1]
        else:
            prev_wallpaper = wallpapers[prev]

        set_wallpaper(prev_wallpaper)
        return(prev_wallpaper)
    
    elif args.next:
        next = index + 1

        if next == max_index + 1:
            next_wallpaper = wallpapers[0]
        else:
            next_wallpaper = wallpapers[next]

        set_wallpaper(next_wallpaper)
        return(next_wallpaper)


def format_palettes(palette):
    return


def refresh_configs():
    return


def main(args):
    # Change wallpaper
    new_wallpaper = wallpaper_main(args)

    return

    # Extract the palette from that wallapper in json
    palette = pywal(new_wallpaper)

    # Create the palette in multiple formats and put them in the directory
    format_palettes(palette)

    # Refresh the configs of every program
    refresh_configs()

    # Grab the prewritten configs and replace the color fields with extracted colors

    # Replace configs in their place


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    group = parser.add_mutually_exclusive_group()
    group.add_argument("-i", "--init", action="store_true")
    group.add_argument("-p", "--prev", action="store_true")
    group.add_argument("-n", "--next", action="store_true")
    args = parser.parse_args()
    main(args) 
