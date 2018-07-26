package com.jk.service;

import com.jk.model.Address;

import java.util.List;

public interface IAddressService {
	List<Address> getAddress();

	void delAddress(String ids);

	void addAddress(Address address);

	Address toUpdateAddress(String addid);

	void updateAddress(Address address);

	void updateAddressId(String addid);


}
