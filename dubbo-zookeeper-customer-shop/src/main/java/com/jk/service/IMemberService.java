package com.jk.service;

import com.jk.model.Member;
import com.jk.model.MemberRank;

import java.util.List;

public interface IMemberService {
    List<MemberRank> queryMenberList();

    MemberRank queryMemberById(String id);

    void addMember(MemberRank memberRank);

    void updateMember(MemberRank memberRank);

    void delMember(String ids);

    List<Member> queryRememberList();

    void addRemember(Member member);

    Member queryRememberById(String id);

    void delRemember(String ids);

    void updateRemember(Member member);

    Member queryInfo(String id);
}
