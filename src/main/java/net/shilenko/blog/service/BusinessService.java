package net.shilenko.blog.service;

import java.util.Map;

import net.shilenko.blog.entity.Category;

/**
 * @author Nikolay Shilenko
 *
 */
public interface BusinessService {

	Map<Integer, Category> mapCategories();
}