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

module nova.neptune;

public import nova.ln_types;

extern (C) {

/*! \defgroup neptune Neptune
*
* Functions relating to the planet Neptune.
*
* All angles are expressed in degrees.
*/

/*! \fn double ln_get_neptune_sdiam(double JD)
* \brief Calculate the semidiameter of Neptune in arc seconds.
* \ingroup neptune
*/
@safe @nogc double ln_get_neptune_sdiam(double JD) pure nothrow;

/*! \fn double ln_get_neptune_rst(double JD, ln_lnlat_posn *observer, ln_rst_time *rst);
* \brief Calculate the time of rise, set and transit for Neptune.
* \ingroup neptune
*/
@safe @nogc int ln_get_neptune_rst(double JD,
	ln_lnlat_posn *observer, ln_rst_time *rst) pure nothrow;

/*! \fn void ln_get_neptune_helio_coords(double JD, ln_helio_posn *position);
* \brief Calculate Neptune's heliocentric coordinates.
* \ingroup neptune
*/
/* Chapter 31 Pg 206-207 Equ 31.1 31.2 , 31.3 using VSOP 87 */
@safe @nogc void ln_get_neptune_helio_coords(double JD,
	ln_helio_posn *position) pure nothrow;

/*! \fn void ln_get_neptune_equ_coords(double JD, ln_equ_posn *position);
* \brief Calculate Neptune's equatorial coordinates.
* \ingroup neptune
*/
/* Chapter 31 Pg 206-207 Equ 31.1 31.2 , 31.3 using VSOP 87 */
@safe @nogc void ln_get_neptune_equ_coords(double JD,
	ln_equ_posn *position) pure nothrow;

/*! \fn double ln_get_neptune_earth_dist(double JD);
* \brief Calculate the distance between Neptune and the Earth.
* \ingroup neptune
* \return Distance in AU
*/
/* Chapter ?? */
@safe @nogc double ln_get_neptune_earth_dist(double JD) pure nothrow;

/*! \fn double ln_get_neptune_solar_dist(double JD);
* \brief Calculate the distance between Neptune and the Sun.
* \ingroup neptune
* \return Distance in AU
*/
/* Chapter ?? */
@safe @nogc double ln_get_neptune_solar_dist(double JD) pure nothrow;

/*! \fn double ln_get_neptune_magnitude(double JD);
* \brief Calculate the visible magnitude of Neptune.
* \ingroup neptune
* \return Visible magnitude of Neptune.
*/
/* Chapter ?? */
@safe @nogc double ln_get_neptune_magnitude(double JD) pure nothrow;

/*! \fn double ln_get_neptune_disk(double JD);
* \brief Calculate the illuminated fraction of Neptune's disk.
* \ingroup neptune
* \return Illuminated fraction of Neptune's disk.
*/
/* Chapter 41 */
@safe @nogc double ln_get_neptune_disk(double JD) pure nothrow;

/*! \fn double ln_get_neptune_phase(double JD);
* \brief Calculate the phase angle of Neptune.
* \ingroup neptune
* \return Phase angle of Neptune (degrees)
*/
/* Chapter 41 */
@safe @nogc double ln_get_neptune_phase(double JD) pure nothrow;

/*! \fn void ln_get_neptune_rect_helio(double JD, ln_rect_posn *position)
* \ingroup neptune
* \brief Calculate Neptunes rectangular heliocentric coordinates.
*/
@safe @nogc void ln_get_neptune_rect_helio(double JD,
	ln_rect_posn *position) pure nothrow;

}
