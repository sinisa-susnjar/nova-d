/* $Id: utility.c,v 1.18 2009-04-20 07:17:00 pkubanek Exp $
 **
 * Copyright (C) 1999, 2000 Juan Carlos Remis
 * Copyright (C) 2002 Liam Girdwood <lgirdwood@gmail.com>
 *
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
 */

/*------------------------------------------------------------------------*/
/*                                                                        */
/*  Module:                                                               */
/*                                                                        */
/*  Description:                                                          */
/*                                                                        */
/*                                                                        */
/*  "CAVEAT UTILITOR".                                                    */
/*                                                                        */
/*                   "Non sunt multiplicanda entia praeter necessitatem"  */
/*                                                   Guillermo de Occam.  */
/*------------------------------------------------------------------------*/
/*  Revision History:                                                     */
/*                                                                        */
/*------------------------------------------------------------------------*/

/**/
module nova.utility;

import std.stdio;
import std.math;

import nova;

/* Golden ratio */
enum GOLDEN = 1.61803398875;

enum DM_PI = (2*PI);
enum RADIAN = (180.0 / PI);

/* Conversion factors between degrees and radians */
enum D2R = (1.7453292519943295769e-2);  /* deg->radian */
enum R2D = (5.7295779513082320877e1);   /* radian->deg */
enum R2S = (2.0626480624709635516e5);   /* arc seconds per radian */
enum S2R = (4.8481368110953599359e-6);  /* radians per arc second */

static string ln_version = LIBNOVA_VERSION;

