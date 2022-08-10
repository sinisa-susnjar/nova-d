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

module nova.angular_separation;

public import nova.ln_types;

extern (C) {

/*! \defgroup angular Angular Separation
*
* Functions relating to an the angular separation and position
* angle between 2 bodies.
*
* All angles are expressed in degrees.
*/

/*! \fn double ln_get_angular_separation(struct ln_equ_posn* posn1, struct ln_equ_posn* posn2);
* \brief Calculate the angular separation between 2 bodies
* \ingroup angular
*/
@safe @nogc double ln_get_angular_separation(ln_equ_posn *posn1, ln_equ_posn *posn2) pure nothrow;

/*! \fn double ln_get_rel_posn_angle(struct ln_equ_posn* posn1, struct ln_equ_posn* posn2);
* \brief Calculate the relative position angle between 2 bodies
* \ingroup angular
*/
@safe @nogc double ln_get_rel_posn_angle(ln_equ_posn *posn1, ln_equ_posn *posn2) pure nothrow;

}
