package com.records.dao;

import java.util.List;

import com.records.model.Bill;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BillDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void saveBill(Bill bill) {
        sessionFactory.getCurrentSession().saveOrUpdate(bill);
    }

    public List<Bill> getAllBills() {
        return sessionFactory.getCurrentSession()
                .createQuery("from Bill", Bill.class)
                .list();
    }

    public Bill getBillById(int id) {
        return sessionFactory.getCurrentSession().get(Bill.class, id);
    }

    public void deleteBill(int id) {
        Bill bill = getBillById(id);
        if (bill != null) {
            sessionFactory.getCurrentSession().delete(bill);
        }
    }
}
