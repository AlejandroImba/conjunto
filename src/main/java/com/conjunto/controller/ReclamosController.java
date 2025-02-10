package com.conjunto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/reclamos")
public class ReclamosController {
	    @GetMapping("/formreclamos")
	    public String mostrarReclamos() {
	        return "formulario-reclamos"; 
	    }
	}

