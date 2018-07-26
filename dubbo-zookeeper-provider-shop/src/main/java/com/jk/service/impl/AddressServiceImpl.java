package com.jk.service.impl;

import com.jk.mapper.AddressMapper;
import com.jk.model.Address;
import com.jk.service.IAddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service("addressService")
public class AddressServiceImpl implements IAddressService{
	@Autowired
	private AddressMapper addressMapper;



	@Override
	public List<Address> getAddress() {
		return addressMapper.getAddress();
	}

	@Override
	public void delAddress(String ids) {
		addressMapper.delAddress(ids);
	}

	@Override
	public void addAddress(Address address) {

		address.setAddid(UUID.randomUUID().toString());

		if (address.getAdddefault() == null || "".equals(address.getAdddefault())){
			address.setAdddefault("0");
		}
		addressMapper.addAddress(address);
	}

	@Override
	public Address toUpdateAddress(String addid) {
		return addressMapper.toUpdateAddress(addid);
	}

	@Override
	public void updateAddress(Address address) {

		if (address.getAdddefault() == null || "".equals(address.getAdddefault())){
			address.setAdddefault("0");
		}
		addressMapper.updateAddress(address);
	}

	@Override
	public void updateAddressId(String addid) {
		addressMapper.updateAddress0(addid);
		addressMapper.updateAddress1(addid);

	}

}
