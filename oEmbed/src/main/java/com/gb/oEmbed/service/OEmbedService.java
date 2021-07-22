package com.gb.oEmbed.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;


@Service
public class OEmbedService {
	public Map<String, Object> getOembed(String url){
		
		Map<String, Object> oembed_data = new HashMap<>();
		Map<String, Object> oembed_result = new HashMap<>();
		
		RestTemplate rt = new RestTemplate();
		
		
		try {
			String oembedResult = rt.getForObject(url, String.class);
			ObjectMapper mapper = new  ObjectMapper();
			oembed_data = mapper.readValue(oembedResult, new TypeReference<Map<String, Object>>() {});
			System.out.println(oembedResult);
			
			
	        mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	      oembed_result.put("res", oembed_data);
	      
	      
	      return oembed_result;
	
	}
	
}
