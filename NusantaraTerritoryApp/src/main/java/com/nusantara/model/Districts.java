package com.nusantara.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "districts")
public class Districts {
    @Id
    @Column(name = "id",nullable = false)
    private Long id;

    @Column(name = "regency_id",nullable = false)
    private Long regency_id;

    @Column(name = "name",nullable = false)
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
