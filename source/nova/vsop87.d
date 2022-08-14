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
 *  Some functions in this file use the VSOP87 solution by
 *  Messrs. Bretagnon and Francou.
 *
 *  Copyright (C) 2000 - 2005 Liam Girdwood <lgirdwood@gmail.com>
 */

module nova.vsop87;

import std.math;
import nova.vsop87;
import nova.utility;

public import nova.ln_types;

struct ln_vsop
{
    double A;
    double B;
    double C;
}


double ln_calc_series(const ln_vsop[] data, double t)
{
	double value = 0.0;

	foreach (d; data)
		value += d.A * cos(d.B + d.C * t);

	return value;
}


/*! \fn void ln_vsop87_to_fk5(struct ln_helio_posn *position, double JD)
* \param position Position to transform.
* \param JD Julian day
*
* Transform from VSOP87 to FK5 reference frame.
*/
/* Equation 31.3 Pg 207.
*/
void ln_vsop87_to_fk5(ln_helio_posn *position, double JD)
{
	double LL, cos_LL, sin_LL, T, delta_L, delta_B, B;

	/* get julian centuries from 2000 */
	T =(JD - 2451545.0) / 36525.0;

	LL = position.L + (- 1.397 - 0.00031 * T) * T;
	LL = ln_deg_to_rad(LL);
	cos_LL = cos(LL);
	sin_LL = sin(LL);
	B = ln_deg_to_rad(position.B);

	delta_L = (-0.09033 / 3600.0) + (0.03916 / 3600.0) *
			(cos_LL + sin_LL) * tan(B);
	delta_B = (0.03916 / 3600.0) * (cos_LL - sin_LL);

	position.L += delta_L;
	position.B += delta_B;
}
