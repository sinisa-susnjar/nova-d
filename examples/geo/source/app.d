// A simple example showing geocentric planetary positions.

import std.string : capitalize;
import std.stdio : writefln;
import std.datetime : SysTime;
import nova;

void main(string[] args) {
    /* get Julian day from local time */
    auto JD = ln_get_julian_from_sys();

    if (args.length == 2) {
        writefln("date: %s", args[1]);
        auto dt = SysTime.fromISOExtString(args[1]);
        auto t = dt.toUnixTime();
        JD = ln_get_julian_from_timet(t);
    }

    static foreach (p; ["solar","mercury","venus","lunar","mars","jupiter","saturn","uranus","neptune","pluto"]) {{
        /* RA, DEC */
        ln_equ_posn equ;
        mixin("ln_get_" ~ p ~ "_equ_coords(JD, equ);");

        /* Earth dist */
        static if (p == "solar")
            auto earthDist = ln_get_earth_solar_dist(JD);
        else static if (p == "lunar")
            auto earthDist = ln_get_lunar_long_asc_node(JD);
        else
            mixin("auto earthDist = ln_get_" ~ p ~ "_earth_dist(JD);");

        /* Sun dist */
        auto sunDist = 0.0;
        static if (p == "lunar")
            sunDist = ln_get_earth_solar_dist(JD);
        else static if (p != "solar")
            mixin("sunDist = ln_get_" ~ p ~ "_solar_dist(JD);");

        writefln("%10s RA %10.6f Dec %10.6f Sun dist %10.6f Earth dist %10.6f",
                capitalize(p), equ.ra, equ.dec, sunDist, earthDist);
    }}
}
