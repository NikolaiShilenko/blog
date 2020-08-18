package net.shilenko.blog.service;

import java.util.Map;

import net.shilenko.blog.entity.Article;
import net.shilenko.blog.entity.Category;
import net.shilenko.blog.model.Items;

/**
 * @author Nikolay Shilenko
 *
 */
public interface BusinessService {

	Map<Integer, Category> mapCategories();
	
	Items<Article> listArticles(int offset, int limit);
	
	Items<Article> listArticlesByCategory(String categoryUrl, int offset, int limit);
	
	Category findCategoryByUrl(String categoryUrl);
	
	Items<Article> listArticlesBySearchQuery(String searchQuery, int offset, int limit);
}