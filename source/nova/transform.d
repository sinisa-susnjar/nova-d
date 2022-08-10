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

module nova.transform;

public import nova.ln_types;

extern (C) {

/*! \defgroup transform Transformation of Coordinates
*
* Transformations from one coordinate system to another.
*/

/*! \fn void ln_get_hrz_from_equ(ln_equ_posn *object, ln_lnlat_posn *observer, double JD, ln_hrz_posn *position);
* \brief Calculate horizontal coordinates from equatorial coordinates
* \ingroup transform
*/
/* Use get_mean_sidereal_time, get_hrz_from_equ_siderealtime */
@safe @nogc void ln_get_hrz_from_equ(ln_equ_posn *object,
	ln_lnlat_posn *observer, double JD, ln_hrz_posn *position) pure nothrow;

/*! \fn void ln_get_hrz_from_equ_sidereal_time(ln_equ_posn *object, ln_lnlat_posn *observer, double sidereal_time, ln_hrz_posn *position);
* \brief Calculate horizontal coordinates from equatorial coordinates,
* using mean sidereal time.
* \ingroup transform
*/
/* Equ 12.5,12.6 pg 88 */
@safe @nogc void ln_get_hrz_from_equ_sidereal_time(ln_equ_posn *object,
	ln_lnlat_posn *observer, double sidereal,
	ln_hrz_posn *position) pure nothrow;

/*! \fn void ln_get_equ_from_ecl(ln_lnlat_posn *object, double JD, ln_equ_posn *position);
* \brief Calculate equatorial coordinates from ecliptical coordinates
* \ingroup transform
*/
/* Equ 12.3, 12.4 pg 89 */
@safe @nogc void ln_get_equ_from_ecl(ln_lnlat_posn *object,
	double JD, ln_equ_posn *position) pure nothrow;

/*! \fn void ln_get_ecl_from_equ(ln_equ_posn *object, double JD, ln_lnlat_posn *position);
* \brief Calculate ecliptical coordinates from equatorial coordinates
* \ingroup transform
*/
/* Equ 12.1, 12.2 Pg 88 */
@safe @nogc void ln_get_ecl_from_equ(ln_equ_posn *object, double JD,
	ln_lnlat_posn *position) pure nothrow;

/*! \fn void ln_get_equ_from_hrz(ln_hrz_posn *object, ln_lnlat_posn *observer, double JD, ln_equ_posn *position);
* \brief Calculate equatorial coordinates from horizontal coordinates
* \ingroup transform
*/
/* Pg 89 */
@safe @nogc void ln_get_equ_from_hrz(ln_hrz_posn *object,
	ln_lnlat_posn *observer, double JD, ln_equ_posn *position) pure nothrow;

/*! \fn void ln_get_rect_from_helio(ln_helio_posn *object, ln_rect_posn *position);
* \brief Calculate geocentric coordinates from heliocentric coordinates
* \ingroup transform
*/
/* Pg ?? */
@safe @nogc void ln_get_rect_from_helio(ln_helio_posn *object,
	ln_rect_posn *position) pure nothrow;

/*! \fn void ln_get_ecl_from_rect(ln_rect_posn *rect, ln_lnlat_posn *posn)
* \ingroup transform
* \brief Transform an objects rectangular coordinates into ecliptical coordinates.
*/
/* Equ 33.2
*/
@safe @nogc void ln_get_ecl_from_rect(ln_rect_posn *rect,
	ln_lnlat_posn *posn) pure nothrow;

/*! \fn void ln_get_equ_from_gal(ln_gal_posn *gal, ln_equ_posn *equ)
* \ingroup transform
* \brief Transform an object galactic coordinates into equatorial coordinates.
*/
/* Pg 94 */
@safe @nogc void ln_get_equ_from_gal(ln_gal_posn *gal,
	ln_equ_posn *equ) pure nothrow;

/*! \fn void ln_get_equ2000_from_gal(ln_gal_posn *gal, ln_equ_posn *equ)
* \ingroup transform
* \brief Transform an object galactic coordinate into J2000 equatorial coordinates.
*/
@safe @nogc void ln_get_equ2000_from_gal(ln_gal_posn *gal,
	ln_equ_posn *equ) pure nothrow;

/*! \fn void ln_get_gal_from_equ(ln_equ_posn *equ, ln_gal_posn *gal)
* \ingroup transform
* \brief Transform an object equatorial coordinates into galactic coordinates.
*/
/* Pg 94 */
@safe @nogc void ln_get_gal_from_equ(ln_equ_posn *equ,
	ln_gal_posn *gal) pure nothrow;

/*! \fn void ln_get_gal_from_equ2000(ln_equ_posn *equ, ln_gal_posn *gal)
* \ingroup transform
* \brief Transform an object J2000 equatorial coordinates into galactic coordinates.
*/
@safe @nogc void ln_get_gal_from_equ2000(ln_equ_posn *equ,
	ln_gal_posn *gal) pure nothrow;

}
