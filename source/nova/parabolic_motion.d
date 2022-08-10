/*
 *  This library is free software; you can redistribute it and/or
 *  modify it under the terms of the GNU Lesser General Public
 *  License as published by the Free Software Foundation; either
 *  version 2 of the License, or (at your option) any later version.
 *
 *  This library is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *  Lesser General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
 *
 *  Copyright (C) 2000 - 2005 Liam Girdwood
 */

module nova.parabolic_motion;

public import nova.ln_types;

extern (C) {

/*! \defgroup parabolic  Parabolic Motion
*
* Functions relating to the Parabolic motion of bodies.
*
* All angles are expressed in degrees.
*/

/*! \fn double ln_solve_barker(double q, double t);
* \brief Solve Barkers equation.
* \ingroup parabolic
*/
@safe @nogc double ln_solve_barker(double q, double t) pure nothrow;

/*! \fn double ln_get_par_true_anomaly(double q, double t);
* \ingroup parabolic
* \brief Calculate the true anomaly.
*/
@safe @nogc double ln_get_par_true_anomaly(double q, double t) pure nothrow;

/*! \fn double ln_get_par_radius_vector(double q, double t);
* \ingroup parabolic
* \brief Calculate the radius vector.
*/
@safe @nogc double ln_get_par_radius_vector(double q, double t) pure nothrow;

/*! \fn void ln_get_par_geo_rect_posn(ln_par_orbit *orbit, double JD, ln_rect_posn *posn);
* \ingroup parabolic
* \brief Calculate an objects rectangular geocentric position.
*/
@safe @nogc void ln_get_par_geo_rect_posn(ln_par_orbit *orbit,
	double JD, ln_rect_posn *posn) pure nothrow;


/*! \fn void ln_get_par_helio_rect_posn(ln_par_orbit *orbit, double JD, ln_rect_posn *posn);
* \ingroup parabolic
* \brief Calculate an objects rectangular heliocentric position.
*/
@safe @nogc void ln_get_par_helio_rect_posn(ln_par_orbit *orbit,
	double JD, ln_rect_posn *posn) pure nothrow;

/*!
* \fn void ln_get_par_body_equ_coords(double JD, ln_par_orbit *orbit, ln_equ_posn *posn)
* \ingroup parabolic
* \brief Calculate a bodies equatorial coordinates.
*/
@safe @nogc void ln_get_par_body_equ_coords(double JD,
	ln_par_orbit *orbit, ln_equ_posn *posn) pure nothrow;

/*!
* \fn double ln_get_par_body_earth_dist(double JD, ln_par_orbit *orbit)
* \ingroup parabolic
* \brief Calculate the distance between a body and the Earth.
*/
@safe @nogc double ln_get_par_body_earth_dist(double JD,
	ln_par_orbit *orbit) pure nothrow;

/*!
* \fn double ln_get_par_body_solar_dist(double JD, ln_par_orbit *orbit)
* \ingroup parabolic
* \brief Calculate the distance between a body and the Sun.
*/
@safe @nogc double ln_get_par_body_solar_dist(double JD,
	ln_par_orbit *orbit) pure nothrow;

/*! \fn double ln_get_par_body_phase_angle(double JD, ln_par_orbit *orbit);
* \ingroup parabolic
* \brief Calculate the phase angle of the body.
*/
@safe @nogc double ln_get_par_body_phase_angle(double JD,
	ln_par_orbit *orbit) pure nothrow;

/*! \fn double ln_get_par_body_elong(double JD, ln_par_orbit *orbit);
* \ingroup parabolic
* \brief Calculate the bodies elongation to the Sun.
*/
@safe @nogc double ln_get_par_body_elong(double JD,
	ln_par_orbit *orbit) pure nothrow;

/*! \fn double ln_get_par_body_rst(double JD, ln_lnlat_posn *observer, ln_par_orbit *orbit, ln_rst_time *rst);
* \brief Calculate the time of rise, set and transit for a body with a parabolic orbit.
* \ingroup parabolic
*/
@safe @nogc int ln_get_par_body_rst(double JD,
	ln_lnlat_posn *observer, ln_par_orbit *orbit,
	ln_rst_time *rst) pure nothrow;

/*! \fn double ln_get_par_body_rst_horizon(double JD, ln_lnlat_posn *observer, ln_par_orbit *orbit, double horizon, ln_rst_time *rst);
* \brief Calculate the time of rise, set and transit for a body with a parabolic orbit.
* \ingroup parabolic
*/
@safe @nogc int ln_get_par_body_rst_horizon(double JD,
	ln_lnlat_posn *observer, ln_par_orbit *orbit, double horizon,
	ln_rst_time *rst) pure nothrow;

/*! \fn double ln_get_par_body_next_rst(double JD, ln_lnlat_posn *observer, ln_par_orbit *orbit, ln_rst_time *rst);
* \brief Calculate the time of rise, set and transit for a body with an parabolic orbit.
* \ingroup parabolic
*/
@safe @nogc int ln_get_par_body_next_rst(double JD,
	ln_lnlat_posn *observer, ln_par_orbit *orbit,
	ln_rst_time *rst) pure nothrow;

/*! \fn double ln_get_par_body_next_rst_horizon(double JD, ln_lnlat_posn *observer, ln_par_orbit *orbit, double horizon, ln_rst_time *rst);
* \brief Calculate the time of rise, set and transit for a body with an parabolic orbit.
* \ingroup parabolic
*/
@safe @nogc int ln_get_par_body_next_rst_horizon(double JD,
	ln_lnlat_posn *observer, ln_par_orbit *orbit,
	double horizon, ln_rst_time *rst) pure nothrow;

/*! \fn double ln_get_par_body_next_rst_horizon_future(double JD, ln_lnlat_posn *observer, ln_par_orbit *orbit, double horizon, int day_limit, ln_rst_time *rst);
* \brief Calculate the time of rise, set and transit for a body with an parabolic orbit.
* \ingroup parabolic
*/
@safe @nogc int ln_get_par_body_next_rst_horizon_future(double JD,
	ln_lnlat_posn *observer, ln_par_orbit *orbit, double horizon,
	int day_limit, ln_rst_time *rst) pure nothrow;

}
