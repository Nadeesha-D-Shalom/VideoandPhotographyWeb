package com.example.videoandphotographyweb.Classes;

public class Booking {
    private String customerName;
    private String eventDate;
    private String eventType;
    private String city;
    private String address;
    private String contactNumber;


    public Booking() {
    }

    public Booking(String customerName, String eventDate, String eventType, String city, String address, String contactNumber) {
        this.customerName = customerName;
        this.eventDate = eventDate;
        this.eventType = eventType;
        this.city = city;
        this.address = address;
        this.contactNumber = contactNumber;
    }


    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getEventDate() {
        return eventDate;
    }

    public void setEventDate(String eventDate) {
        this.eventDate = eventDate;
    }

    public String getEventType() {
        return eventType;
    }

    public void setEventType(String eventType) {
        this.eventType = eventType;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    @Override
    public String toString() {
        return customerName + "," + eventDate + "," + eventType + "," + city + "," + address + "," + contactNumber;
    }
}

