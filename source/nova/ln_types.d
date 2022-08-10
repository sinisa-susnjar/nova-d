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

module nova.ln_types;

// TODO ???
// #define ALIGN32 __attribute__((aligned(32)))

/* sidereal day length in seconds and days (for JD)*/
enum LN_SIDEREAL_DAY_SEC = 86_164.09;
enum LN_SIDEREAL_DAY_DAY = (LN_SIDEREAL_DAY_SEC / 86_400.0);

/* 1.1.2000 Julian Day & others */
enum JD2000 = 2_451_545.0;
enum JD2050 = 2_469_807.50;

enum B1900 = 2_415_020.3135;
enum B1950 = 2_433_282.4235;

/*!
** Date
* \struct ln_date
* \brief Human readable Date and time used by libnova
*
* This is the Human readable (easy printf) date format used
* by libnova. It's always in UTC. For local time, please use
* ln_zonedate.
*/

struct ln_date {
    int years; 		/*!< Years. All values are valid */
    int months;		/*!< Months. Valid values : 1 (January) - 12 (December) */
    int days; 		/*!< Days. Valid values 1 - 28,29,30,31 Depends on month.*/
    int hours; 		/*!< Hours. Valid values 0 - 23. */
    int minutes; 	/*!< Minutes. Valid values 0 - 59. */
    double seconds;	/*!< Seconds. Valid values 0 - 59.99999.... */
}

/*!
** Zone date
* \struct ln_zonedate
* \brief Human readable Date and time with timezone information used
* by libnova
*
* This is the Human readable (easy printf) date with timezone format
* used by libnova.
*/

struct ln_zonedate {
    int years; 		/*!< Years. All values are valid */
    int months;		/*!< Months. Valid values : 1 (January) - 12 (December) */
    int days; 		/*!< Days. Valid values 1 - 28,29,30,31 Depends on month.*/
    int hours; 		/*!< Hours. Valid values 0 - 23. */
    int minutes; 	/*!< Minutes. Valid values 0 - 59. */
    double seconds;	/*!< Seconds. Valid values 0 - 59.99999.... */
    long gmtoff;        /*!< Timezone offset. Seconds east of UTC. Valid values 0..86400 */
}

/*! \struct ln_dms
** \brief Degrees, minutes and seconds.
*
* Human readable Angle in degrees, minutes and seconds
*/

struct ln_dms {
    ushort neg;         /*!< Non zero if negative */
    ushort degrees;   	/*!< Degrees. Valid 0 - 360 */
    ushort minutes;   	/*!< Minutes. Valid 0 - 59 */
    double seconds;		/*!< Seconds. Valid 0 - 59.9999... */
}

/*! \struct ln_hms
** \brief Hours, minutes and seconds.
*
* Human readable Angle in hours, minutes and seconds
*/

struct ln_hms {
    ushort hours;		/*!< Hours. Valid 0 - 23 */
    ushort minutes;		/*!< Minutes. Valid 0 - 59 */
    double seconds;				/*!< Seconds. Valid 0 - 59.9999... */
}

/*! \struct lnh_equ_posn
** \brief Right Ascension and Declination.
*
* Human readable Equatorial Coordinates.
*/

struct lnh_equ_posn {
    ln_hms ra;	/*!< RA. Object right ascension.*/
    ln_dms dec;	/*!< DEC. Object declination */
}

/*! \struct lnh_hrz_posn
** \brief Azimuth and Altitude.
*
* Human readable Horizontal Coordinates.
*/

struct lnh_hrz_posn {
    ln_dms az;	/*!< AZ. Object azimuth. */
    ln_dms alt;	/*!< ALT. Object altitude. */
}


/*! \struct lnh_lnlat_posn
** \brief Ecliptical (or celestial) Latitude and Longitude.
*
* Human readable Ecliptical (or celestial) Longitude and Latitude.
*/

struct lnh_lnlat_posn {
    ln_dms lng; /*!< longitude. Object longitude.*/
    ln_dms lat; /*!< latitude. Object latitude */
}


/*! \struct ln_equ_posn
** \brief Equatorial Coordinates.
*
* The Right Ascension and Declination of an object.
*
* Angles are expressed in degrees.
*/

struct ln_equ_posn {
    double ra;	/*!< RA. Object right ascension in degrees.*/
    double dec;	/*!< DEC. Object declination */
}

/*! \struct ln_hrz_posn
** \brief Horizontal Coordinates.
*
* The Azimuth and Altitude of an object.
*
* Angles are expressed in degrees.
*/

struct ln_hrz_posn {
    double az;	/*!< AZ. Object azimuth. <p>
		  0 deg = South, 90 deg = West, 180 deg = Nord, 270 deg = East */
    double alt;	/*!< ALT. Object altitude. <p> 0 deg = horizon, 90 deg = zenit, -90 deg = nadir */
}


