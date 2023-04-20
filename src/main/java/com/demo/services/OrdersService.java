package com.demo.services;

import com.demo.entities.Orders;

public interface OrdersService {

	public Iterable<Orders> findAll();
	
	public Iterable<Orders> findByUserId(int id);
	
	//find by userId and statusId
	public Iterable<Orders> findByUserIdAndStatusId(int userId , int statusid);
	
	public Iterable<Orders> findByUserIdAndStatusId2(int userId , int statusid);
	
	public Iterable<Orders> findByUserIdAndOrderId(int userid , int orderId);
	
	//find by storeId and statusId
	public Iterable<Orders> findStoreIdAndStatusId(int storeId , int statusId);
	
	public Iterable<Orders> findAllByStoreId(int storeId);
	
	// Search all by orderId
	public Iterable<Orders> findAllByOrderId(int orderId);
	
	public Iterable<Orders> findAllOrderByIdDesc();
	
	public Iterable<Orders> findAllStatus(int status_id);

	public Orders findById(int id);

	public Orders save(Orders order);

	public void delete(int id);
	
	public Iterable<Orders> findAllStatusAndUsername(int status_id,String username);
}
