package com.example.demo.controller;

import com.example.demo.model.FlightSchedule;
import com.example.demo.repository.FlightScheduleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.util.List;

@RestController
public class ApiController {

    @Autowired
    private FlightScheduleRepository repository;

    @Autowired
    private StringRedisTemplate redisTemplate;

    @Autowired
    private ObjectMapper objectMapper;

    private static final String CACHE_KEY = "flightSchedules";

    @GetMapping("/")
    public List<FlightSchedule> getFlightSchedules() throws Exception {
        /*  String cachedData = redisTemplate.opsForValue().get(CACHE_KEY);
        
        if (cachedData != null) {
            return objectMapper.readValue(cachedData, 
                objectMapper.getTypeFactory().constructCollectionType(List.class, FlightSchedule.class));
        }
                */

        List<FlightSchedule> flights = repository.findAll();
        // redisTemplate.opsForValue().set(CACHE_KEY, objectMapper.writeValueAsString(flights));
        return flights;
    }
}
