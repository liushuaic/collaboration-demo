package com.jk.mapper;

import com.jk.model.Member;
import com.jk.model.MemberRank;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MemberMapper {
    List<MemberRank> queryMenberList(@Param("begin") Integer begin, @Param("end") Integer end, @Param("memberRank") MemberRank memberRank);

    List<MemberRank> queryMenberCount(MemberRank memberRank);

    MemberRank queryMemberById(@Param("id") String id);

    void addMember(MemberRank memberRank);

    void updateMember(MemberRank memberRank);

    void delMember(@Param("ids") String ids);
}