extern (C) {

/**
 * \fn double ln_rad_to_deg(double radians)
 * \brief radians to degrees
 * \ingroup conversion
 * \param radians Angle in radians
 * \return Angle in degrees
 */
static @nogc double ln_rad_to_deg(double radians) nothrow
{
    return radians * R2D;
}

/**
 * convert degrees to radians
 * \ingroup conversion
 * \param degrees Angle in degrees
 * \return Angle in radians
 */
static @nogc double ln_deg_to_rad(double degrees) nothrow
{
    return degrees * D2R;
}

/*! \fn char * ln_get_version (void)
* \return Null terminated version string.
*
* Return the libnova library version number string
* e.g. "0.4.0"
*/
@nogc string ln_get_version() nothrow
{
    return ln_version;
}

/* convert hours:mins:secs to degrees */
@nogc double ln_hms_to_deg(const ref ln_hms hms) nothrow
{
    double degrees;

    degrees = (cast(double)hms.hours / 24.0) * 360.0;
    degrees += (cast(double)hms.minutes / 60.0) * 15.0;
    degrees += (cast(double)hms.seconds / 60.0) * 0.25;

    return degrees;
}

/* convert hours:mins:secs to radians */
@nogc double ln_hms_to_rad(const ref ln_hms hms) nothrow
{
    double radians;

    radians = (cast(double)hms.hours / 24.0) * 2.0 * PI;
    radians += (cast(double)hms.minutes / 60.0) * 2.0 * PI / 24.0;
    radians += (cast(double)hms.seconds / 60.0) * 2.0 * PI / 1440.0;

    return radians;
}


/* convert degrees to hh:mm:ss */
@nogc void ln_deg_to_hms (double degrees, ref ln_hms hms) nothrow
{
    double dtemp;

    degrees = ln_range_degrees(degrees);

	/* divide degrees by 15 to get the hours */
    dtemp = degrees / 15.0;
    hms.hours = cast(ushort)dtemp;

    /* multiply remainder by 60 to get minutes */
    dtemp = 60.0 * (dtemp - hms.hours);
    hms.minutes = cast(ushort)dtemp;

    /* multiply remainder by 60 to get seconds */
    hms.seconds = 60.0 * (dtemp - hms.minutes);

    /* catch any overflows */
    if (hms.seconds > 59) {
    	hms.seconds = 0.0;
    	hms.minutes ++;
    }
    if (hms.minutes > 59) {
    	hms.minutes = 0;
    	hms.hours ++;
    }
}

/* convert radians to hh:mm:ss */
@nogc void ln_rad_to_hms (double radians, ref ln_hms hms) nothrow
{
    double degrees;

    radians = ln_range_radians(radians);
    degrees = ln_rad_to_deg(radians);

    ln_deg_to_hms(degrees, hms);
}


/* convert dms to degrees */
@nogc double ln_dms_to_deg(const ref ln_dms dms) nothrow
{
    double degrees;

    degrees =  fabs(cast(double)dms.degrees);
    degrees += fabs(cast(double)dms.minutes / 60.0);
    degrees += fabs(cast(double)dms.seconds / 3600.0);

	// negative ?
	if (dms.neg)
		degrees *= -1.0;

    return degrees;
}

/* convert dms to radians */
@nogc double ln_dms_to_rad(const ref ln_dms dms) nothrow
{
    double radians;

    radians =  fabs(cast(double)dms.degrees / 360.0 * 2.0 * PI);
    radians += fabs(cast(double)dms.minutes / 21600.0 * 2.0 * PI);
    radians += fabs(cast(double)dms.seconds / 1296000.0 * 2.0 * PI);

	// negative ?
	if (dms.neg)
		radians *= -1.0;

    return radians;
}

/* convert degrees to dms */
@nogc void ln_deg_to_dms (double degrees, ref ln_dms dms) nothrow
{
    double dtemp;

    if (degrees >= 0.0)
		dms.neg = 0;
	else
		dms.neg = 1;

	degrees = fabs(degrees);
	dms.degrees = cast(ushort)degrees;

    /* multiply remainder by 60 to get minutes */
    dtemp = 60.0 * (degrees - dms.degrees);
    dms.minutes = cast(ushort)dtemp;

    /* multiply remainder by 60 to get seconds */
    dms.seconds = 60.0 * (dtemp - dms.minutes);

    /* catch any overflows */
    if (dms.seconds > 59) {
    	dms.seconds = 0.0;
    	dms.minutes ++;
    }
    if (dms.minutes > 59) {
    	dms.minutes = 0;
    	dms.degrees ++;
    }
}

/* convert radians to dms */
@nogc void ln_rad_to_dms (double radians, ref ln_dms dms) nothrow
{
    double degrees = ln_rad_to_deg(radians);

    ln_deg_to_dms(degrees, dms);
}


/* puts a large angle in the correct range 0 - 360 degrees */
@nogc double ln_range_degrees(double angle) nothrow
{
    double temp;

    if (angle >= 0.0 && angle < 360.0)
        return angle;

    temp = cast(int)(angle / 360);
    if (angle < 0.0)
        temp --;
    temp *= 360.0;
    return angle - temp;
}

/* puts a large angle in the correct range 0 - 2PI radians */
@nogc double ln_range_radians(double angle) nothrow
{
    double temp;

    if (angle >= 0.0 && angle < (2.0 * PI))
        return angle;

    temp = cast(int)(angle / (PI * 2.0));

    if (angle < 0.0)
        temp --;
    temp *= (PI * 2.0);
    return angle - temp;
}

/* puts a large angle in the correct range -2PI - 2PI radians */
/* preserve sign */
@nogc double ln_range_radians2(double angle) nothrow
{
    double temp;

    if (angle > (-2.0 * PI) && angle < (2.0 * PI))
        return angle;

    temp = cast(int)(angle / (PI * 2.0));
    temp *= (PI * 2.0);
    return angle - temp;
}


/* add seconds to hms */
@nogc void ln_add_secs_hms(ref ln_hms hms, double seconds) nothrow
{
    ln_hms source_hms;

    /* breaks double seconds int hms */
    source_hms.hours = cast(ushort)(seconds / 3600);
    seconds -= source_hms.hours * 3600;
    source_hms.minutes = cast(ushort)(seconds / 60);
    seconds -= source_hms.minutes * 60;
    source_hms.seconds = seconds;

    /* add hms to hms */
    ln_add_hms(source_hms, hms);
}


/* add hms to hms */
@nogc void ln_add_hms(const ref ln_hms source, ref ln_hms dest) nothrow
{
    dest.seconds += source.seconds;
    if (dest.seconds >= 60.0) {
        /* carry */
	    dest.minutes ++;
	    dest.seconds -= 60.0;
	} else {
	    if (dest.seconds < 0.0) {
	        /* carry */
		    dest.minutes --;
		    dest.seconds += 60.0;
		}
	}

    dest.minutes += source.minutes;
    if (dest.minutes >= 60) {
        /* carry */
	    dest.hours ++;
	    dest.minutes -= 60;
	} else {
	    if (dest.seconds < 0.0) {
	        /* carry */
		    dest.hours --;
		    dest.minutes += 60;
		}
	}

    dest.hours += source.hours;
}

/*! \fn void ln_hequ_to_equ(struct lnh_equ_posn *hpos, struct ln_equ_posn *pos)
* \brief human readable equatorial position to double equatorial position
* \ingroup conversion
*/
@nogc void ln_hequ_to_equ(const ref lnh_equ_posn hpos, ref ln_equ_posn pos) nothrow
{
	pos.ra = ln_hms_to_deg(hpos.ra);
	pos.dec = ln_dms_to_deg(hpos.dec);
}

/*! \fn void ln_equ_to_hequ(struct ln_equ_posn *pos, struct lnh_equ_posn *hpos)
* \brief human double equatorial position to human readable equatorial position
* \ingroup conversion
*/
@nogc void ln_equ_to_hequ(const ref ln_equ_posn pos, ref lnh_equ_posn hpos) nothrow
{
	ln_deg_to_hms(pos.ra, hpos.ra);
	ln_deg_to_dms(pos.dec, hpos.dec);
}

/*! \fn void ln_hhrz_to_hrz(struct lnh_hrz_posn *hpos, struct ln_hrz_posn *pos)
* \brief human readable horizontal position to double horizontal position
* \ingroup conversion
*/
@nogc void ln_hhrz_to_hrz(const ref lnh_hrz_posn hpos, ref ln_hrz_posn pos) nothrow
{
	pos.alt = ln_dms_to_deg(hpos.alt);
	pos.az = ln_dms_to_deg(hpos.az);
}

/*! \fn void ln_hrz_to_hhrz(struct ln_hrz_posn *pos, struct lnh_hrz_posn *hpos)
* \brief double horizontal position to human readable horizontal position
* \ingroup conversion
*/
@nogc void ln_hrz_to_hhrz(const ref ln_hrz_posn pos, ref lnh_hrz_posn hpos) nothrow
{
	ln_deg_to_dms(pos.alt, hpos.alt);
	ln_deg_to_dms(pos.az, hpos.az);
}

/*! \fn const char * ln_hrz_to_nswe(struct ln_hrz_posn *pos);
 * \brief returns direction of given azimuth - like N,S,W,E,NSW,...
 * \ingroup conversion
 */
@nogc string ln_hrz_to_nswe(const ref ln_hrz_posn pos) nothrow
{
	static immutable directions =
		["S", "SSW", "SW", "SWW", "W", "NWW", "NW", "NNW",
		"N", "NNE", "NE", "NEE", "E", "SEE", "SE", "SSE"];

	return directions[cast(int)(pos.az / 22.5)];
}

/*! \fn void ln_hlnlat_to_lnlat(struct lnh_lnlat_posn *hpos, struct ln_lnlat_posn *pos)
* \brief human readable long/lat position to double long/lat position
* \ingroup conversion
*/
@nogc void ln_hlnlat_to_lnlat(const ref lnh_lnlat_posn hpos, ref ln_lnlat_posn pos) nothrow
{
	pos.lng = ln_dms_to_deg(hpos.lng);
	pos.lat = ln_dms_to_deg(hpos.lat);
}

/*! \fn void ln_lnlat_to_hlnlat(struct ln_lnlat_posn *pos, struct lnh_lnlat_posn *hpos)
* \brief double long/lat position to human readable long/lat position
* \ingroup conversion
*/
@nogc void ln_lnlat_to_hlnlat(const ref ln_lnlat_posn pos, ref lnh_lnlat_posn hpos) nothrow
{
	ln_deg_to_dms(pos.lng, hpos.lng);
	ln_deg_to_dms(pos.lat, hpos.lat);
}

/*
* \fn double ln_get_rect_distance(struct ln_rect_posn *a, struct ln_rect_posn *b)
* \param a First rectangular coordinate
* \param b Second rectangular coordinate
* \return Distance between a and b.
*
* Calculate the distance between rectangular points a and b.
*/
@nogc double ln_get_rect_distance(const ref ln_rect_posn a, const ref ln_rect_posn b) nothrow
{
	double x,y,z;

	x = a.X - b.X;
	y = a.Y - b.Y;
	z = a.Z - b.Z;

	x *= x;
	y *= y;
	z *= z;

	return sqrt(x + y + z);
}

/*
* \fn double ln_get_light_time (double dist)
* \param dist Distance in AU
* \return Distance in light days.
*
* Convert units of AU into light days.
*/
@nogc double ln_get_light_time(double dist) nothrow
{
	return dist * 0.005775183;
}


/* local types and macros */
// typedef int BOOL;
// #define TRUE 1
// #define FALSE 0
// #define iswhite(c)  ((c)== ' ' || (c)=='\t')

/*
[]------------------------------------------------------------------------[]
|  trim() & strip()                                                        |
|                                                                          |
|  strips trailing whitespaces from buf.                                   |
|                                                                          |
[]------------------------------------------------------------------------[]
*/
/*
static char *trim(char *x)
{
    char *y;

    if(!x)
        return(x);
    y = x + strlen(x)-1;
    while (y >= x && isspace(*y))
        *y-- = 0; // skip white space
    return x;
}
*/


/*
[]------------------------------------------------------------------------[]
|                                                                          |
|   skipwhite()                                                            |
|   salta espacios en blanco                                               |
|                                                                          |
[]------------------------------------------------------------------------[]
*/
/*
static void skipwhite(char **s)
{
   while (iswhite(**s))
        (*s)++;
}
*/


/*! \fn double ln_get_dec_location(const char * s)
* \param s Location string
* \return angle in degrees
*
* Obtains Latitude, Longitude, RA or Declination from a string.
*
*  If the last char is N/S doesn't accept more than 90 degrees.
*  If it is E/W doesn't accept more than 180 degrees.
*  If they are hours don't accept more than 24:00
*
*  Any position can be expressed as follows:
*  (please use a 8 bits charset if you want
*  to view the degrees separator char '0xba')
*
*  42.30.35,53
*  90º0'0,01 W
*  42º30'35.53 N
*  42º30'35.53S
*  42º30'N
*  -42.30.35.53
*   42:30:35.53 S
*  +42.30.35.53
*  +42º30 35,53
*   23h36'45,0
*
*
*  42:30:35.53 S = -42º30'35.53"
*  + 42 30.35.53 S the same previous position, the plus (+) sign is
*  considered like an error, the last 'S' has precedence over the sign
*
*  90º0'0,01 N ERROR: +- 90º0'00.00" latitude limit
*
*/
/*
double ln_get_dec_location(const char *s)
{
	char *ptr, *dec, *hh, *ame, *tok_ptr;
	BOOL negative = FALSE;
	char delim1[] = " :.,;DdHhMm'\n\t";
	char delim2[] = " NSEWnsew\"\n\t";
	int dghh = 0, minutes = 0;
	double seconds = 0.0, pos;
	short count;
	enum {
	HOURS, DEGREES, LAT, LONG
	} type;

	if (s == NULL || !*s)
	return -0.0;

	count = strlen(s) + 1;
	if ((ptr = (char *) alloca(count)) == NULL)
	return -0.0;

	memcpy(ptr, s, count);
	trim(ptr);
	skipwhite(&ptr);
	if (*ptr == '+' || *ptr == '-')
	negative = (char) (*ptr++ == '-' ? TRUE : negative);

	// the last letter has precedence over the sign
	if (strpbrk(ptr,"SsWw") != NULL)
	negative = TRUE;

	skipwhite(&ptr);
	if ((hh = strpbrk(ptr,"Hh")) != NULL && hh < ptr + 3) {
	type = HOURS;
	if (negative) // if RA no negative numbers
		negative = FALSE;
	} else if ((ame = strpbrk(ptr,"SsNn")) != NULL) {
		type = LAT;
		if (ame == ptr) // the North/South found before data
			ptr++;
		} else
			type = DEGREES; // unspecified, the caller must control it
	if ((ptr = strtok_r(ptr,delim1, &tok_ptr)) != NULL)
		dghh = atoi (ptr);
	else
		return (-0.0);
	if ((ptr = strtok_r(NULL,delim1, &tok_ptr)) != NULL) {
		minutes = atoi (ptr);
		if (minutes > 59)
			return -0.0;
	} else
		return -0.0;

	if ((ptr = strtok_r(NULL,delim2,&tok_ptr)) != NULL) {
		if ((dec = strchr(ptr,',')) != NULL)
			*dec = '.';
		seconds = strtod (ptr, NULL);
		if (seconds >= 60.0)
			return -0.0;
	}

	if ((ptr = strtok(NULL," \n\t")) != NULL) {
		skipwhite(&ptr);
		if (*ptr == 'S' || *ptr == 'W' || *ptr == 's' || *ptr == 'w')
			negative = TRUE;
	}

	pos = dghh + minutes /60.0 + seconds / 3600.0;
	if (type == HOURS && pos > 24.0)
		return -0.0;
	if (type == LAT && pos > 90.0)
		return -0.0;
	if (negative == TRUE)
		pos = 0.0 - pos;

	return pos;
}
*/


/*! \fn const char * ln_get_humanr_location(double location)
* \param location Location angle in degress
* \return Angle string
*
* Obtains a human readable location in the form: ddºmm'ss.ss"
* String must be freed after use.
*/
@nogc string ln_get_humanr_location(real location) nothrow
{
    import std.format;

	real deg, min, sec;

	sec = fabs(60.0 * (modf(location, deg)));
	sec = 60.0 * (modf(sec, min));
	// TODO // return format("%+dº%d'%.2f\"",cast(int)deg, cast(int) min, sec);
    return "TODO";
}

@nogc double ln_interpolate3(double n, double y1, double y2, double y3) nothrow
{
	double y, a, b, c;

	/* equ 3.2 */
	a = y2 - y1;
	b = y3 - y2;
	c = b - a;

	/* equ 3.3 */
	y = y2 + n / 2.0 * (a + b + n * c);

	return y;
}


/*! \fn double ln_interpolate5 (double n, double y1, double y2, double y3, double y4, double y5)
* \return interpolation value
* \param n Interpolation factor
* \param y1 Argument 1
* \param y2 Argument 2
* \param y3 Argument 3
* \param y4 Argument 4
* \param y5 Argument 5
*
* Calculate an intermediate value of the 5 arguments for the given interpolation
* factor.
*/
@nogc double ln_interpolate5(double n, double y1, double y2, double y3,
	double y4, double y5) nothrow
{
	double y, A, B, C, D, E, F, G, H, J, K;
	double n2, n3, n4;

	/* equ 3.8 */
	A = y2 - y1;
	B = y3 - y2;
	C = y4 - y3;
	D = y5 - y4;
	E = B - A;
	F = C - B;
	G = D - C;
	H = F - E;
	J = G - F;
	K = J - H;

	y = 0.0;
	n2 = n* n;
	n3 = n2 * n;
	n4 = n3 * n;

	y += y3;
	y += n * ((B + C ) / 2.0 - (H + J) / 12.0);
	y += n2 * (F / 2.0 - K / 24.0);
	y += n3 * ((H + J) / 12.0);
	y += n4 * (K / 24.0);

	return y;
}


/*! \fn double ln_find_zero(double (*f) (double, double *), double from, double to, double *arg)
* \param f Function to find zero (root place)
* \param from Lower bound of search interval
* \param to Upper bound of search interval
* \param arg Pointer to the other parameters of the function f
*
* Find zero of function f() at given interval by Newton method.
*
*/
@nogc alias find_zero_t = double function(double, ref double) nothrow;

@nogc double ln_find_zero(find_zero_t func,
	double from, double to, ref double arg) nothrow
{
	double x, x1, x2, f;
	int i = 0;

	x1 = to;
	x = from;

	do {
		f = func(x1, arg);
		x2 = x1 - f * (x1 - x) / (f - func(x, arg));
		x = x1;
		x1 = x2;
	} while ((fabs(x - x1) > 1e-6) && (i++ < 1000));

	return x2;
}

/*! \fn double ln_find_max(double (*f) (double, double *), double from, double to, double *arg)
* \param f Function to find maximum
* \param from Lower bound of search interval
* \param to Upper bound of search interval
* \param arg Pointer to the other parameters of the function f
*
* Find local maximum of function f() at given interval by Golden Section method.
*
*/
@nogc double ln_find_max(find_zero_t func,
	double from, double to, ref double arg) nothrow
{
	double	a, b, xl, xu, eps;

	a = from;
	b = to;
	xl = b - (b - a) / GOLDEN;
	xu = a + (b - a) / GOLDEN;
	eps = fabs(b - a);

	do {
		if (func(xl, arg) > func(xu, arg)) {
			b = xu;
			xu = xl;
			xl = b - (b - a) / GOLDEN;
		} else {
			a = xl;
			xl = xu;
			xu = a + (b - a) / GOLDEN;
		}
		eps = fabs(b - a);

	} while (eps > 1e-6);

	return (xu + xl) * 0.5;
}

}
