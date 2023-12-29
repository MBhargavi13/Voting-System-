package com.govt.voting.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.govt.voting.dao.AdminDao;
import com.govt.voting.dao.CandidateDao;
import com.govt.voting.entity.Admin;
import com.govt.voting.entity.Candidate;
@Controller
public class AdminController 
{
	@Autowired
	private CandidateDao cDao;
	@Autowired
	private AdminDao dao;
	@RequestMapping("/adminLogin")
	public String adminLogin(String email_id,String password,Model model)
	{
		boolean status = dao.validateAdmin(email_id, password);
		if(status)
		{
			List<Candidate> lcan = cDao.getAllCandidates();
			Admin ad = dao.getAdmin(email_id);
			model.addAttribute("listOfCan", lcan);
			model.addAttribute("admin",ad);
			return "AdminHome";
		}
		else
		{
			model.addAttribute("loginStatus", "!!..Invalid Credentials..!!");
			return "AdminSignin";
		}
	}
	@RequestMapping("/viewAllAdmins")
	public String viewAllAdmins(Model model)
	{
		List<Admin> alist = dao.getAllAdmins();
		model.addAttribute("allAdmins",alist);
		return "DisplayAdmin";
		
	}

}
