package com.example.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class FlightSchedule {
    @Id
    private String flightId;
    private String departureCity;
    private String arrivalCity;
    private String departureTime;
    private String arrivalTime;
}
