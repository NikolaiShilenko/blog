package net.shilenko.blog.dao.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import net.shilenko.blog.entity.Article;

/**
 * @author Nikolay Shilenko
 *
 */
public class ArticleMapper extends AbstractMapper<Article> {

	@Override
	public Article handleItem(ResultSet rs) throws SQLException {
		Article a = convert.toBean(rs, Article.class);
		a.setIdCategory(rs.getInt("id_category"));
		return a;
	}

}
