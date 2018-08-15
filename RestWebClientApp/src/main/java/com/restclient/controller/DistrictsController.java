package com.restclient.controller;

import com.restclient.model.Districts;
import com.restclient.model.Regencies;
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
public class DistrictsController {
    final String districtsURI=BaseURI.restEndpoint+"/districts";

    @RequestMapping(value = "/districts.php")
    public ModelAndView getDistricts(){
        List<Districts> result=null;
        RestTemplate restTemplate=new RestTemplate();
        result=restTemplate.exchange(districtsURI,HttpMethod.GET,null,new ParameterizedTypeReference<List<Districts>>(){}).getBody();
        ModelAndView model=new ModelAndView("districts");
        model.addObject("districts",result);
        return model;
    }

    @RequestMapping(value = "/districtsByRegency.php")
    public ModelAndView getDistrictsByRegency(@RequestParam("id") Long id){
        List<Districts> result=null;
        RestTemplate restTemplate=new RestTemplate();
        result=restTemplate.exchange(districtsURI+"/regency/"+id,HttpMethod.GET,null,new ParameterizedTypeReference<List<Districts>>(){}).getBody();
        ModelAndView model=new ModelAndView("districts_by_regency");
        model.addObject("regency",getRegencyNameById(id));
        model.addObject("districts",result);
        return model;
    }

    private static Regencies getRegencyNameById(Long id){
        Regencies regencies=new Regencies();
        RestTemplate restTemplate=new RestTemplate();
        regencies=restTemplate.getForObject(BaseURI.restEndpoint+"/regencies/"+id,Regencies.class);
        return regencies;
    }
}
