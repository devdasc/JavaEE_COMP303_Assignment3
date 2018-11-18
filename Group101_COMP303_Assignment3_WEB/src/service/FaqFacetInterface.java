package service;

import java.util.List;
import model.Faq;
import model.Topic;

public interface FaqFacetInterface {
	
	public List<Faq> getAllFaqsByTopic(int topicId);
	
	public List<Topic> findAllTopics();

}
