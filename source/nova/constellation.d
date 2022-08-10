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
 *  Copyright (C) 2015 Petr Kubánek
 */

module nova.constellation;

public import nova.ln_types;

extern (C) {

/*!
* \defgroup constellations Celestial constellations
*/

/*! \fn const char* ln_get_constellation(struct ln_equ_posn *position)
* \ingroup constellations
* \brief Returns name of the constellation at the given position
*/
@safe @nogc const(char*) ln_get_constellation(ln_equ_posn *position) pure nothrow;

}
