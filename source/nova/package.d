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

module nova;

version(Windows) {
    import core.sys.windows.windows;
    import core.sys.windows.dll;

    mixin SimpleDllMain;
}

public enum LIBNOVA_VERSION = "0.15.0";

/*! \mainpage libnova
* \image html libnova-logo.jpg
* Celestial Mechanics, Astrometry and Astrodynamics Library
*
* \section intro Introduction
* libnova is a general purpose, double precision, Celestial Mechanics, Astrometry and Astrodynamics library.
*
* The intended audience of libnova is C / C++ programmers, astronomers and anyone else interested in calculating positions of astronomical objects or celestial mechanics.
* libnova is the calculation engine used by the <A href="http://nova.sf.net">Nova</A> project and most importantly, is free software.
*
* \section features Features
* The current version of libnova can calculate:
*
* - Aberration
* - Nutation
* - Apparent Position
* - Dynamical Time
* - Julian Day
* - Precession
* - Proper Motion
* - Sidereal Time
* - Solar Coordinates (using VSOP87)
* - Coordinate Transformations
* - Planetary Positions Mercury - Pluto (Mercury - Neptune using VSOP87)
* - Planetary Magnitude, illuminated disk and phase angle.
* - Lunar Position (using ELP82), phase angle.
* - Elliptic Motion of bodies (Asteroid + Comet positional and orbit data)
* - Asteroid + Comet magnitudes
* - Parabolic Motion of bodies (Comet positional data)
* - Orbit velocities and lengths
* - Atmospheric refraction
* - Rise, Set and Transit times.
* - Semidiameters of the Sun, Moon, Planets and asteroids.
* - Angular separation of bodies
* - Hyperbolic motion of bodies
* - Heliocentric (barycentric) time correction
*
* \section docs Documentation
* API documentation for libnova is included in the source. It can also be found in this website and an offline tarball is available <A href="http://libnova.sf.net/libnovadocs.tar.gz">here</A>.
*
* \section download Download
* The latest released version of libnova is 0.15.0
* It is available for download <A href="http://sourceforge.net/projects/libnova/files/libnova/">here.</A>
*
* \section git GIT
* The latest GIT version of libnova is available via GIT <A href="http://sourceforge.net/p/libnova/libnova/">here.</A>
*
* \section licence Licence
* libnova is released under the <A href="http://www.gnu.org">GNU</A> LGPL.
*
* \section help Help
* If you are interested in helping in the future development of libnova, then please get in touch.
* Currently, we are needing help in the folowing areas.
* - Documentation. (Not just API reference, but also astronomy info for novice users)
* - Programming (in C) astronomical solutions or algorithms.
* - Algorithms and Solutions.
*
* \section authors Authors
* libnova is maintained by <A href="mailto:lgirdwood@gmail.com">Liam Girdwood</A> and <A href="mailto:petr@kubanek.net">Petr Kubanek</A>.
*
* \section thanks Thanks
* Thanks to Jean Meeus for most of the algorithms used in this library.
* From his book "Astronomical Algorithms".
*
* Thanks to Michelle Chapront-Touze and Jean Chapront for publishing
* the Lunar Solution ELP 2000-82B.
*
* Thanks to Messrs. Bretagnon and Francou for publishing planetary
* solution VSOP87.
*
* Also thanks to Sourceforge for hosting this project. <A href="http://sourceforge.net"> <IMG src="http://sourceforge.net/sflogo.php?group_id=57697&amp;type=5" width="210" height="62" border="0" alt="SourceForge Logo"></A>
*/

public import nova.ln_types;
public import nova.julian_day;
public import nova.dynamical_time;
public import nova.sidereal_time;
public import nova.transform;
public import nova.nutation;
public import nova.aberration;
public import nova.apparent_position;
public import nova.solar;
public import nova.precession;
public import nova.proper_motion;
public import nova.mercury;
public import nova.venus;
public import nova.earth;
public import nova.mars;
public import nova.jupiter;
public import nova.saturn;
public import nova.uranus;
public import nova.neptune;
public import nova.pluto;
public import nova.vsop87;
public import nova.lunar;
public import nova.elliptic_motion;
public import nova.asteroid;
public import nova.comet;
public import nova.parabolic_motion;
public import nova.refraction;
public import nova.rise_set;
public import nova.angular_separation;
public import nova.ln_types;
public import nova.utility;
public import nova.hyperbolic_motion;
public import nova.parallax;
public import nova.airmass;
public import nova.heliocentric_time;
public import nova.constellation;
