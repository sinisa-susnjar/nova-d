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

module nova.mars;

public import nova.ln_types;

/*! \defgroup mars Mars
*
* Functions relating to the planet Mars.
*
* All angles are expressed in degrees.
*/

extern (C) {

    /*! \fn double ln_get_mars_sdiam(double JD)
     * \brief Calculate the semidiameter of Mars in arc seconds.
     * \ingroup mars
     */
    @safe @nogc double ln_get_mars_sdiam(double JD) pure nothrow;

    /*! \fn double ln_get_mars_rst(double JD, struct ln_lnlat_posn *observer, struct ln_rst_time *rst);
     * \brief Calculate the time of rise, set and transit for Mars.
     * \ingroup mars
     */
    @safe @nogc int ln_get_mars_rst(double JD, ln_lnlat_posn *observer,
            ln_rst_time *rst) pure nothrow;

    /*! \fn void ln_get_mars_helio_coords(double JD, struct ln_helio_posn *position);
     * \brief Calculate Mars heliocentric coordinates
     * \ingroup mars
     */
    /* Chapter 31 Pg 206-207 Equ 31.1 31.2 , 31.3 using VSOP 87 */
    @safe @nogc void ln_get_mars_helio_coords(double JD,
            ln_helio_posn *position) pure nothrow;

    /*! \fn void ln_get_mars_equ_coords(double JD, struct ln_equ_posn *position);
     * \brief Calculate Mars equatorial coordinates
     * \ingroup mars
     */
    /* Chapter 31 Pg 206-207 Equ 31.1 31.2 , 31.3 using VSOP 87 */
    @safe @nogc void ln_get_mars_equ_coords(double JD,
            ln_equ_posn *position) pure nothrow;

    /*! \fn double ln_get_mars_earth_dist(double JD);
     * \brief Calculate the distance between Mars and the Earth.
     * \ingroup mars
     * \return Distance in AU
     */
    /* Chapter ?? */
    @safe @nogc double ln_get_mars_earth_dist(double JD) pure nothrow;

    /*! \fn double ln_get_mars_solar_dist(double JD);
     * \brief Calculate the distance between Mars and the Sun.
     * \ingroup mars
     * \return Distance in AU
     */
    /* Chapter ?? */
    @safe @nogc double ln_get_mars_solar_dist(double JD) pure nothrow;

    /*! \fn double ln_get_mars_magnitude(double JD);
     * \brief Calculate the visible magnitude of Mars
     * \ingroup mars
     * \return Visible magnitude of Mars
     */
    /* Chapter ?? */
    @safe @nogc double ln_get_mars_magnitude(double JD) pure nothrow;

    /*! \fn double ln_get_mars_disk(double JD);
     * \brief Calculate the illuminated fraction of Mars disk
     * \ingroup mars
     * \return Illuminated fraction of Mars disk
     */
    /* Chapter 41 */
    @safe @nogc double ln_get_mars_disk(double JD) pure nothrow;

    /*! \fn double ln_get_mars_phase(double JD);
     * \brief Calculate the phase angle of Mars.
     * \ingroup mars
     * \return Phase angle of Mars (degrees)
     */
    /* Chapter 41 */
    @safe @nogc double ln_get_mars_phase(double JD) pure nothrow;

    /*! \fn void ln_get_mars_rect_helio(double JD, struct ln_rect_posn *position)
     * \ingroup mars
     * \brief Calculate Mars rectangular heliocentric coordinates.
     */
    @safe @nogc void ln_get_mars_rect_helio(double JD,
            ln_rect_posn *position) pure nothrow;

}
