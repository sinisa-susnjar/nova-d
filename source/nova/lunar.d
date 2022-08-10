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

module nova.lunar;

public import nova.ln_types;

enum LN_LUNAR_STANDART_HORIZON = 0.125;

extern (C) {

    /*! \defgroup lunar Lunar
     *
     * Functions relating to the Moon.
     *
     * All angles are expressed in degrees.
     */

    /*! \fn double ln_get_lunar_sdiam(double JD)
     * \brief Calculate the semidiameter of the Moon in arc seconds.
     * \ingroup lunar
     */
    @safe @nogc double ln_get_lunar_sdiam(double JD) pure nothrow;

    /*! \fn double ln_get_lunar_rst(double JD, ln_lnlat_posn *observer, ln_rst_time *rst);
     * \brief Calculate the time of rise, set and transit for the Moon.
     * \ingroup lunar
     */

    @safe @nogc int ln_get_lunar_rst(double JD, ln_lnlat_posn *observer,
            ln_rst_time *rst) pure nothrow;

    /*! \fn void ln_get_lunar_geo_posn(double JD, ln_rect_posn *moon, double precision);
     * \brief Calculate the rectangular geocentric lunar cordinates.
     * \ingroup lunar
     */
    /* ELP 2000-82B theory */
    @safe @nogc void ln_get_lunar_geo_posn(double JD, ln_rect_posn *moon,
            double precision) pure nothrow;

    /*! \fn void ln_get_lunar_equ_coords_prec(double JD, ln_equ_posn *position, double precision);
     * \brief Calculate lunar equatorial coordinates.
     * \ingroup lunar
     */
    @safe @nogc void ln_get_lunar_equ_coords_prec(double JD,
            ln_equ_posn *position, double precision) pure nothrow;

    /*! \fn void ln_get_lunar_equ_coords(double JD, ln_equ_posn *position);
     * \brief Calculate lunar equatorial coordinates.
     * \ingroup lunar
     */
    @safe @nogc void ln_get_lunar_equ_coords(double JD,
            ln_equ_posn *position) pure nothrow;

    /*! \fn void ln_get_lunar_ecl_coords(double JD, ln_lnlat_posn *position, double precision);
     * \brief Calculate lunar ecliptical coordinates.
     * \ingroup lunar
     */
    @safe @nogc void ln_get_lunar_ecl_coords(double JD,
            ln_lnlat_posn *position, double precision) pure nothrow;

    /*! \fn double ln_get_lunar_phase(double JD);
     * \brief Calculate the phase angle of the Moon.
     * \ingroup lunar
     */
    @safe @nogc double ln_get_lunar_phase(double JD) pure nothrow;

    /*! \fn double ln_get_lunar_disk(double JD);
     * \brief Calculate the illuminated fraction of the Moons disk
     * \ingroup lunar
     */
    @safe @nogc double ln_get_lunar_disk(double JD) pure nothrow;

    /*! \fn double ln_get_lunar_earth_dist(double JD);
     * \brief Calculate the distance between the Earth and the Moon.
     * \ingroup lunar
     */
    @safe @nogc double ln_get_lunar_earth_dist(double JD) pure nothrow;

    /*! \fn double ln_get_lunar_bright_limb(double JD);
     * \brief Calculate the position angle of the Moon's bright limb.
     * \ingroup lunar
     */
    @safe @nogc double ln_get_lunar_bright_limb(double JD) pure nothrow;

    /*! \fn double ln_get_lunar_long_asc_node(double JD);
     * \brief Calculate the longitude of the Moon's mean ascending node.
     * \ingroup lunar
     */
    @safe @nogc double ln_get_lunar_long_asc_node(double JD) pure nothrow;

    /*! \fn double ln_get_lunar_long_perigee(double JD);
     * \brief Calculate the longitude of the Moon's mean perigee.
     * \ingroup lunar
     */
    @safe @nogc double ln_get_lunar_long_perigee(double JD) pure nothrow;

}
