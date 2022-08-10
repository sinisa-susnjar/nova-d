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

module nova.utility;

public import nova.ln_types;

public import core.stdc.time : time_t, tm;

extern (C) {

    /*! \defgroup version libnova library version information
     */

    /*! \fn const char * ln_get_version (void)
     * \brief Library Version Number
     * \ingroup version
     */
    @safe @nogc const(char) *ln_get_version() pure nothrow;

    /*! \defgroup misc Misc. Functions
     *
     * Misc functions.
     */

    /*! \fn double ln_get_dec_location(char * s)
     * \ingroup misc
     * \brief Obtains Latitude, Longitude, RA or Declination from a string.
     */
    @safe @nogc double ln_get_dec_location(char *s) pure nothrow;


    /*! \fn char * ln_get_humanr_location(double location)
     *  \ingroup misc
     *  \brief Obtains a human readable location in the form: ddºmm'ss.ss"
     */
    @safe @nogc const(char) *ln_get_humanr_location(double location) pure nothrow;

    /*
     * \fn double ln_get_rect_distance(ln_rect_posn *a, ln_rect_posn *b)
     * \ingroup misc
     */
    @safe @nogc double ln_get_rect_distance(ln_rect_posn *a,
            ln_rect_posn *b) pure nothrow;

    /*! \defgroup conversion General Conversion Functions
     *
     * Conversion from one libnova type to another.
     */

    /*! \fn double ln_rad_to_deg(double radians)
     * \brief radians to degrees
     * \ingroup conversion
     */
    @safe @nogc double ln_rad_to_deg(double radians) pure nothrow;

    /*! \fn double ln_deg_to_rad(double radians)
     * \brief degrees to radians
     * \ingroup conversion
     */
    @safe @nogc double ln_deg_to_rad(double degrees) pure nothrow;

    /*! \fn double ln_hms_to_deg(ln_hms *hms)
     * \brief hours to degrees
     * \ingroup conversion
     */
    @safe @nogc double ln_hms_to_deg(ln_hms *hms) pure nothrow;

    /*! \fn void ln_deg_to_hms(double degrees, ln_hms *hms)
     * \brief degrees to hours
     * \ingroup conversion
     */
    @safe @nogc void ln_deg_to_hms(double degrees, ln_hms *hms) pure nothrow;

    /*! \fn double ln_hms_to_rad(ln_hms *hms)
     * \brief hours to radians.
     * \ingroup conversion
     */
    @safe @nogc double ln_hms_to_rad(ln_hms *hms) pure nothrow;

    /*! \fn void ln_deg_to_hms(double radians, ln_hms *hms)
     * \brief radians to hours
     * \ingroup conversion
     */
    @safe @nogc void ln_rad_to_hms(double radians, ln_hms *hms) pure nothrow;

    /*! \fn double ln_dms_to_deg(ln_dms *dms)
     * \brief dms to degrees
     * \ingroup conversion
     */
    @safe @nogc double ln_dms_to_deg(ln_dms *dms) pure nothrow;

    /*! \fn void ln_deg_to_dms(double degrees, ln_dms *dms)
     * \brief degrees to dms
     * \ingroup conversion
     */
    @safe @nogc void ln_deg_to_dms(double degrees, ln_dms *dms) pure nothrow;

    /*! \fn double ln_dms_to_rad(ln_dms *dms)
     * \brief dms to radians
     * \ingroup conversion
     */
    @safe @nogc double ln_dms_to_rad(ln_dms *dms) pure nothrow;

    /*! \fn void ln_rad_to_dms(double radians, ln_dms *dms)
     * \brief radians to dms
     * \ingroup conversion
     */
    @safe @nogc void ln_rad_to_dms(double radians, ln_dms *dms) pure nothrow;

    /*! \fn void ln_hequ_to_equ(lnh_equ_posn *hpos, ln_equ_posn *pos)
     * \brief human readable equatorial position to double equatorial position
     * \ingroup conversion
     */
    @safe @nogc void ln_hequ_to_equ(lnh_equ_posn *hpos,
            ln_equ_posn *pos) pure nothrow;

    /*! \fn void ln_equ_to_hequ(ln_equ_posn *pos, lnh_equ_posn *hpos)
     * \brief human double equatorial position to human readable equatorial position
     * \ingroup conversion
     */
    @safe @nogc void ln_equ_to_hequ(ln_equ_posn *pos,
            lnh_equ_posn *hpos) pure nothrow;

    /*! \fn void ln_hhrz_to_hrz(lnh_hrz_posn *hpos, ln_hrz_posn *pos)
     * \brief human readable horizontal position to double horizontal position
     * \ingroup conversion
     */
    @safe @nogc void ln_hhrz_to_hrz(lnh_hrz_posn *hpos,
            ln_hrz_posn *pos) pure nothrow;

    /*! \fn void ln_hrz_to_hhrz(ln_hrz_posn *pos, lnh_hrz_posn *hpos)
     * \brief double horizontal position to human readable horizontal position
     * \ingroup conversion
     */
    @safe @nogc void ln_hrz_to_hhrz(ln_hrz_posn *pos,
            lnh_hrz_posn *hpos) pure nothrow;

    /*! \fn const char * ln_hrz_to_nswe(ln_hrz_posn *pos);
     * \brief returns direction of given azimuth - like N,S,W,E,NSW,...
     * \ingroup conversion
     */
    @safe @nogc const(char) * ln_hrz_to_nswe(ln_hrz_posn *pos) pure nothrow;

    /*! \fn void ln_hlnlat_to_lnlat(lnh_lnlat_posn *hpos, ln_lnlat_posn *pos)
     * \brief human readable long/lat position to double long/lat position
     * \ingroup conversion
     */
    @safe @nogc void ln_hlnlat_to_lnlat(lnh_lnlat_posn *hpos,
            ln_lnlat_posn *pos) pure nothrow;

    /*! \fn void ln_lnlat_to_hlnlat(ln_lnlat_posn *pos, lnh_lnlat_posn *hpos)
     * \brief double long/lat position to human readable long/lat position
     * \ingroup conversion
     */
    @safe @nogc void ln_lnlat_to_hlnlat(ln_lnlat_posn *pos,
            lnh_lnlat_posn *hpos) pure nothrow;

    /*! \fn void ln_add_secs_hms(ln_hms *hms, double seconds)
     * \brief add seconds to hms
     * \ingroup conversion
     */
    @safe @nogc void ln_add_secs_hms(ln_hms *hms, double seconds) pure nothrow;

    /*! \fn void ln_add_hms(ln_hms *source, ln_hms *dest)
     * \brief add hms to hms
     * \ingroup conversion
     */
    @safe @nogc void ln_add_hms(ln_hms *source, ln_hms *dest) pure nothrow;

    /*! \fn void ln_range_degrees(double angle)
     * \brief puts a large angle in the correct range 0 - 360 degrees
     * \ingroup conversion
     */
    @safe @nogc double ln_range_degrees(double angle) pure nothrow;

    /*! \fn void ln_range_radians(double angle)
     * \brief puts a large angle in the correct range 0 - 2PI radians
     * \ingroup conversion
     */
    @safe @nogc double ln_range_radians(double angle) pure nothrow;
    @safe @nogc double ln_range_radians2(double angle) pure nothrow;

    /*
     * \fn double ln_get_light_time(double dist)
     * \brief Convert units of AU into light days.
     * \ingroup conversion
     */
    @safe @nogc double ln_get_light_time(double dist) pure nothrow;

    /*! \fn double ln_interpolate3(double n, double y1, double y2, double y3)
     * \ingroup misc
     * \brief Calculate an intermediate value of the 3 arguments.
     */
    @safe @nogc double ln_interpolate3(double n, double y1, double y2, double y3) pure nothrow;

    /*! \fn double ln_interpolate5(double n, double y1, double y2, double y3, double y4, double y5)
     * \ingroup misc
     * \brief Calculate an intermediate value of the 5 arguments.
     */
    @safe @nogc double ln_interpolate5(double n, double y1, double y2, double y3,
            double y4, double y5) pure nothrow;

    // version (win) {
    //
    // /* Catches calls to the POSIX gmtime_r and converts them to a related WIN32 version. */
    // tm *gmtime_r (time_t *t, tm *gmt) pure nothrow;
    //
    // #ifndef __MINGW__
    // /* Catches calls to the POSIX gettimeofday and converts them to a related WIN32 version. */
    // int gettimeofday(timeval *tp, timezone *tzp) pure nothrow;
    // #endif // !__MINGW__
    //
    // /* Catches calls to the POSIX strtok_r and converts them to a related WIN32 version. */
    // char *strtok_r(char *str, const char *sep, char **last) pure nothrow;
    //
    // } /* win */

}
