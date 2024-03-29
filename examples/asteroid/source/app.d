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


A simple example showing the asteroid Pallas.

*/

import std.stdio;

import nova.asteroid;
import nova.julian_day;
import nova.rise_set;
import nova.transform;
import nova.elliptic_motion;

/* just prints the date */
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
    ln_rst_time rst;
    ln_zonedate rise, set, transit;
    ln_lnlat_posn observer;
    ln_hrz_posn hrz;
    ln_ell_orbit orbit;
    ln_rect_posn posn;
    double JD, M_JD;
    double l,V,dist;
    ln_equ_posn equ_posn;
    double H, G;
    double mag, elong, ph;
    char* M_epoch = cast(char*)"K036A";

    /* observers location (Edinburgh), used to calc rst */
    observer.lat = 55.92; /* 55.92 N */
    observer.lng = -3.18; /* 3.18 W */

    /* get Julian day from local time */
    JD = ln_get_julian_from_sys();
    writef("JD (sys) %f\n", JD);

    /* Pallas orbital parameters
     * Taken from MPCORB.DAT
     * 00002    4.13  0.11 K036A 260.69458  310.45917  173.16479
     * 34.84989  0.2299839  0.21343771   2.7730346    MPC 24084
     * 5482  63 1839-1993 0.55 M-c 28  Bowell     0000     (2) Pallas
     */
    orbit.a = 2.7730346;
    orbit.e = 0.2299839;
    orbit.i = 34.84989;
    orbit.omega =  173.16479;
    orbit.w = 310.45917;
    orbit.n =0.21343771;
    H = 4.13;
    G = 0.11;

    /* calc last passage in Perihelion, in julian day  */
    M_JD = ln_get_julian_from_mpc(M_epoch);
    orbit.JD = ln_get_ell_last_perihelion (M_JD, 260.69458, orbit.n);
    writef("JD (Perihelion) %f\n", orbit.JD);

    /* calc the earth centered position */
    ln_get_ell_geo_rect_posn(orbit, JD, posn);
    writef("(Geocentric Rect Coords X) for Pallas   %f\n", posn.X);
    writef("(Geocentric Rect Coords Y) for Pallas   %f\n", posn.Y);
    writef("(Geocentric Rect Coords Z) for Pallas   %f\n", posn.Z);

    /* calc the sun centered position */
    ln_get_ell_helio_rect_posn(orbit, JD, posn);
    writef("(Heliocentric Rect Coords X) for Pallas   %f\n", posn.X);
    writef("(Heliocentric Rect Coords Y) for Pallas   %f\n", posn.Y);
    writef("(Heliocentric Rect Coords Z) for Pallas   %f\n", posn.Z);

    /* get the RA and Dec */
    ln_get_ell_body_equ_coords(JD, orbit, equ_posn);
    writef("(RA) for Pallas   %f\n", equ_posn.ra);
    writef("(Dec) for Pallas   %f\n", equ_posn.dec);

    /* get Alt, Az */
    ln_get_hrz_from_equ(equ_posn, observer, JD, hrz);
    writef("Az %f\n",hrz.az);
    writef("Alt %f\n", hrz.alt);

    /* orbit length */
    l = ln_get_ell_orbit_len(orbit);
    writef("(Orbit Length) for Pallas in AU   %f\n", l);

    /* orbit velocities */
    V = ln_get_ell_orbit_pvel(orbit);
    writef("(Orbit Perihelion Vel) for Pallas in kms   %f\n", V);
    V = ln_get_ell_orbit_avel(orbit);
    writef("(Orbit Aphelion Vel) for Pallas in kms   %f\n", V);
    V = ln_get_ell_orbit_vel(JD, orbit);
    writef("(Orbit Vel JD) for Pallas in kms   %f\n", V);

    /* earth and solar distance */
    dist = ln_get_ell_body_solar_dist(JD, orbit);
    writef("Solar Dist (AU)  : %f\n", dist);
    dist = ln_get_ell_body_earth_dist(JD, orbit);
    writef("Earth Dist (AU)  : %f\n", dist);

    /* phase angle, elongation */
    ph = ln_get_ell_body_phase_angle(JD, orbit);
    writef("Phase angle      : %f\n",ph);
    elong = ln_get_ell_body_elong(JD, orbit);
    writef("Elongation       : %f\n",elong);

    /* magnitude */
    mag = ln_get_asteroid_mag(JD, orbit, H, G);
    writef("Magnitude        : %f\n", mag);

    /* rise, set and transit time */
    if (ln_get_ell_body_rst(JD, observer, orbit, rst) != 0)
        writef("Pallas is circumpolar\n");
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
