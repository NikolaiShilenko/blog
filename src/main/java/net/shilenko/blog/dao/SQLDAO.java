package net.shilenko.blog.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Map;

import org.apache.commons.dbutils.QueryRunner;

import net.shilenko.blog.dao.mapper.MapCategoryMapper;
import net.shilenko.blog.entity.Category;

/**
 * @author Nikolay Shilenko
 *
 */
public final class SQLDAO {
	private final QueryRunner sql = new QueryRunner();
	
	public Map<Integer, Category> mapCategories(Connection c) throws SQLException {
		return sql.query(c, "select * from category", new MapCategoryMapper());
	}
}
