package com.restclient.controller;

import com.restclient.model.Provinces;
import com.restclient.utilities.BaseURI;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;

@Controller
public class ProvincesController {

    final String provinceURI=BaseURI.restEndpoint +"/provinces";

    @RequestMapping(value = "/provinces.php")
    public ModelAndView getProvinces(){
        List<Provinces> result=null;
        RestTemplate restTemplate=new RestTemplate();
        result=restTemplate.exchange(provinceURI,HttpMethod.GET,null,new ParameterizedTypeReference<List<Provinces>>(){}).getBody();
        ModelAndView model=new ModelAndView("provinces");
        model.addObject("provinces",result);
        return model;
    }
}