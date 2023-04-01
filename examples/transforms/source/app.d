/*
This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

Copyright 2004 Liam Girdwood
*/

import std.stdio;

import nova.transform;
import nova.julian_day;
import nova.utility;
import nova.ln_types;

/*
 * Do some RA/DEC <--> ALT/AZ conversions for Alnilam
 * in Leon (Spain) on 25/4/2004
 */
int main (string[] args)
{
    lnh_equ_posn hobject, hequ;
    lnh_lnlat_posn hobserver;
    ln_equ_posn object, equ;
    ln_hrz_posn hrz;
    lnh_hrz_posn hhrz;
    ln_lnlat_posn observer;
    ln_date date;
    double JD;

    /*
     * observers position
     * longitude is measured positively eastwards
     * i.e. Long 5d36m30W (Leon, Spain) = 354d24m30
     * Lat for Leon = Lat 42d35m40 N
     */
    hobserver.lng.degrees = cast(ushort)-5;
    hobserver.lng.minutes = 36;
    hobserver.lng.seconds = 30.0;
    hobserver.lat.degrees = 42;
    hobserver.lat.minutes = 35;
    hobserver.lat.seconds = 40.0;

    /* Alnilam */
    hobject.ra.hours = 5;
    hobject.ra.minutes = 36;
    hobject.ra.seconds = 27.0;
    hobject.dec.neg = 1;
    hobject.dec.degrees = 1;
    hobject.dec.minutes = 12;
    hobject.dec.seconds = 0.0;

    /* UT date and time */
    date.years = 2004;
    date.months = 4;
    date.days = 25;
    date.hours = 12;
    date.minutes = 18;
    date.seconds = 49.0;

    JD = ln_get_julian_day(date);
    ln_hequ_to_equ(hobject, object);
    ln_hlnlat_to_lnlat(hobserver, observer);

    ln_get_hrz_from_equ(object, observer, JD, hrz);
    writef("(Alnilam) Equ to Horiz ALT %f\n", hrz.alt);
    writef("(Alnilam) Equ to Horiz AZ %f\n", hrz.az);

    ln_hrz_to_hhrz(hrz, hhrz);
    writef("ALT %d:%d:%f  AZ %d:%d:%f\n",
            hhrz.alt.degrees, hhrz.alt.minutes, hhrz.alt.seconds,
            hhrz.az.degrees, hhrz.az.minutes, hhrz.az.seconds);

    ln_get_equ_from_hrz (hrz, observer, JD, equ);
    writef("(Alnilam) Horiz to Equ RA %f\n", equ.ra);
    writef("(Alnilam) Horiz to Equ DEC %f\n", equ.dec);

    ln_equ_to_hequ(equ, hequ);
    writef("RA %d:%d:%f  DEC %d:%d:%f\n",
            hequ.ra.hours, hequ.ra.minutes, hequ.ra.seconds,
            hequ.dec.degrees, hequ.dec.minutes, hequ.dec.seconds);

    return 0;
}
