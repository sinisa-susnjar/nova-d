// A simple example showing geocentric planetary positions.

import std.stdio;
import nova;

void main() {
    /* get Julian day from local time */
    auto JD = ln_get_julian_from_sys();
    writef("JD %f\n", JD);

    static foreach (p; ["solar","mercury","venus","lunar","mars","jupiter","saturn","uranus","neptune","pluto"]) {{
        /* RA, DEC */
        ln_equ_posn equ;
        mixin("ln_get_" ~ p ~ "_equ_coords(JD, &equ);");

        /* Earth dist AU */
        static if (p == "solar")
            mixin("auto earthDist = ln_get_earth_solar_dist(JD);");
        else
            mixin("auto earthDist = ln_get_" ~ p ~ "_earth_dist(JD);");

        /* Sun Dist AU */
        auto sunDist = 0.0;
        static if (p == "lunar")
            mixin("sunDist = ln_get_earth_solar_dist(JD);");
        else static if (p != "solar")
            mixin("sunDist = ln_get_" ~ p ~ "_solar_dist(JD);");
        writef("%10s RA %10.6f Dec %10.6f Sun dist %10.6f Earth dist %10.6f\n", p, equ.ra, equ.dec, sunDist, earthDist);
    }}
}
