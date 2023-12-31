package com.a31950.park.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.a31950.park.member.vo.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List selectAllMemberList() throws DataAccessException {
		List<MemberVO> membersList = null;
		membersList = sqlSession.selectList("mapper.member.selectAllMemberList");
		return membersList;
	}

	@Override
	public int insertMember(MemberVO memberVO) throws DataAccessException {
		int result = sqlSession.insert("mapper.member.insertMember", memberVO);
		return result;
	}

	@Override
	public int deleteMember(String memberId) throws DataAccessException {
		int result = sqlSession.delete("mapper.member.deleteMember", memberId);
		return result;
	}
	
	@Override
	public MemberVO loginById(MemberVO memberVO) throws DataAccessException{
		  MemberVO vo = sqlSession.selectOne("mapper.member.loginById",memberVO);
		return vo;
	}

	@Override
	public MemberVO searchMember(String memberId) throws DataAccessException {
		 MemberVO vo = sqlSession.selectOne("mapper.member.searchById",memberId);
		 return vo;
	}

	@Override
	public int updateMember(MemberVO member) throws DataAccessException {
		int result = sqlSession.update("mapper.member.updateMember", member);
		return result;
	}

}
