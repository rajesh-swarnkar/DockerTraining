// FlightScheduleRepository.java
package com.example.demo.repository;

import com.example.demo.model.FlightSchedule;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FlightScheduleRepository extends JpaRepository<FlightSchedule, String> {
}
