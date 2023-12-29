package com.govt.voting.dao;

import java.util.List;

import com.govt.voting.entity.Voter;

public interface VoterDao 
{
	public void addVoter(Voter voter);

	public boolean validateVoter(String email_id, String password);

	public Voter getVoter(String email_id);

	public void changeStatus(String voter);

	public List<Voter> getAllVoters();


}
