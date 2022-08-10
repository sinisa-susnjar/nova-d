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

module nova.asteroid;

public import nova.ln_types;

extern (C) {

    /*! \defgroup asteroid Asteroids
     *
     * Functions relating to Asteroids.
     *
     * All angles are expressed in degrees.
     */

    /*!
     * \fn double ln_get_asteroid_mag(double JD, struct ln_ell_orbit *orbit, double H, double G)
     * \brief Calculate the visual magnitude of an asteroid.
     */
    @safe @nogc double ln_get_asteroid_mag(double JD, ln_ell_orbit *orbit,
            double H, double G) pure nothrow;

    /*! \fn double ln_get_asteroid_sdiam_km(double H, double A)
     * \brief Calculate the semi-diameter of an asteroid in km.
     */
    @safe @nogc double ln_get_asteroid_sdiam_km(double H, double A) pure nothrow;

    /*! \fn double ln_get_asteroid_sdiam_arc(double JD, struct ln_ell_orbit *orbit, double H, double A)
     * \brief Calculate the semi-diameter of an asteroid in arc seconds.
     */
    @safe @nogc double ln_get_asteroid_sdiam_arc(double JD,
            ln_ell_orbit *orbit, double H, double A) pure nothrow;

}
