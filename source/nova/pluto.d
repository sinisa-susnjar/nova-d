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

module nova.pluto;

public import nova.ln_types;

extern (C) {

    /*! \defgroup pluto Pluto
     *
     * Functions relating to the planet Pluto.
     *
     * All angles are expressed in degrees.
     */

    /*! \fn double ln_get_pluto_sdiam(double JD)
     * \brief Calculate the semidiameter of Pluto in arc seconds.
     * \ingroup pluto
     */
    @safe @nogc double ln_get_pluto_sdiam(double JD) pure nothrow;

    /*! \fn double ln_get_pluto_rst(double JD, ln_lnlat_posn *observer, ln_rst_time *rst);
     * \brief Calculate the time of rise, set and transit for Pluto.
     * \ingroup pluto
     */
    @safe @nogc int ln_get_pluto_rst(double JD, ln_lnlat_posn *observer,
            ln_rst_time *rst) pure nothrow;

    /*! \fn void ln_get_pluto_helio_coords(double JD, ln_helio_posn *position);
     * \brief Calculate Pluto's heliocentric coordinates.
     * \ingroup pluto
     */
    /* Chapter 37 Pg 263  */
    @safe @nogc void ln_get_pluto_helio_coords(double JD,
            ln_helio_posn *position) pure nothrow;

    /*! \fn void ln_get_pluto_equ_coords(double JD, ln_equ_posn *position);
     * \brief Calculate Pluto's equatorial coordinates.
     * \ingroup pluto
     */
    /* Chapter 37 */
    @safe @nogc void ln_get_pluto_equ_coords(double JD,
            ln_equ_posn *position) pure nothrow;

    /*! \fn double ln_get_pluto_earth_dist(double JD);
     * \brief Calculate the distance between Pluto and the Earth.
     * \ingroup pluto
     * \return distance in AU
     */
    /* Chapter 37 */
    @safe @nogc double ln_get_pluto_earth_dist(double JD) pure nothrow;

    /*! \fn double ln_get_pluto_solar_dist(double JD);
     * \brief Calculate the distance between Pluto and the Sun.
     * \ingroup pluto
     * \return Distance in AU
     */
    /* Chapter 37 */
    @safe @nogc double ln_get_pluto_solar_dist(double JD) pure nothrow;

    /*! \fn double ln_get_pluto_magnitude(double JD);
     * \brief Calculate the visible magnitude of Pluto
     * \ingroup pluto
     * \return Visible magnitude of Pluto.
     */
    /* Chapter 41 */
    @safe @nogc double ln_get_pluto_magnitude(double JD) pure nothrow;

    /*! \fn double ln_get_pluto_disk(double JD);
     * \brief Calculate the illuminated fraction of Pluto's disk
     * \ingroup pluto
     * \return Illuminated fraction of Pluto's disk
     */
    /* Chapter 41 */
    @safe @nogc double ln_get_pluto_disk(double JD) pure nothrow;

    /*! \fn double ln_get_pluto_phase(double JD);
     * \brief Calculate the phase angle of Pluto.
     * \ingroup pluto
     * \return Phase angle of Pluto (degrees).
     */
    /* Chapter 41 */
    @safe @nogc double ln_get_pluto_phase(double JD) pure nothrow;

    /*! \fn void ln_get_pluto_rect_helio(double JD, ln_rect_posn *position)
     * \ingroup pluto
     * \brief Calculate Plutos rectangular heliocentric coordinates.
     */
    @safe @nogc void ln_get_pluto_rect_helio(double JD,
            ln_rect_posn *position) pure nothrow;

}
