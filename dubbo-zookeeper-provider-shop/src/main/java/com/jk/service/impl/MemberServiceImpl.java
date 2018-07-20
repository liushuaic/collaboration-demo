package com.jk.service.impl;

import com.jk.mapper.MemberMapper;
import com.jk.model.Member;
import com.jk.model.MemberRank;
import com.jk.service.IMemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cglib.core.Local;
import org.springframework.stereotype.Service;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
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

    @Override
    public void addRemember(Member member) throws UnknownHostException {
        String uuid = UUID.randomUUID().toString().replace("-","");
        member.setMemberid(uuid);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
        Date date = new Date();
        String format = simpleDateFormat.format(date);
        String address = InetAddress.getLocalHost().getHostAddress();
        member.setLoginip(address);
        member.setCreatedate(format);
        mapper.addRemember(member);
    }

    @Override
    public Member queryRememberById(String id) {
        return mapper.queryRememberById(id);
    }

    @Override
    public void delRemember(String ids) {
        mapper.delRemember(ids);
    }

    @Override
    public void updateRemember(Member member) {
        mapper.updateRemember(member);
    }

    @Override
    public Member queryInfo(String id) {
        return mapper.queryInfo(id);
    }
}