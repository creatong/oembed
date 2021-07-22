package com.gb.oEmbed.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import org.springframework.web.servlet.ModelAndView;


import com.gb.oEmbed.service.OEmbedService;

@Controller
public class OEmbedController {

	
      @Autowired
      OEmbedService service;
      
      
      @RequestMapping(value = "/url_search", method=RequestMethod.POST)  
	  public String oembed_url(Model model, String url){
	
			
		  String tUrl = "";
			if(url.contains("www.youtube.com")) {
				tUrl = "https://www.youtube.com/oembed?url="+url+ "&format=json";
				
			}else if(url.contains("www.instagram.com")){
				tUrl = "https://api.instagram.com/oembed?url="+url+ "&format=json";
			}else if(url.contains("twitter.com")){
				tUrl = "https://publish.twitter.com/oembed?url="+url+ "&format=json";
			}else if(url.contains("vimeo.com")){
				tUrl = "https://vimeo.com/api/oembed.json?url="+url+ "&format=json";
			}
			

			  model.addAttribute("map", service.getOembed(tUrl));
			  model.addAttribute("url",url);
			  
			  return "result";
	  }
	 

}
