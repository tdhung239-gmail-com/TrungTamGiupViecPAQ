package ChamSocBenhNhan.Dao.User;

import java.util.Date;

public class Compare {
	private Compare() {
		// TODO Auto-generated constructor stub
	}

	public static boolean checkDate(Date date, Date datenow) {
		Integer yearnow = Integer.parseInt(datenow.toString().substring(0, datenow.toString().indexOf("-")));
		Integer monthnow = Integer.parseInt(
				datenow.toString().substring(datenow.toString().indexOf("-") + 1, datenow.toString().lastIndexOf("-")));
		Integer daynow = Integer.parseInt(
				datenow.toString().substring(datenow.toString().lastIndexOf("-") + 1, datenow.toString().length()));

		Integer year = Integer.parseInt(date.toString().substring(0, date.toString().indexOf("-")));
		Integer month = Integer.parseInt(
				date.toString().substring(date.toString().indexOf("-") + 1, date.toString().lastIndexOf("-")));
		Integer day = Integer
				.parseInt(date.toString().substring(date.toString().lastIndexOf("-") + 1, date.toString().length()));

		if (year.equals(yearnow)) {
			if (month.equals(monthnow)) {
				if (day > daynow || day.equals(daynow)) {
					return true;

				} else {
					return false;
				}
			} else if (month > monthnow) {
				return true;
			} else {
				return false;

			}
		} else if (year > yearnow) {
			return true;
		} else {
			return false;
		}

	}

	public static boolean checkDateString(String date, String datenow) {
		Integer yearnow = Integer.parseInt(datenow.toString().substring(0, datenow.toString().indexOf("-")));
		Integer monthnow = Integer.parseInt(
				datenow.toString().substring(datenow.toString().indexOf("-") + 1, datenow.toString().lastIndexOf("-")));
		Integer daynow = Integer.parseInt(
				datenow.toString().substring(datenow.toString().lastIndexOf("-") + 1, datenow.toString().length()));

		Integer year = Integer.parseInt(date.toString().substring(0, date.toString().indexOf("-")));
		Integer month = Integer.parseInt(
				date.toString().substring(date.toString().indexOf("-") + 1, date.toString().lastIndexOf("-")));
		Integer day = Integer
				.parseInt(date.toString().substring(date.toString().lastIndexOf("-") + 1, date.toString().length()));

		if (year.equals(yearnow)) {
			if (month.equals(monthnow)) {
				if (day > daynow || day.equals(daynow)) {
					return true;

				} else {
					return false;
				}
			} else if (month > monthnow) {
				return true;
			} else {
				return false;

			}
		} else if (year > yearnow) {
			return true;
		} else {
			return false;
		}

	}

	public static boolean checkDateThan(String date, String datenow) {
		Integer yearnow = Integer.parseInt(datenow.toString().substring(0, datenow.toString().indexOf("-")));
		Integer monthnow = Integer.parseInt(
				datenow.toString().substring(datenow.toString().indexOf("-") + 1, datenow.toString().lastIndexOf("-")));
		Integer daynow = Integer.parseInt(
				datenow.toString().substring(datenow.toString().lastIndexOf("-") + 1, datenow.toString().length()));

		Integer year = Integer.parseInt(date.toString().substring(0, date.toString().indexOf("-")));
		Integer month = Integer.parseInt(
				date.toString().substring(date.toString().indexOf("-") + 1, date.toString().lastIndexOf("-")));
		Integer day = Integer
				.parseInt(date.toString().substring(date.toString().lastIndexOf("-") + 1, date.toString().length()));

		if (year.equals(yearnow)) {
			if (month.equals(monthnow)) {
				if (day > daynow) {
					return true;

				} else {
					return false;
				}
			} else if (month > monthnow) {
				return true;
			} else {
				return false;

			}
		} else if (year > yearnow) {
			return true;
		} else {
			return false;
		}

	}