/*! \struct ln_lnlat_posn
** \brief Ecliptical (or celestial) Longitude and Latitude.
*
* The Ecliptical (or celestial) Latitude and Longitude of and object.
*
* Angles are expressed in degrees. East is positive, West negative.
*/

struct ln_lnlat_posn {
    double lng; /*!< longitude. Object longitude. */
    double lat; /*!< latitude. Object latitude */
}


/*! \struct ln_helio_posn
* \brief Heliocentric position
*
* A heliocentric position is an objects position relative to the
* centre of the Sun.
*
* Angles are expressed in degrees.
* Radius vector is in AU.
*/
struct ln_helio_posn {
	double L;	/*!< Heliocentric longitude */
	double B;	/*!< Heliocentric latitude */
	double R;	/*!< Heliocentric radius vector */
}

/*! \struct ln_rect_posn
* \brief Rectangular coordinates
*
* Rectangular Coordinates of a body. These coordinates can be either
* geocentric or heliocentric.
*
* A heliocentric position is an objects position relative to the
* centre of the Sun.
* A geocentric position is an objects position relative to the centre
* of the Earth.
*
* Position is in units of AU for planets and in units of km
* for the Moon.
*/
struct ln_rect_posn {
	double X;	/*!< Rectangular X coordinate */
	double Y;	/*!< Rectangular Y coordinate */
	double Z;	/*!< Rectangular Z coordinate */
}

/*!
* \struct ln_gal_posn
* \brief Galactic coordinates
*
* The Galactic Latitude and Longitude of and object.
*
* Angles are expressed in degrees.
*/
struct ln_gal_posn {
	double l;	/*!< Galactic longitude (degrees) */
	double b;	/*!< Galactic latitude (degrees) */
}

/*!
* \struct ln_ell_orbit
* \brief Elliptic Orbital elements
*
*  TODO.
* Angles are expressed in degrees.
*/
struct ln_ell_orbit {
	double a;	/*!< Semi major axis, in AU */
	double e;	/*!< Eccentricity */
	double i;	/*!< Inclination in degrees */
	double w;	/*!< Argument of perihelion in degrees */
	double omega;	/*!< Longitude of ascending node in degrees*/
	double n;	/*!< Mean motion, in degrees/day */
	double JD;	/*!< Time of last passage in Perihelion, in julian day*/
}

/*!
* \struct ln_par_orbit
* \brief Parabolic Orbital elements
*
*  TODO.
* Angles are expressed in degrees.
*/
struct ln_par_orbit {
	double q;	/*!< Perihelion distance in AU */
	double i;	/*!< Inclination in degrees */
	double w;	/*!< Argument of perihelion in degrees */
	double omega;	/*!< Longitude of ascending node in degrees*/
	double JD;	/*!< Time of last passage in Perihelion, in julian day */
}

/*!
* \struct ln_hyp_orbit
* \brief Hyperbolic Orbital elements
*
*  TODO.
* Angles are expressed in degrees.
*/
struct ln_hyp_orbit {
	double q;	/*!< Perihelion distance in AU */
	double e;	/*!< Eccentricity */
	double i;	/*!< Inclination in degrees */
	double w;	/*!< Argument of perihelion in degrees */
	double omega;	/*!< Longitude of ascending node in degrees*/
	double JD;	/*!< Time of last passage in Perihelion, in julian day*/
}

/*!
* \struct ln_rst_time
* \brief Rise, Set and Transit times.
*
* Contains the Rise, Set and transit times for a body.
*
* Angles are expressed in degrees.
*/
struct ln_rst_time {
	double rise;		/*!< Rise time in JD */
	double set;			/*!< Set time in JD */
	double transit;		/*!< Transit time in JD */
}

/*!
* \struct ln_nutation
* \brief Nutation in longitude, ecliptic and obliquity.
*
* Contains Nutation in longitude, obliquity and ecliptic obliquity.
*
* Angles are expressed in degrees.
*/
struct ln_nutation {
	double longitude;	/*!< Nutation in longitude, in degrees */
	double obliquity;	/*!< Nutation in obliquity, in degrees */
	double ecliptic;	/*!< Mean obliquity of the ecliptic, in degrees */
}

// #if defined(__WIN32__) && !defined(__MINGW__)

// #include <time.h>

public import core.stdc.time : time_t;

struct timeval
{
	time_t  tv_sec;         /* count of seconds since Jan. 1, 1970 */
	long    tv_usec;        /* and microseconds */
}

struct timezone
{
	int     tz_minuteswest; /* Minutes west of GMT */
	int     tz_dsttime;     /* DST correction offset */
}
