package com.jk.service.impl;

import com.jk.mapper.MemberMapper;
import com.jk.model.Member;
import com.jk.model.MemberRank;
import com.jk.service.IMemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service("service")
public class MemberServiceImpl implements IMemberService{

    @Autowired
    private MemberMapper mapper;

    @Override
    public List<MemberRank> queryMenberList() {
        List<MemberRank> memberRanks = mapper.queryMenberList();
        return memberRanks;
    }

    @Override
    public MemberRank queryMemberById(String id) {
        return mapper.queryMemberById(id);
    }

    @Override
    public void addMember(MemberRank memberRank) {
        String uuid = UUID.randomUUID().toString().replace("-","");
        memberRank.setMrid(uuid);
        mapper.addMember(memberRank);
    }
    @Override
    public void updateMember(MemberRank memberRank) {
        mapper.updateMember(memberRank);
    }

    @Override
    public void delMember(String ids) {
        mapper.delMember(ids);
    }

    @Override
    public List<Member> queryRememberList() {
        return mapper.queryRememberList();
    }
}