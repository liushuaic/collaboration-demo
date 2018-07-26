package com.jk.mapper;

import com.jk.model.Address;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AddressMapper {
	List<Address> getAddress();

	void delAddress(@Param("ids") String ids);

	void addAddress(Address address);

	Address toUpdateAddress(@Param("addid") String addid);

	void updateAddress(Address address);

	void updateAddress0(String addid);

	void updateAddress1(String addid);
}
