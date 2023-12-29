package com.govt.voting.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.govt.voting.entity.Admin;
import com.govt.voting.entity.Voter;
import com.govt.voting.repository.AdminRepository;
import com.govt.voting.repository.VoterRepository;
@Component
public class VoterDaoImpl implements VoterDao
{
	@Autowired
	private VoterRepository voterRepo;
	@Override
	public void addVoter(Voter voter)
	{
		voter.setStatus("Not voted");
		voterRepo.save(voter);
			
	}
	@Override
	public boolean validateVoter(String email_id, String password) 
	{
		System.out.println(email_id);
		System.out.println(password);
		Optional<Voter> opt=voterRepo.findById(email_id);
		if(opt.isPresent())
		{
			Voter v = opt.get();
			if(v.getPassword().equalsIgnoreCase(password))
			{
				return true;
			}
		}
		return false;
			
	}

	public Voter getVoter(String email_id)
	{
		Optional<Voter> opt=voterRepo.findById(email_id);
		if(opt.isPresent())
		{
			return opt.get();
		}
		return null;
	}
	@Override
	public void changeStatus(String voter) 
	{
		Voter vtr = voterRepo.findById(voter).get();
		vtr.setStatus("Voted");
		voterRepo.save(vtr);
		
	}
	public List<Voter> getAllVoters() 
	{
		return voterRepo.findAll();
	}

}
