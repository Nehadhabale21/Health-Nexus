package com.records.service;

import com.records.dao.BillDao;
import com.records.model.Bill;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class BillService {

    @Autowired
    private BillDao billDao;

    @Transactional
    public void saveBill(Bill bill) {
        billDao.saveBill(bill);
    }

    @Transactional
    public List<Bill> getAllBills() {
        return billDao.getAllBills();
    }

    @Transactional
    public Bill getBillById(int id) {
        return billDao.getBillById(id);
    }

    @Transactional
    public void deleteBill(int id) {
        billDao.deleteBill(id);
    }
}
