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


A simple example showing some solar calculations.

*/

import std.stdio;
import nova.solar;
import nova.julian_day;
import nova.rise_set;
import nova.transform;

static void print_date (string title, ln_zonedate *date)
{
	writef("\n%s\n",title);
	writef(" Year    : %d\n", date.years);
	writef(" Month   : %d\n", date.months);
	writef(" Day     : %d\n", date.days);
	writef(" Hours   : %d\n", date.hours);
	writef(" Minutes : %d\n", date.minutes);
	writef(" Seconds : %f\n", date.seconds);
}

int main (string[] args)
{
	ln_equ_posn equ;
	ln_rst_time rst;
	ln_zonedate rise, set, transit;
	ln_lnlat_posn observer;
	ln_helio_posn pos;
	double JD;

	/* observers location (Edinburgh), used to calc rst */
	observer.lat = 55.92; /* 55.92 N */
	observer.lng = -3.18; /* 3.18 W */

	/* get Julian day from local time */
	JD = ln_get_julian_from_sys();
	writef("JD %f\n", JD);

	/* geometric coordinates */
	ln_get_solar_geom_coords(JD, &pos);
	writef("Solar Coords longitude (deg) %f\n", pos.L);
	writef("             latitude (deg) %f\n", pos.B);
	writef("             radius vector (AU) %f\n", pos.R);

	/* ra, dec */
	ln_get_solar_equ_coords(JD, &equ);
	writef("Solar Position RA %f\n", equ.ra);
	writef("               DEC %f\n", equ.dec);

	/* rise, set and transit */
	if (ln_get_solar_rst(JD, &observer, &rst) != 0)
		writef("Sun is circumpolar\n");
	else {
		ln_get_local_date(rst.rise, &rise);
		ln_get_local_date(rst.transit, &transit);
		ln_get_local_date(rst.set, &set);
		print_date("Rise", &rise);
		print_date("Transit", &transit);
		print_date("Set", &set);
	}

	return 0;
}
