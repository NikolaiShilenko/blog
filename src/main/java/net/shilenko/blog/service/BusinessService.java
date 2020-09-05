package net.shilenko.blog.service;

import java.util.List;
import java.util.Map;

import net.shilenko.blog.entity.Article;
import net.shilenko.blog.entity.Category;
import net.shilenko.blog.entity.Comment;
import net.shilenko.blog.exception.RedirectToValidUrlException;
import net.shilenko.blog.model.Items;

/**
 * @author Nikolay Shilenko
 *
 */
public interface BusinessService {

	Map<Integer, Category> mapCategories();
	
	Items<Article> listArticles(int offset, int limit);
	
	Items<Article> listArticlesByCategory(String categoryUrl, int offset, int limit);
	
	/**
	 * @return null if entity not found
	 */
	Category findCategoryByUrl(String categoryUrl);
	
	Items<Article> listArticlesBySearchQuery(String searchQuery, int offset, int limit);
	
	/**
	 * @return null if entity not found by idArticle
	 */
	Article viewArticle(Long idArticle, String requestUrl) throws RedirectToValidUrlException;
	
	List<Comment> listComments(long idArticle, int offset, int limit);
}