package com.mycompany.myapp.board;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


/*CREATE TABLE sharingCarBoard (
	seq int AUTO_INCREMENT,
	category varchar(20),
	departurePoint varchar(30),
	arrivalPoint varchar(30),
	departureDay varchar(20),
	departureTime varchar(30),
	reservedSeat int,
	maxSeat int,
	bank varchar(20),
	bankAccount varchar(60),
	phone varchar(30),
	detail varchar(100),
	regdate timestamp DEFAULT CURRENT_TIMESTAMP,
	cnt int DEFAULT 0,
    primary key(seq)
    );
 */


@Repository
public class BoardDAO {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public int insertBoard(BoardVO vo) {
		
		String sql = "insert into sharingCarBoard(category, departurePoint, arrivalPoint, departureDay, "
				+ "departureTime, maxSeat, bank, bankAccount, phone, detail) values("
				+"'" + vo.getCategory() + "',"
				+"'" + vo.getDeparturePoint() + "',"
				+"'" + vo.getArrivalPoint() + "',"
				+"'" + vo.getDepartureDay() + "',"
				+"'" + vo.getDepartureTime() + "',"
				+"'" + vo.getMaxSeat() + "',"
				+"'" + vo.getBank()+ "',"
				+"'" + vo.getBankAccount() + "',"
				+"'" + vo.getPhone() + "',"
				+"'" + vo.getDetail()+ "')";
		
		return jdbcTemplate.update(sql);
		}
		
		public int deleteBoard(int seq) {
			String sql = "delete from sharingCarBoard where seq = " + seq;
			
			return jdbcTemplate.update(sql);
		}
		
		
		public int updateBoard(BoardVO vo) {
			String sql = "update sharingCarBoard set "
					+" category='" + vo.getCategory() + "',"
					+" departurePoint='" + vo.getDeparturePoint() + "',"
					+" arrivalPoint='" + vo.getArrivalPoint() + "',"
					+" departureDay='" + vo.getDepartureDay() + "',"
					+" departureTime='" + vo.getDepartureTime() + "',"
					+" maxSeat='" + vo.getMaxSeat() + "',"
					+" bank='" + vo.getBank()+ "',"
					+" bankAccount='" + vo.getBankAccount() + "',"
					+" phone='" + vo.getPhone() + "',"
					+" detail='" + vo.getDetail()+ "' where seq="+ vo.getSeq();	
			
			return jdbcTemplate.update(sql);
					
		}
		
		
		class BoardRowMapper implements RowMapper<BoardVO>{
			
			@Override
			public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException{
				BoardVO vo = new BoardVO();
				vo.setSeq(rs.getInt("seq"));
				vo.setCategory(rs.getString("category"));
				vo.setDeparturePoint(rs.getString("departurePoint"));
				vo.setArrivalPoint(rs.getString("arrivalPoint"));
				vo.setDepartureDay(rs.getString("departureDay"));
				vo.setDepartureTime(rs.getString("departureTime"));
				vo.setReservedSeat(rs.getInt("reservedSeat"));
				vo.setMaxSeat(rs.getInt("maxSeat"));
				vo.setBank(rs.getString("bank"));
				vo.setBankAccount(rs.getString("bankAccount"));
				vo.setPhone(rs.getString("phone"));
				vo.setDetail(rs.getString("detail"));
				vo.setRegdate(rs.getDate("regdate"));
				
				return vo;
				
			}
		}
			
			public BoardVO getBoard(int seq) {
				String sql = "select * from sharingCarBoard where seq=" + seq;
				return jdbcTemplate.queryForObject(sql, new BoardRowMapper());
			}
			
			public List<BoardVO> getBoardList(){
				String sql = "select * from sharingCarBoard order by regdate desc";
				return jdbcTemplate.query(sql,  new BoardRowMapper());
				
			}
		}
		
	

