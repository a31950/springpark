package com.a31950.park.member.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.a31950.park.member.vo.MemberVO;

public interface MemberService {
	 public List listMembers() throws DataAccessException;
	 public int addMember(MemberVO memberVO) throws DataAccessException;
	 public int removeMember(String id) throws DataAccessException;
	 public MemberVO login(MemberVO memberVO) throws Exception;
	 public MemberVO searchMember(String id) throws DataAccessException;
	 public int updateMember(MemberVO member) throws Exception;;
}
