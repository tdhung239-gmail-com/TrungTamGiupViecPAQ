package ChamSocBenhNhan.Dao.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class BaseDaoUser {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
}
