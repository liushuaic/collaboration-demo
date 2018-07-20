package com.jk.mapper;

import com.jk.model.Member;
import com.jk.model.MemberRank;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MemberMapper {
    List<MemberRank> queryMenberList();


    MemberRank queryMemberById(@Param("id") String id);

    void addMember(MemberRank memberRank);

    void updateMember(MemberRank memberRank);

    void delMember(@Param("ids") String ids);

    List<Member> queryRememberList();

    void addRemember(Member member);

    Member queryRememberById(@Param("id") String id);

    void delRemember(@Param("ids")String ids);

    void updateRemember(Member member);

    Member queryInfo(@Param("id")String id);
}
