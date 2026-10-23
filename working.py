"""Run working_populate -> working_oomp -> working_scad."""

import argparse


def main(**kwargs):
    if kwargs.pop("run_oomp_populate", True):
        import working_populate
        working_populate.main()
    if kwargs.pop("run_oomp", True):
        import working_oomp
        working_oomp.main()
    if kwargs.pop("run_scad", True):
        import working_scad
        return working_scad.main(**kwargs)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--filter", default="", help="Substring of the verbose OOMP ID")
    parser.add_argument("--generate-stl", action="store_true")
    parser.add_argument("--modes", nargs="+", default=["3dpr", "true"], choices=["3dpr", "true"])
    parser.add_argument("--layout", choices=["print", "assembled", "exploded", "lower", "upper", "section"])
    arguments = vars(parser.parse_args())
    if arguments["layout"] is None:
        arguments.pop("layout")
    main(**arguments)
