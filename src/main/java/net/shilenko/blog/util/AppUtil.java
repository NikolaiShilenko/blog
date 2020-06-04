package net.shilenko.blog.util;

import java.util.Properties;
import java.io.IOException;
import java.io.InputStream;

/**
 * @author Nikolay Shilenko
 *
 */
public class AppUtil {
	public static void loadProperties(Properties props, String classPathUrl) {
		try (InputStream in = AppUtil.class.getClassLoader().getResourceAsStream(classPathUrl)) {
			props.load(in);
		} catch (IOException e) {
			throw new IllegalArgumentException("Can't load properties from classpath : + classPathUrl, e");
		}
	}
}
