package com.jk.service;

import com.jk.model.Member;
import com.jk.model.MemberRank;

import java.util.List;

public interface IMemberService {
    List<MemberRank> queryMenberList(Integer page, Integer rows, MemberRank memberRank);

    List<MemberRank> queryMenberCount(MemberRank memberRank);

    MemberRank queryMemberById(String id);

    void addMember(MemberRank memberRank);

    void updateMember(MemberRank memberRank);

    void delMember(String ids);

    List<Member> queryRememberList();
}
