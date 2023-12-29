 package com.govt.voting.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.govt.voting.dao.CandidateDao;
import com.govt.voting.dao.VoterDao;
import com.govt.voting.entity.Candidate;
import com.govt.voting.entity.Voter;

@Controller
public class VotingController
{
		@RequestMapping("/displayHome")
		public String displayHome()
		{
			return "index";
		}
		
		@Autowired
		private VoterDao dao;
		@RequestMapping("/signup")
		public String signup(Voter voter, Model model)
		{
			
			dao.addVoter(voter);
			model.addAttribute("status", "Registration successful.....");
			return "NewVoterRegistration";
		}
		
		@Autowired
		private CandidateDao canDao;
		@RequestMapping("/voterLogin") 
		public String voterLogin(String email_id,String password,Model model)
		{
			boolean status=dao.validateVoter(email_id,password);
			if(status)
			{
				Voter vtr = dao.getVoter(email_id);
				List<Candidate> ls = canDao.getAllCandidates();
				model.addAttribute("voter",vtr);
				model.addAttribute("listOfCan",ls);
	 			return "VoterHome";
			}
			else
			{
				model.addAttribute("loginStatus", "!!..Invalid Credentials..!!");
				return "VoterSignin";
			}
		}
		
		@RequestMapping("/viewAllVoters")
		public String viewAllVoters(Model model)
		{
			List<Voter> alist = dao.getAllVoters();
			model.addAttribute("allVoters",alist);
			return "DisplayVoters";
			
		}
		
	}
