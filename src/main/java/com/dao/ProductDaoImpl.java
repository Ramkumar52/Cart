package com.dao;

import java.util.List;

import javax.persistence.AssociationOverride;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.ProductModel;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao
{
	@Autowired(required=true)
	private SessionFactory session;
	
	@Override
   public void add(ProductModel productmodel ){
		System.out.println("in dao pdt");
	   session.getCurrentSession().save(productmodel);
   }
	
	@Override
   public void edit(ProductModel productmodel){
		System.out.println("iiiiii");
       session.getCurrentSession().update(productmodel);
   }
   
	@Override
	public void delete(String getId){
		session.getCurrentSession().delete(getProductModel(getId));
	}
		@Override
		public ProductModel getProductModel(String getId){
			return (ProductModel)session.getCurrentSession().get(ProductModel.class,getId);
		}
		
		@Override
		public List getAllProductModel(){
			return session.getCurrentSession().createQuery("from ProductModel").list();
		}

		@Override
		public List getAll3G() {
			// TODO Auto-generated method stub
			return session.getCurrentSession().createQuery("from ProductModel where category='3G'").list();
		}

		@Override
		public List getAll4G() {
			// TODO Auto-generated method stub
			 return session.getCurrentSession().createQuery("from ProductModel where category='4G'").list();
		}

		@Override
		public List getAllHUB() {
			// TODO Auto-generated method stub
			return  session.getCurrentSession().createQuery("from ProductModel where category='HUB'").list();
		}
		
	}


