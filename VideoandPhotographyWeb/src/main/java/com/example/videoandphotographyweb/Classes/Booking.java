package com.example.videoandphotographyweb.Classes;

public class Booking {
    private String customerName;
    private String eventDate;
    private String eventType;

    public Booking(String customerName, String eventDate, String eventType) {
        this.customerName = customerName;
        this.eventDate = eventDate;
        this.eventType = eventType;
    }

    public String getCustomerName() {
        return customerName;
    }

    public String getEventDate() {
        return eventDate;
    }

    public String getEventType() {
        return eventType;
    }

    @Override
    public String toString() {
        return customerName + "," + eventDate + "," + eventType;
    }
}
