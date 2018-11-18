package service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import model.Faq;
import model.Topic;

public class FaqFacet implements FaqFacetInterface {
	
	static EntityManager em;
	
	public FaqFacet()
	{
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("Group101_COMP303_Assignment3_JPA");
	em = emf.createEntityManager();
	}
	
	public List<Faq> getAllFaqsByTopic(int topicId)
	{
		Query q = em.createNamedQuery("findFaqsByTopic");
		q.setParameter("topicId", topicId);
		return q.getResultList();
	}
	
	public List<Topic> findAllTopics()
	{
		Query q = em.createNamedQuery("Topic.findAll");		
		return q.getResultList();
	}

}
