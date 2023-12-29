package com.govt.voting.dao;

import java.util.List;

import com.govt.voting.entity.Admin;

public interface AdminDao 
{

	public boolean validateAdmin(String email_id, String password);

	public Admin getAdmin(String email_id);

	public List<Admin> getAllAdmins();
}
