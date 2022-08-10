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

module nova.julian_day;

public import core.stdc.time : time_t, tm;
public import nova.ln_types;

extern (C) {

/*! \defgroup calendar General Calendar Functions
*/

/*! \fn double ln_get_julian_day(struct ln_date *date)
* \ingroup calendar
* \brief Calculate the julian day from date.
*/
@safe @nogc double ln_get_julian_day(ln_date *date) pure nothrow;

/*! \fn void ln_get_date(double JD, struct ln_date *date)
* \ingroup calendar
* \brief Calculate the date from the julian day.
*/
@safe @nogc void ln_get_date(double JD, ln_date *date) pure nothrow;

/*! \fn void ln_get_date_from_timet (time_t *t, struct ln_date *date)
* \\ingroup calendar
* \brief Set date from system time
*/
@safe @nogc void ln_get_date_from_timet (time_t *t, ln_date *date) pure nothrow;

/*! \fn void ln_get_date_from_tm(struct tm *t, struct ln_date *date)
* \\ingroup calendar
* \brief Set date from system tm structure
*/
@safe @nogc void ln_get_date_from_tm(tm *t, ln_date *date) pure nothrow;

/*! \fn void ln_get_local_date(double JD, struct ln_zonedate *zonedate)
* \ingroup calender
* \brief Calculate the zone date from the Julian day
*/
@safe @nogc void ln_get_local_date(double JD, ln_zonedate *zonedate) pure nothrow;

/*! \fn unsigned int ln_get_day_of_week(struct ln_date *date)
* \ingroup calendar
* \brief Calculate day of the week.
*/
@safe @nogc uint ln_get_day_of_week(ln_date *date) pure nothrow;

/*! \fn double ln_get_julian_from_sys()
* \brief Calculate julian day from system time.
* \ingroup calendar
*/
@safe @nogc double ln_get_julian_from_sys() pure nothrow;


/*! \fn void ln_get_date_from_sys(ln_date *date)
* \brief Calculate date from system date
* \ingroup calendar
*/
@safe @nogc void ln_get_date_from_sys(ln_date *date) pure nothrow;

/*! \fn double ln_get_julian_from_timet(time_t *time)
* \brief Calculate julian day from time_t
* \ingroup calendar
*/
@safe @nogc double ln_get_julian_from_timet(time_t * in_time) pure nothrow;

/*! \fn void ln_get_timet_from_julian(double JD, time_t * in_time)
* \brief Calculate time_t from julian day
* \ingroup calendar
*/
@safe @nogc void ln_get_timet_from_julian(double JD, time_t * in_time) pure nothrow;

/*! \fn double ln_get_julian_local_date(struct ln_zonedate* zonedate)
* \brief Calculate Julian day from local date
* \ingroup calendar
*/
@safe @nogc double ln_get_julian_local_date(ln_zonedate* zonedate) pure nothrow;

/*! \fn int ln_get_date_from_mpc(struct ln_date *date, char *mpc_date)
* \brief Calculate the local date from the a MPC packed date.
* \ingroup calendar
*/
@safe @nogc int ln_get_date_from_mpc(ln_date *date, char *mpc_date) pure nothrow;

/*! \fn double ln_get_julian_from_mpc(char *mpc_date)
* \brief Calculate the julian day from the a MPC packed date.
* \ingroup calendar
*/
@safe @nogc double ln_get_julian_from_mpc(char *mpc_date) pure nothrow;

/*! \fn void ln_date_to_zonedate(struct ln_date *date, struct ln_zonedate *zonedate, long gmtoff)
* \brief convert ln_date to ln_zonedate, zero zone info
* \ingroup conversion
*/
@safe @nogc void ln_date_to_zonedate(ln_date *date,
	ln_zonedate *zonedate, long gmtoff) pure nothrow;

/*! \fn void ln_zonedate_to_date(struct ln_zonedate *zonedate, struct ln_date *date)
* \brief convert ln_zonedate to ln_date
* \ingroup conversion
*/
@safe @nogc void ln_zonedate_to_date(ln_zonedate *zonedate,
	ln_date *date) pure nothrow;

}