	public static boolean checkDateEqual(String date, String datenow) {
		Integer yearnow = Integer.parseInt(datenow.toString().substring(0, datenow.toString().indexOf("-")));
		Integer monthnow = Integer.parseInt(
				datenow.toString().substring(datenow.toString().indexOf("-") + 1, datenow.toString().lastIndexOf("-")));
		Integer daynow = Integer.parseInt(
				datenow.toString().substring(datenow.toString().lastIndexOf("-") + 1, datenow.toString().length()));

		Integer year = Integer.parseInt(date.toString().substring(0, date.toString().indexOf("-")));
		Integer month = Integer.parseInt(
				date.toString().substring(date.toString().indexOf("-") + 1, date.toString().lastIndexOf("-")));
		Integer day = Integer
				.parseInt(date.toString().substring(date.toString().lastIndexOf("-") + 1, date.toString().length()));

		if (year.equals(yearnow)) {
			if (month.equals(monthnow)) {
				if (day.equals(daynow)) {
					return true;
				} else {
					return false;
				}
			}
		}
		return false;

	}

	public static boolean Contanin1DatesIn2Date(String date, String datestart, String dateend) {
		Integer yeardatestart = Integer.parseInt(datestart.toString().substring(0, datestart.toString().indexOf("-")));
		Integer monthdatestart = Integer.parseInt(datestart.toString().substring(datestart.toString().indexOf("-") + 1,
				datestart.toString().lastIndexOf("-")));
		Integer daydatestart = Integer.parseInt(datestart.toString()
				.substring(datestart.toString().lastIndexOf("-") + 1, datestart.toString().length()));

		Integer year = Integer.parseInt(date.toString().substring(0, date.toString().indexOf("-")));
		Integer month = Integer.parseInt(
				date.toString().substring(date.toString().indexOf("-") + 1, date.toString().lastIndexOf("-")));
		Integer day = Integer
				.parseInt(date.toString().substring(date.toString().lastIndexOf("-") + 1, date.toString().length()));

		Integer yeardateend = Integer.parseInt(dateend.toString().substring(0, dateend.toString().indexOf("-")));
		Integer monthdateend = Integer.parseInt(
				dateend.toString().substring(dateend.toString().indexOf("-") + 1, dateend.toString().lastIndexOf("-")));
		Integer daydateend = Integer.parseInt(
				dateend.toString().substring(dateend.toString().lastIndexOf("-") + 1, dateend.toString().length()));

		if (year.equals(yeardatestart) || year.equals(yeardateend)) {
			if(month.equals(monthdatestart) && month.equals(monthdateend)) {
				if((day.equals(daydatestart)||day>daydatestart)&&(day.equals(daydateend)||day<daydateend)) {
					return true;
				}else {
					return false;
				}
			}else if(month.equals(monthdatestart)) {
				if((day.equals(daydatestart)||day>daydatestart)) {
					return true;
				}else {
					return false;
				}
			}
			else if(month.equals(monthdateend)) {
				if((day.equals(daydateend)||day<daydateend)) {
					return true;
				}else {
					return false;
				}
			}
			else {
				return false;
			}
		}else {
			return false;
		}

	}

	public static boolean checkTime(String time, String timenow) {
		Integer hournow = Integer.parseInt(timenow.toString().substring(0, timenow.toString().indexOf(":")));
		Integer minnow = Integer.parseInt(
				timenow.toString().substring(timenow.toString().indexOf(":") + 1, timenow.toString().length()));

		Integer hour = Integer.parseInt(time.toString().substring(0, time.toString().indexOf(":")));
		Integer min = Integer
				.parseInt(time.toString().substring(time.toString().indexOf(":") + 1, time.toString().length()));

		if (hour.equals(hournow)) {
			if (min > minnow || min.equals(minnow)) {
				return true;
			} else {
				return false;
			}

		} else if (hour > hournow) {
			return true;
		} else {
			return false;
		}

	}

