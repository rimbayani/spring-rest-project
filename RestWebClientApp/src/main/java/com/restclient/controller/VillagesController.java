package com.restclient.controller;

import com.restclient.model.Districts;
import com.restclient.model.Villages;
import com.restclient.utilities.BaseURI;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class VillagesController {
    final String villagesURI=BaseURI.restEndpoint+"/villages";

    @RequestMapping(value = "/villages.php")
    public ModelAndView getVillages(){
        List<Villages> result=null;
        RestTemplate restTemplate=new RestTemplate();
        result=restTemplate.exchange(villagesURI,HttpMethod.GET,null,new ParameterizedTypeReference<List<Villages>>(){}).getBody();
        ModelAndView model=new ModelAndView("villages");
        model.addObject("villages",result);
        return model;
    }

    @RequestMapping(value = "/villagesByDistrict.php")
    public ModelAndView getVillagesByDistrict(@RequestParam("id") Long id){
        List<Villages> result=null;
        RestTemplate restTemplate=new RestTemplate();
        result=restTemplate.exchange(villagesURI+"/district/"+id,HttpMethod.GET,null,new ParameterizedTypeReference<List<Villages>>(){}).getBody();
        ModelAndView model=new ModelAndView("villages_by_district");
        model.addObject("district",getDistrictNameById(id));
        model.addObject("villages",result);
        return model;
    }

    private static Districts getDistrictNameById(Long id){
        Districts district=new Districts();
        RestTemplate restTemplate=new RestTemplate();
        district=restTemplate.getForObject(BaseURI.restEndpoint+"/districts/"+id,Districts.class);
        return district;
    }
}