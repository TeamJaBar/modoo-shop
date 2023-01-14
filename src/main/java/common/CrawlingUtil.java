package common;

import java.io.IOException;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class CrawlingUtil {
	static String url;

	public static Document connect(String domain) {
		url = domain;
		Document doc = null;
		try {
			doc = Jsoup.connect(url).get();
			return doc;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}
