package com.restclient.model;

public class Districts {
    private Long id;
    private Long regency_id;
    private String name;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getRegency_id() {
        return regency_id;
    }

    public void setRegency_id(Long regency_id) {
        this.regency_id = regency_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
