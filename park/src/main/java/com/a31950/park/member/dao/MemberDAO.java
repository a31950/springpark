package com.a31950.park.member.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.a31950.park.member.vo.MemberVO;

public interface MemberDAO {
	 public List selectAllMemberList() throws DataAccessException;
	 public int insertMember(MemberVO memberVO) throws DataAccessException ;
	 public int deleteMember(String id) throws DataAccessException;
	 public MemberVO loginById(MemberVO memberVO) throws DataAccessException;
	 public MemberVO searchMember(String id) throws DataAccessException;
	 public int updateMember(MemberVO OmemberVO) throws DataAccessException;;

}
