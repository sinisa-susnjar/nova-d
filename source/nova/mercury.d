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

module nova.mercury;

public import nova.ln_types;

extern (C) {

    /*! \defgroup mercury Mercury
     *
     * Functions relating to the planet Mercury.
     *
     * All angles are expressed in degrees.
     */

    /*! \fn double ln_get_mercury_sdiam(double JD)
     * \brief Calculate the semidiameter of Mercury in arc seconds.
     * \ingroup mercury
     */
    @safe @nogc double ln_get_mercury_sdiam(double JD) pure nothrow;

    /*! \fn double ln_get_mercury_rst(double JD, ln_lnlat_posn *observer, ln_rst_time *rst);
     * \brief Calculate the time of rise, set and transit for Mercury.
     * \ingroup mercury
     */
    @safe @nogc int ln_get_mercury_rst(double JD,
            ln_lnlat_posn *observer, ln_rst_time *rst) pure nothrow;

    /*! \fn void ln_get_mercury_helio_coords(double JD, ln_helio_posn *position);
     * \brief Calculate Mercury's heliocentric coordinates
     * \ingroup mercury
     */
    /* Chapter 31 Pg 206-207 Equ 31.1 31.2 , 31.3 using VSOP 87 */
    @safe @nogc void ln_get_mercury_helio_coords(double JD,
            ln_helio_posn *position) pure nothrow;

    /*! \fn void ln_get_mercury_equ_coords(double JD, ln_equ_posn *position);
     * \brief Calculate Mercury's equatorial coordinates
     * \ingroup mercury
     */
    /* Chapter 31 Pg 206-207 Equ 31.1 31.2 , 31.3 using VSOP 87 */
    @safe @nogc void ln_get_mercury_equ_coords(double JD,
            ln_equ_posn *position) pure nothrow;

    /*! \fn double ln_get_mercury_earth_dist(double JD);
     * \brief Calculate the distance between Mercury and the Earth.
     * \ingroup mercury
     * \return Distance in AU
     */
    /* Chapter ?? */
    @safe @nogc double ln_get_mercury_earth_dist(double JD) pure nothrow;

    /*! \fn double ln_get_mercury_solar_dist(double JD);
     * \brief Calculate the distance between Mercury and the Sun in AU
     * \ingroup mercury
     * \return Distance in AU
     */
    /* Chapter ?? */
    @safe @nogc double ln_get_mercury_solar_dist(double JD) pure nothrow;

    /*! \fn double ln_get_mercury_magnitude(double JD);
     * \brief Calculate the visible magnitude of Mercury
     * \ingroup mercury
     * \return Visible magnitude of Mercury
     */
    /* Chapter ?? */
    @safe @nogc double ln_get_mercury_magnitude(double JD) pure nothrow;

    /*! \fn double ln_get_mercury_disk(double JD);
     * \brief Calculate the illuminated fraction of Mercury's disk
     * \ingroup mercury
     * \return Illuminated fraction of mercurys disk
     */
    /* Chapter 41 */
    @safe @nogc double ln_get_mercury_disk(double JD) pure nothrow;

    /*! \fn double ln_get_mercury_phase(double JD);
     * \brief Calculate the phase angle of Mercury (Sun - Mercury - Earth)
     * \ingroup mercury
     * \return Phase angle of Mercury (degrees)
     */
    /* Chapter 41 */
    @safe @nogc double ln_get_mercury_phase(double JD) pure nothrow;


    /*! \fn void ln_get_mercury_rect_helio(double JD, ln_rect_posn *position)
     * \ingroup mercury
     * \brief Calculate Mercurys rectangular heliocentric coordinates.
     */
    @safe @nogc void ln_get_mercury_rect_helio(double JD,
            ln_rect_posn *position) pure nothrow;

}
