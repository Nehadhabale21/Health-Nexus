package com.records.controller;

import com.records.model.Bill;
import com.records.service.BillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/bills")
public class BillingController {

    @Autowired
    private BillService billService;

    @GetMapping
    public String listBills(Model model) {
        List<Bill> bills = billService.getAllBills();
        model.addAttribute("bills", bills);
        return "bills";
    }

    @GetMapping("/new")
    public String showForm(Model model) {
        model.addAttribute("bill", new Bill());
        return "bill_form";
    }

    @PostMapping
    public String saveBill(@ModelAttribute("bill") Bill bill) {
        billService.saveBill(bill);
        return "redirect:/bills";
    }

    @GetMapping("/edit/{id}")
    public String editBill(@PathVariable int id, Model model) {
        Bill bill = billService.getBillById(id);
        model.addAttribute("bill", bill);
        return "bill_form";
    }

    @GetMapping("/delete/{id}")
    public String deleteBill(@PathVariable int id) {
        billService.deleteBill(id);
        return "redirect:/bills";
    }
}