	public static boolean checkTimeHaveSecond(String time, String timenow) {
		Integer hournow = 0;
		Integer minnow = 0;
		Integer hour = 0;
		Integer min = 0;
		if (timenow.length() == 8) {
			hournow = Integer.parseInt(timenow.toString().substring(0, timenow.toString().indexOf(":")));

			minnow = Integer.parseInt(timenow.toString().substring(timenow.toString().indexOf(":") + 1,
					timenow.toString().lastIndexOf(":")));
		}
		if (time.length() == 8) {
			hour = Integer.parseInt(time.toString().substring(0, time.toString().indexOf(":")));
			min = Integer.parseInt(
					time.toString().substring(time.toString().indexOf(":") + 1, time.toString().lastIndexOf(":")));

		}
		if (time.length() < 6) {
			hour = Integer.parseInt(time.toString().substring(0, time.toString().indexOf(":")));
			min = Integer
					.parseInt(time.toString().substring(time.toString().indexOf(":") + 1, time.toString().length()));
		}
		if (timenow.length() < 6) {
			hournow = Integer.parseInt(timenow.toString().substring(0, timenow.toString().indexOf(":")));

			minnow = Integer.parseInt(
					timenow.toString().substring(timenow.toString().indexOf(":") + 1, timenow.toString().length()));
		}

		if (hour.equals(hournow)) {
			if (min > minnow || min.equals(minnow)) {
				return true;
			} else {
				return false;
			}

		} else if (hour > hournow) {
			return true;
		} else {
			return false;
		}

	}

	public static boolean checkTimeThan1Hour(String time, String timenow) {
		Integer hournow = Integer.parseInt(timenow.toString().substring(0, timenow.toString().indexOf(":")));
		Integer minnow = Integer.parseInt(
				timenow.toString().substring(timenow.toString().indexOf(":") + 1, timenow.toString().length()));

		Integer hour = Integer.parseInt(time.toString().substring(0, time.toString().indexOf(":")));
		Integer min = Integer
				.parseInt(time.toString().substring(time.toString().indexOf(":") + 1, time.toString().length()));
		if(hour-hournow>1) {
			return true;
		}
		else if (hour - hournow==1) {
			if(min-minnow>0) {
				return true;
			}
			return false;
		} else {
			return false;
		}

	}

	public static boolean checkTimeThan1HourHaveSencond(String time, String timenow) {
		Integer hournow = 0;
		Integer minnow = 0;
		Integer hour = 0;
		Integer min = 0;
		if (time.length() == 8) {

			hour = Integer.parseInt(time.toString().substring(0, time.toString().indexOf(":")));
			min = Integer.parseInt(
					time.toString().substring(time.toString().indexOf(":") + 1, time.toString().lastIndexOf(":")));

		}
		if (timenow.length() == 8) {
			hournow = Integer.parseInt(timenow.toString().substring(0, timenow.toString().indexOf(":")));
			minnow = Integer.parseInt(timenow.toString().substring(timenow.toString().indexOf(":") + 1,
					timenow.toString().lastIndexOf(":")));
		}
		if

		(time.length() == 5) {

			hour = Integer.parseInt(time.toString().substring(0, time.toString().indexOf(":")));
			min = Integer
					.parseInt(time.toString().substring(time.toString().indexOf(":") + 1, time.toString().length()));
		}
		if (timenow.length() == 5) {
			hournow = Integer.parseInt(timenow.toString().substring(0, timenow.toString().indexOf(":")));
			minnow = Integer.parseInt(
					timenow.toString().substring(timenow.toString().indexOf(":") + 1, timenow.toString().length()));
		}

		if (hour > hournow && min.equals(minnow)) {
			return true;
		} else {
			return false;
		}

	}

	public static boolean checkDateThan16Year(Date date, Date datenow) {
		Integer yearnow = Integer.parseInt(datenow.toString().substring(0, datenow.toString().indexOf("-")));

		Integer year = Integer.parseInt(date.toString().substring(0, date.toString().indexOf("-")));

		if (yearnow - year >= 16) {
			return true;
		} else {
			return false;
		}

	}

}
