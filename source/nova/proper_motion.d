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
 *  Copyright (C) 2000 - 2005 Liam Girdwood <lgirdwood@gmail.com>
 */

module nova.proper_motion;

import nova.utility;
import nova.ln_types;

extern (C) {

/*
** Proper Motion.
*/

/*! \fn void ln_get_equ_pm(struct ln_equ_posn *mean_position, struct ln_equ_posn *proper_motion, double JD, struct ln_equ_posn *position)
* \param mean_position Mean position of object.
* \param proper_motion Annual Proper motion of object.
* \param JD Julian Day.
* \param position Pointer to store new object position.
*
* Calculate a stars equatorial coordinates from it's mean coordinates (J2000.0)
* with the effects of proper motion for a given Julian Day.
*/
/* Example 20.b pg 126
*/
@nogc void ln_get_equ_pm(const ref ln_equ_posn mean_position,
	const ref ln_equ_posn proper_motion, double JD, ref ln_equ_posn position) nothrow
{
	ln_get_equ_pm_epoch (mean_position, proper_motion, JD, JD2000, position);
}

/*!
* \param mean_position Mean position of object.
* \param proper_motion Annual Proper motion of object.
* \param JD Julian Day.
* \param epoch_JD Mean position epoch in JD
* \param position Pointer to store new object position.
*
* Calculate a stars equatorial coordinates from it's mean coordinates and epoch
* with the effects of proper motion for a given Julian Day.
*/
/* Example 20.b, pg 126
*/
@nogc void ln_get_equ_pm_epoch(const ref ln_equ_posn mean_position,
	const ref ln_equ_posn proper_motion, double JD, double epoch_JD,
	ref ln_equ_posn position) nothrow
{
	real T;

	T = (JD - epoch_JD) / 365.25;

	/* calc proper motion */
	position.ra = mean_position.ra + T * proper_motion.ra;
	position.dec = mean_position.dec + T * proper_motion.dec;

	/* change to degrees */
	position.ra = ln_range_degrees(position.ra);
}

}
