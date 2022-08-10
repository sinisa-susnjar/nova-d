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

module nova.rise_set;

public import nova.ln_types;

enum LN_STAR_STANDART_HORIZON = -0.5667;

extern (C) {

    /*! \defgroup rst Rise, Set, Transit
     *
     * Functions relating to an objects rise, set and transit
     *
     * All angles are expressed in degrees.
     */

    /*! \fn int ln_get_object_rst(double JD, struct ln_lnlat_posn *observer, struct ln_equ_posn *object,struct ln_rst_time *rst);
     * \brief Calculate the time of rise, set and transit for an object not orbiting the Sun.
     * \ingroup rst
     */
    @safe @nogc int ln_get_object_rst(double JD, ln_lnlat_posn *observer, ln_equ_posn *object,
            ln_rst_time *rst) pure nothrow;

    /*! \fn int ln_get_object_rst_horizon(double JD, struct ln_lnlat_posn *observer, struct ln_equ_posn *object, long double horizon, struct ln_rst_time *rst);
     * \brief Calculate the time of rise, set and transit above local horizon for
     * an object not orbiting the Sun.
     *
     */
    @safe @nogc int ln_get_object_rst_horizon(double JD, ln_lnlat_posn *observer,
            ln_equ_posn *object, real horizon, ln_rst_time *rst) pure nothrow;

    @safe @nogc int ln_get_object_rst_horizon_offset(double JD, ln_lnlat_posn *observer,
            ln_equ_posn *object, real horizon, ln_rst_time *rst, double ut_offset) pure nothrow;

    /*! \fn int ln_get_object_next_rst(double JD, struct ln_lnlat_posn *observer, struct ln_equ_posn *object, struct ln_rst_time *rst);
     * \brief Calculate the time of next rise, set and transit for an object not orbiting the Sun.
     * E.g. it's sure, that rise, set and transit will be in <JD, JD+1> range.
     * This function is not too precise, it's good to get general idea when object will rise.
     * \ingroup rst
     */
    @safe @nogc int ln_get_object_next_rst(double JD, ln_lnlat_posn *observer, ln_equ_posn *object,
            ln_rst_time *rst) pure nothrow;

    /*! \fn int ln_get_object_next_rst_horizon(double JD, struct ln_lnlat_posn *observer, struct ln_equ_posn *object, double horizon, struct ln_rst_time *rst);
     * \brief Calculate the time of next rise, set and transit for an object not orbiting the Sun.
     * E.g. it's sure, that rise, set and transit will be in <JD, JD+1> range.
     * \ingroup rst
     */
    @safe @nogc int ln_get_object_next_rst_horizon(double JD, ln_lnlat_posn *observer, ln_equ_posn *object,
            double horizon, ln_rst_time *rst) pure nothrow;

    alias get_equ_body_coords_t = void function(double, ln_equ_posn *) pure nothrow;

    /*! \fn int ln_get_body_rst_horizon(double JD, struct ln_lnlat_posn *observer, void (*get_equ_body_coords)(double, struct ln_equ_posn *), double horizon, struct ln_rst_time *rst);
     * \brief Calculate the time of rise, set and transit for an object a body, usually Sun, a planet or Moon.
     * \ingroup rst
     */
    @safe @nogc int ln_get_body_rst_horizon(double JD, ln_lnlat_posn *observer, get_equ_body_coords_t get_equ_body_coords,
            double horizon, ln_rst_time *rst) pure nothrow;

    @safe @nogc int ln_get_body_rst_horizon_offset(double JD, ln_lnlat_posn *observer,
            get_equ_body_coords_t get_equ_body_coords, double horizon, ln_rst_time *rst,
            double ut_offset) pure nothrow;

    /*! \fn int ln_get_body_next_rst_horizon(double JD, struct ln_lnlat_posn *observer, void (*get_equ_body_coords)(double, struct ln_equ_posn *), double horizon, struct ln_rst_time *rst);
     * \brief Calculate the time of next  rise, set and transit for an object a body, usually Sun, a planet or Moon.
     * E.g. it's sure, that rise, set and transit will be in <JD, JD+1> range.
     * \ingroup rst
     */
    @safe @nogc int ln_get_body_next_rst_horizon(double JD, ln_lnlat_posn *observer,
            get_equ_body_coords_t get_equ_body_coords, double horizon, ln_rst_time *rst) pure nothrow;

    /*! \fn int ln_get_body_next_rst_horizon_future(double JD, struct ln_lnlat_posn *observer, void (*get_equ_body_coords)(double, struct ln_equ_posn *), double horizon, int day_limit, struct ln_rst_time *rst);
     * \brief Calculate the time of next  rise, set and transit for an object a body, usually Sun, a planet or Moon.
     * E.g. it's sure, that rise, set and transit will be in <JD, JD+day_limit> range.
     * \ingroup rst
     */
    @safe @nogc int ln_get_body_next_rst_horizon_future(double JD, ln_lnlat_posn *observer,
            get_equ_body_coords_t get_equ_body_coords, double horizon, int day_limit,
            ln_rst_time *rst) pure nothrow;

    alias get_motion_body_coords_t = void function(double, void * orbit, ln_equ_posn *) pure nothrow;

    /*! \fn int ln_get_motion_body_rst_horizon(double JD, struct ln_lnlat_posn *observer, get_motion_body_coords_t get_motion_body_coords, double horizon, struct ln_rst_time *rst);
     * \brief Calculate the time of rise, set and transit for an object a body on elliptic, parabolic or hyperbolic orbit.
     * \ingroup rst
     */
    @safe @nogc int ln_get_motion_body_rst_horizon(double JD, ln_lnlat_posn *observer,
            get_motion_body_coords_t get_motion_body_coords, void * orbit, double horizon,
            ln_rst_time *rst) pure nothrow;

    @safe @nogc int ln_get_motion_body_rst_horizon_offset(double JD, ln_lnlat_posn *observer,
            get_motion_body_coords_t get_motion_body_coords, void * orbit, double horizon,
            ln_rst_time *rst, double offset) pure nothrow;

    /*! \fn int ln_get_motion_body_next_rst_horizon(double JD, struct ln_lnlat_posn *observer, get_motion_body_coords_t get_motion_body_coords, double horizon, struct ln_rst_time *rst);
     * \brief Calculate the time of next  rise, set and transit for an object a body on elliptic, parabolic or hyperbolic orbit.
     * E.g. it's sure, that rise, set and transit will be in <JD, JD+1> range.
     * \ingroup rst
     */
    @safe @nogc int ln_get_motion_body_next_rst_horizon(double JD, ln_lnlat_posn *observer,
            get_motion_body_coords_t get_motion_body_coords, void * orbit, double horizon,
            ln_rst_time *rst) pure nothrow;

    /*! \fn int ln_get_motion_body_next_rst_horizon_future(double JD, struct ln_lnlat_posn *observer, get_motion_body_coords_t get_motion_body_coords, double horizon, int day_limit, struct ln_rst_time *rst);
     * \brief Calculate the time of next  rise, set and transit for an object a body on elliptic, parabolic or hyperbolic orbit.
     * E.g. it's sure, that rise, set and transit will be in <JD, JD+day_limit> range.
     * \ingroup rst
     */
    @safe @nogc int ln_get_motion_body_next_rst_horizon_future(double JD, ln_lnlat_posn *observer,
            get_motion_body_coords_t get_motion_body_coords, void * orbit, double horizon, int day_limit,
            ln_rst_time *rst) pure nothrow;

}
