/*
This program is free software; you can redistribute it and/or modify
it under the terms of the GNU Library General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

Copyright (C) 2003 Liam Girdwood <lgirdwood@gmail.com>


A simple example showing some lunar calculations.

*/

import std.stdio;
import nova.lunar;
import nova.julian_day;
import nova.rise_set;
import nova.transform;

static void print_date(string title, const ref ln_zonedate date)
{
    writef("\n%s\n",title);
    writef(" Year    : %d\n", date.years);
    writef(" Month   : %d\n", date.months);
    writef(" Day     : %d\n", date.days);
    writef(" Hours   : %d\n", date.hours);
    writef(" Minutes : %d\n", date.minutes);
    writef(" Seconds : %f\n", date.seconds);
}

int main(string[] args)
{
    ln_rect_posn moon;
    ln_equ_posn equ;
    ln_lnlat_posn ecl;
    ln_lnlat_posn observer;
    ln_rst_time rst;
    ln_zonedate rise, transit, set;
    double JD;

    /* observers location (Edinburgh), used to calc rst */
    observer.lat = 55.92; /* 55.92 N */
    observer.lng = -3.18; /* 3.18 W */

    /* get the julian day from the local system time */
    JD = ln_get_julian_from_sys();
    writef("JD %f\n",JD);

    /* get the lunar geopcentric position in km, earth is at 0,0,0 */
    ln_get_lunar_geo_posn(JD, moon, 0);
    writef("lunar x %f  y %f  z %f\n", moon.X, moon.Y, moon.Z);

    /* Long Lat */
    ln_get_lunar_ecl_coords(JD, ecl, 0);
    writef("lunar long %f  lat %f\n", ecl.lng, ecl.lat);

    /* RA, DEC */
    ln_get_lunar_equ_coords(JD, equ);
    writef("lunar RA %f  Dec %f\n", equ.ra, equ.dec);

    /* moon earth distance */
    writef("lunar distance km %f\n", ln_get_lunar_earth_dist(JD));

    /* lunar disk, phase and bright limb */
    writef("lunar disk %f\n", ln_get_lunar_disk(JD));
    writef("lunar phase %f\n", ln_get_lunar_phase(JD));
    writef("lunar bright limb %f\n", ln_get_lunar_bright_limb(JD));

    // ln_get_lunar_opt_libr_coords(JD, ecl);
    // writef("lunar libration point long %f  lat %f\n", ecl.lng, ecl.lat);

    // ln_get_lunar_subsolar_coords(JD, ecl);
    // writef("lunar subsolar point long %f  lat %f\n", ecl.lng, ecl.lat);

    /* rise, set and transit time */
    if (ln_get_lunar_rst(JD, observer, rst) != 0)
        writef("Moon is circumpolar\n");
    else {
        ln_get_local_date(rst.rise, rise);
        ln_get_local_date(rst.transit, transit);
        ln_get_local_date(rst.set, set);
        print_date("Rise", rise);
        print_date("Transit", transit);
        print_date("Set", set);
    }

    /* rise, set and transit time */
    if (ln_get_lunar_rst(JD - 24, observer, rst) != 0)
        writef("Moon is circumpolar\n");
    else {
        ln_get_local_date(rst.rise, rise);
        ln_get_local_date(rst.transit, transit);
        ln_get_local_date(rst.set, set);
        print_date("Rise", rise);
        print_date("Transit", transit);
        print_date("Set", set);
    }

    /* rise, set and transit time */
    if (ln_get_lunar_rst(JD - 25, observer, rst) != 0)
        writef("Moon is circumpolar\n");
    else {
        ln_get_local_date(rst.rise, rise);
        ln_get_local_date(rst.transit, transit);
        ln_get_local_date(rst.set, set);
        print_date("Rise", rise);
        print_date("Transit", transit);
        print_date("Set", set);
    }

    return 0;
}
