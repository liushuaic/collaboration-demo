package com.jk.controller;

import com.jk.model.Address;
import com.jk.service.IAddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("addressController")
public class AddressController {

	@Autowired
	private IAddressService addressService;

	//查询
	/*@RequestMapping("getAddress")
	@ResponseBody
	public List<Address> getAddress(){

		return addressService.getAddress();
	}
*/
	//查询
	@RequestMapping("getAddress")
	public String getAddress(Model model){

		List<Address> addressList = addressService.getAddress();

		model.addAttribute("addressList",addressList);
		return "tongshuai/user.tongshuai.com/addressList";
	}
	//单删+批删
	@RequestMapping("delAddress")
	@ResponseBody
	public Map<String, Object> delCoupon(String ids){
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			addressService.delAddress(ids);
			map.put("success", true);
		} catch (Exception e) {
			e.printStackTrace();
			map.put("success", false);
		}
		return map;
	}

	//新增页面
	@RequestMapping("toAddress")
	public String toAddress(){

		return "tongshuai/user.tongshuai.com/addAddress";
	}
	//新增
	@RequestMapping("addAddress")
	public ModelAndView addAddress(Address address){
		ModelAndView mav = new ModelAndView("tongshuai/user.tongshuai.com/message");
		addressService.addAddress(address);
		return mav;
	}

	//修改之回显
	@RequestMapping("toUpdateAddress")
	@ResponseBody
	public ModelAndView toUpdateAddress(String addid){
		ModelAndView mv= new ModelAndView();
		Address address = addressService.toUpdateAddress(addid);
		mv.addObject("address", address);
		mv.setViewName("tongshuai/user.tongshuai.com/addAddress");
		return mv;
	}
	//修改
	@RequestMapping("updateAddress")
	public ModelAndView updateAddress(Address address){
		ModelAndView mv = new ModelAndView("tongshuai/user.tongshuai.com/message");
		addressService.updateAddress(address);
		return mv;
	}
}
