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
 *  Copyright (C) 2000 - 2005 Liam Girdwood  <lgirdwood@gmail.com>
 */

module nova.apparent_position;

import nova.proper_motion;
import nova.aberration;
import nova.precession;
import nova.nutation;
import nova.ln_types;

extern (C) {

/*
** Apparent place of an Object
*/

/*! \fn void ln_get_apparent_posn(struct ln_equ_posn *mean_position, struct ln_equ_posn *proper_motion, double JD, struct ln_equ_posn *position)
* \param mean_position Mean position of object, epoch J2000
* \param proper_motion Proper motion of object
* \param JD Julian Day
* \param position Pointer to store new object position
*
* Calculate the apparent equatorial position of a star from its mean equatorial position.
* This function takes into account the effects of proper motion, precession, nutation,
* annual aberration when calculating the stars apparent position. The effects of annual
* parallax and the gravitational deflection of light (Einstein effect) are NOT used
* in this calculation.
*
* This function assumes that the star's mean position is given as of J2000.
* At present, libnova does not support other epochs.
*/
@nogc void ln_get_apparent_posn(const ref ln_equ_posn mean_position,
	const ref ln_equ_posn proper_motion, double JD, ref ln_equ_posn position) nothrow
{
	ln_equ_posn proper_position;
	ln_equ_posn aberration_position;
	ln_equ_posn precession_position;

	ln_get_equ_pm(
            mean_position, proper_motion, JD, proper_position);
	ln_get_equ_aber(proper_position, JD, aberration_position);
	ln_get_equ_prec(aberration_position, JD, precession_position);
	ln_get_equ_nut(precession_position, JD, position);
}

}
