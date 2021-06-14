package ChamSocBenhNhan.Dao.User;

import java.sql.Date;

public class ChuyenDoi {

	public static Date ChuyenDoiNgay(Date date) {

		String s = date.toString();

		int year = Integer.parseInt(s.substring(0, 4));
		int monnth = Integer.parseInt(s.substring(5, 7));
		int daytt = Integer.parseInt(s.substring(8, 10)) + 1;
		System.out.println(monnth);
		System.out.println(daytt);
		System.out.println(year + 1);
		if (monnth == 12 && daytt - 1 == 31) {
			daytt = 1;
			monnth = 1;
			year = year + 1;
		}
		if (daytt - 1 == 31) {
			daytt = 1;
			monnth = monnth + 1;
			System.out.println(monnth);
		}
		System.out.println(monnth);
		System.out.println(daytt);
		System.out.println(year + 1);
		date = Date.valueOf(year + "-" + monnth + "-" + daytt);
		return date;

	}
}
