/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dht.controllers;

import com.dht.services.StatsService;
import java.time.LocalDate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author admin
 */
@Controller
public class StatsController {
    @Autowired
    private StatsService statsService;
    
    @GetMapping("/stats")
    public String statsView(Model model){
        model.addAttribute("revenueByProducts", this.statsService.statsRevenueByProduct());
        model.addAttribute("revenueByPeriod", this.statsService.statsRevenueByPeriod(LocalDate.now().getYear(), "MONTH"));
        
        return "stats";
    }
}
