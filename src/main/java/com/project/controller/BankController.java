package com.project.controller;

import com.project.entity.Client;
import com.project.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class BankController {

    @Autowired
    private ClientService clientService;

    @RequestMapping("/")
    public String getAllBankClients(Model model) {
        List<Client> allClients = clientService.getAllClients();
        model.addAttribute("allClientsAttribute", allClients);
        return "all-bank-clients";
    }

    @RequestMapping("/add")
    public String addNewEmployee(Model model) {
        Client client = new Client();
        model.addAttribute("addClientAttribute", client);
        return "bank-client-info-add";
    }

    @RequestMapping("/save")
    public String saveEmployee(@ModelAttribute("addClientAttribute") Client client) {
        clientService.saveClient(client);
        return "redirect:/";
    }

    @RequestMapping("/updateClient")
    public String updateClient(@RequestParam("clientId") int id, Model model) {
        Client client = clientService.getClient(id);
        model.addAttribute("addClientAttribute", client);
        return "bank-client-info-add";
    }

    @RequestMapping("/deleteClient")
    public String deleteEmployee(@RequestParam("clientId") int id) {
        clientService.deleteClient(id);
        return "redirect:/";
    }

}
