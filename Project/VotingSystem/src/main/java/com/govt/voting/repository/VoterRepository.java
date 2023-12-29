package com.govt.voting.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.govt.voting.entity.Voter;

public interface VoterRepository extends JpaRepository<Voter, String> {

}
