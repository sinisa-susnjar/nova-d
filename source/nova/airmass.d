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
 *  Copyright (C) 2000 - 2005 Petr Kubanek
 *  Copyright (C) 2011 Petr Kubanek, Institute of Physics <kubanek@fzu.cz>
 */

module nova.airmass;

import std.math;
import nova.airmass;
import nova.utility;

/*
** Airmass
*/

/*! \fn double ln_get_airmass (double alt, double airmass_scale)
* \param alt            Altitude in degrees
* \param airmass_scale  Airmass scale - usually 750.
* \return  Airmass for give altitude.
*/
double ln_get_airmass(double alt, double airmass_scale)
{
    double a;

    a = airmass_scale * sin(ln_deg_to_rad(alt));
    return sqrt(a * a + 2 * airmass_scale + 1) - a;
}

unittest {
    auto res = ln_get_airmass(90, 750.0);
    assert(res == 1, "(Airmass) Airmass at Zenith");

}

unittest {
    import std.conv : to;
    auto res = ln_get_airmass(10, 750.0);
    assert(fabs(res - 5.64) < 0.1, "(Airmass) Airmass at 10 degrees altitude " ~ to!string(res));
}

/*! \fn double ln_get_alt_from_airmass (double X, double airmass_scale)
 * \param X              Airmass
 * \param airmass_scale  Airmass scale - usually 750.
 * \return  Altitude for give airmass.
 */
double ln_get_alt_from_airmass(double X, double airmass_scale)
{
    return ln_rad_to_deg(asin((2 * airmass_scale + 1 - X * X) /
                (2 * X * airmass_scale)));
}

unittest {
    auto res = ln_get_alt_from_airmass(1, 750.0);
    assert(res == 90, "(Airmass) Altitude at airmass 1");
}

unittest {
    import std.format : format;
    for (double x = -10; x < 90; x += 10.54546456) {
        auto res = ln_get_alt_from_airmass(ln_get_airmass(x, 750.0), 750.0);
        assert(fabs(res - x) < 0.000000001, "(Airmass) Altitude->Airmass->Altitude at 10 degrees "
                ~ format("%.12f", res) ~ " != " ~ format("%.12f", x));
    }
}
