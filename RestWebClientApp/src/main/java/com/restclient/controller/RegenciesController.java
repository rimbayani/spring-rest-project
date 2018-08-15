package com.restclient.controller;
import com.restclient.model.Provinces;
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
public class RegenciesController {
    final String regenciesURI=BaseURI.restEndpoint+"/regencies";

    @RequestMapping(value = "/regencies.php")
    public ModelAndView getRegencies(){
        List<Regencies> result=null;
        RestTemplate restTemplate=new RestTemplate();
        result=restTemplate.exchange(regenciesURI,HttpMethod.GET,null,new ParameterizedTypeReference<List<Regencies>>(){}).getBody();
        ModelAndView model=new ModelAndView("regencies");
        model.addObject("regencies",result);
        return model;
    }

    @RequestMapping(value = "/regenciesByProvince.php")
    public ModelAndView getRegenciesByProvince(@RequestParam("id") Long id){
        List<Regencies> result=null;
        RestTemplate restTemplate=new RestTemplate();
        result=restTemplate.exchange(regenciesURI+"/province/"+id,HttpMethod.GET,null,new ParameterizedTypeReference<List<Regencies>>(){}).getBody();
        ModelAndView model=new ModelAndView("regencies_by_province");
        model.addObject("province",getProvinceNameById(id));
        model.addObject("regencies",result);
        return model;
    }

    private static Provinces getProvinceNameById(Long id){
        Provinces provinces=null;
        RestTemplate restTemplate=new RestTemplate();
        provinces=restTemplate.getForObject(BaseURI.restEndpoint+"/provinces/"+id,Provinces.class);
        return provinces;
    }
}