module nova.lunar_priv;

/* used for elp1 - 3 */
struct main_problem
{
	double[4] ilu;
	double A;
	double[6] B;
}

/* used for elp 4 - 9 */
struct earth_pert
{
	double iz;
	double[4] ilu;
	double O;
	double A;
	double P;
}

/* used for elp 10 - 21 */
struct planet_pert
{
	double[11] ipla;
	double theta;
	double O;
	double P;
}
