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

module nova.comet;

public import nova.ln_types;

extern (C) {

/*! \defgroup comet Comets
*
* Functions relating to Comets.
*
* All angles are expressed in degrees.
*/

/*!
* \fn double ln_get_ell_comet_mag(double JD, struct ln_ell_orbit *orbit, double g, double k)
* \ingroup comet
* \brief Calculate the visual magnitude of a comet in an elliptic orbit.
*/
@safe @nogc double ln_get_ell_comet_mag(double JD,
	ln_ell_orbit *orbit, double g, double k) pure nothrow;

/*!
* \fn double ln_get_par_comet_mag(double JD, struct ln_par_orbit *orbit, double g, double k)
* \ingroup comet
* \brief Calculate the visual magnitude of a comet in a parabolic orbit.
*/
@safe @nogc double ln_get_par_comet_mag(double JD,
	ln_par_orbit *orbit, double g, double k) pure nothrow;

}
