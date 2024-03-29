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
 *  Copyright (C) 2009 Petr Kubanek
 */

module nova.heliocentric_time;

import std.math;

import nova.nutation;
import nova.earth;
import nova.utility;
import nova.ln_types;

extern (C) {

/*! \fn double ln_get_heliocentric_time_diff(double JD, struct ln_equ_posn *object)
* \param JD Julian day
* \param object Pointer to object (RA, DEC) for which heliocentric correction will be caculated
*
* \return Heliocentric correction in fraction of day
*
* Calculate heliocentric corection for object at given coordinates and on given
* date.
*
* Due to the finite speed of light, events outside of the solar system are seen
* at different times within the solar system depending on the observer's position.
* This function corrects for that, converting a time at the Earth to the time
* at the center of the solar system.
*
* For example, an event happening overhead at midnight is seen at the Earth
* roughly eight minutes before it's seen at the Sun. Given the date, and
* the equatorial position of the object, this function returns the difference
* expressed in Julian days.
*
* See [Wikipedia](https://en.wikipedia.org/wiki/Heliocentric_Julian_Day)
*/
@nogc double ln_get_heliocentric_time_diff(double JD, const ref ln_equ_posn object) nothrow
{
	double theta, ra, dec, c_dec, obliq;
	ln_nutation nutation;
	ln_helio_posn earth;

	ln_get_nutation(JD, nutation);
	ln_get_earth_helio_coords(JD, earth);

	theta = ln_deg_to_rad(ln_range_degrees(earth.L + 180));
	ra = ln_deg_to_rad(object.ra);
	dec = ln_deg_to_rad(object.dec);
	c_dec = cos(dec);
	obliq = ln_deg_to_rad(nutation.ecliptic);

	/* L.Binnendijk Properties of Double Stars,
	 * Philadelphia, University of Pennselvania Press, pp. 228-232, 1960 */
	return -0.0057755 * earth.R *
		(cos(theta) * cos(ra) * c_dec
		+ sin(theta) * (sin(obliq) * sin(dec) + cos(obliq) * c_dec * sin(ra)));
}

}
