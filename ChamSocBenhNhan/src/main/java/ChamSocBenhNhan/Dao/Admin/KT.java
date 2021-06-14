package ChamSocBenhNhan.Dao.Admin;

import java.text.ParseException;
import java.text.SimpleDateFormat;

public class KT {
	public static void main(String[] args) {
		String startDate = "01-06-2014";
		SimpleDateFormat sdf1 = new SimpleDateFormat("dd-mm-yyyy");
		java.util.Date date;
		try {
			date = sdf1.parse(startDate);
			java.sql.Date sqlStartDate = new java.sql.Date(date.getTime());
			System.out.println(sqlStartDate);

			String s = "2022-12-31";
			
			
			int  year= Integer.parseInt(s.substring(0, 4)) ;
			int monnth = Integer.parseInt(s.substring(5, 7));
			int daytt = Integer.parseInt(s.substring(8,10))+1;
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
			java.sql.Date d = java.sql.Date.valueOf(year + "-" + monnth + "-" + daytt);
			System.out.println(d);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
