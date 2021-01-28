package com.wwft.common.mybatis.typehandler;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.commons.lang3.BooleanUtils;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.TypeHandler;

public class StringValueBooleanTypeHandler implements TypeHandler<Boolean> {

	public StringValueBooleanTypeHandler() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public Boolean getResult(ResultSet rs, String columnName) throws SQLException {
		// TODO Auto-generated method stub
		return BooleanUtils.toBoolean(rs.getString(columnName));
	}

	@Override
	public Boolean getResult(ResultSet rs, int columnIndex) throws SQLException {
		// TODO Auto-generated method stub
		return BooleanUtils.toBoolean(rs.getString(columnIndex));
	}

	@Override
	public Boolean getResult(CallableStatement cs, int columnIndex) throws SQLException {
		// TODO Auto-generated method stub
		return BooleanUtils.toBoolean(cs.getString(columnIndex));
	}

	@Override
	public void setParameter(PreparedStatement ps, int i, Boolean parameter, JdbcType jdbcType) throws SQLException {
		ps.setString(i, BooleanUtils.toString(parameter, "1", "0")); //0=false 1=true
		
		
	}

}
