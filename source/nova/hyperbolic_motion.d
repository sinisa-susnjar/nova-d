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

module nova.hyperbolic_motion;

public import nova.ln_types;

extern (C) {

/*! \defgroup hyperbolic  Hyperbolic Motion
*
* Functions relating to the Hyperbolic motion of bodies.
*
* All angles are expressed in degrees.
*/

/*! \fn double ln_solve_hyp_barker(double Q1, double G, double t);
* \brief Solve Barkers equation.
* \ingroup hyperbolic
*/
@safe @nogc double ln_solve_hyp_barker(double Q1, double G, double t) pure nothrow;

/*! \fn double ln_get_hyp_true_anomaly(double q, double e, double t);
* \ingroup hyperbolic
* \brief Calculate the true anomaly.
*/
@safe @nogc double ln_get_hyp_true_anomaly(double q, double e, double t) pure nothrow;

/*! \fn double ln_get_hyp_radius_vector(double q, double e, double t);
* \ingroup hyperbolic
* \brief Calculate the radius vector.
*/
@safe @nogc double ln_get_hyp_radius_vector(double q, double e, double t) pure nothrow;

/*! \fn void ln_get_hyp_geo_rect_posn(ln_hyp_orbit *orbit, double JD, ln_rect_posn *posn);
* \ingroup hyperbolic
* \brief Calculate an objects rectangular geocentric position.
*/
@safe @nogc void ln_get_hyp_geo_rect_posn(ln_hyp_orbit *orbit,
	double JD, ln_rect_posn *posn) pure nothrow;


/*! \fn void ln_get_hyp_helio_rect_posn(ln_hyp_orbit *orbit, double JD, ln_rect_posn *posn);
* \ingroup hyperbolic
* \brief Calculate an objects rectangular heliocentric position.
*/
@safe @nogc void ln_get_hyp_helio_rect_posn(ln_hyp_orbit *orbit,
	double JD, ln_rect_posn *posn) pure nothrow;

/*!
* \fn void ln_get_hyp_body_equ_coords(double JD, ln_hyp_orbit *orbit, ln_equ_posn *posn)
* \ingroup hyperbolic
* \brief Calculate a bodies equatorial coordinates.
*/
@safe @nogc void ln_get_hyp_body_equ_coords(double JD,
	ln_hyp_orbit *orbit, ln_equ_posn *posn) pure nothrow;

/*!
* \fn double ln_get_hyp_body_earth_dist(double JD, ln_hyp_orbit *orbit)
* \ingroup hyperbolic
* \brief Calculate the distance between a body and the Earth.
*/
@safe @nogc double ln_get_hyp_body_earth_dist(double JD,
	ln_hyp_orbit *orbit) pure nothrow;

/*!
* \fn double ln_get_hyp_body_solar_dist(double JD, ln_hyp_orbit *orbit)
* \ingroup hyperbolic
* \brief Calculate the distance between a body and the Sun.
*/
@safe @nogc double ln_get_hyp_body_solar_dist(double JD,
	ln_hyp_orbit *orbit) pure nothrow;

/*! \fn double ln_get_hyp_body_phase_angle(double JD, ln_hyp_orbit *orbit);
* \ingroup hyperbolic
* \brief Calculate the phase angle of the body.
*/
@safe @nogc double ln_get_hyp_body_phase_angle(double JD,
	ln_hyp_orbit *orbit) pure nothrow;

/*! \fn double ln_get_hyp_body_elong(double JD, ln_hyp_orbit *orbit);
* \ingroup hyperbolic
* \brief Calculate the bodies elongation to the Sun.
*/
@safe @nogc double ln_get_hyp_body_elong(double JD,
	ln_hyp_orbit *orbit) pure nothrow;

/*! \fn double ln_get_hyp_body_rst(double JD, ln_lnlat_posn *observer, ln_hyp_orbit *orbit, ln_rst_time *rst);
* \brief Calculate the time of rise, set and transit for a body with a hyperbolic orbit.
* \ingroup hyperbolic
*/
@safe @nogc int ln_get_hyp_body_rst(double JD,
	ln_lnlat_posn *observer, ln_hyp_orbit *orbit,
	ln_rst_time *rst) pure nothrow;

/*! \fn double ln_get_hyp_body_rst_horizon(double JD, ln_lnlat_posn *observer, ln_hyp_orbit *orbit, double horizon, ln_rst_time *rst);
* \brief Calculate the time of rise, set and transit for a body with a hyperbolic orbit.
* \ingroup hyperbolic
*/
@safe @nogc int ln_get_hyp_body_rst_horizon(double JD,
	ln_lnlat_posn *observer, ln_hyp_orbit *orbit,
	double horizon, ln_rst_time *rst) pure nothrow;

/*! \fn double ln_get_hyp_body_next_rst(double JD, ln_lnlat_posn *observer, ln_hyp_orbit *orbit, ln_rst_time *rst);
* \brief Calculate the time of rise, set and transit for a body with an hyperbolic orbit.
* \ingroup hyperbolic
*/
@safe @nogc int ln_get_hyp_body_next_rst(double JD,
	ln_lnlat_posn *observer, ln_hyp_orbit *orbit,
	ln_rst_time *rst) pure nothrow;

/*! \fn double ln_get_hyp_body_next_rst_horizon(double JD, ln_lnlat_posn *observer, ln_hyp_orbit *orbit, double horizon, ln_rst_time *rst);
* \brief Calculate the time of rise, set and transit for a body with an hyperbolic orbit.
* \ingroup hyperbolic
*/
@safe @nogc int ln_get_hyp_body_next_rst_horizon(double JD,
	ln_lnlat_posn *observer, ln_hyp_orbit *orbit,
	double horizon, ln_rst_time *rst) pure nothrow;

/*! \fn double ln_get_hyp_body_next_rst_horizon_future(double JD, ln_lnlat_posn *observer, ln_hyp_orbit *orbit, double horizon, int day_limit, ln_rst_time *rst);
* \brief Calculate the time of rise, set and transit for a body with an hyperbolic orbit.
* \ingroup hyperbolic
*/
@safe @nogc int ln_get_hyp_body_next_rst_horizon_future(double JD,
	ln_lnlat_posn *observer, ln_hyp_orbit *orbit,
	double horizon, int day_limit, ln_rst_time *rst) pure nothrow;

}
