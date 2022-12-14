package com.example.ss4_th_bai3.bean;

import org.springframework.web.multipart.MultipartFile;

public class ProductForm {
    private Integer id;

    private String name;

    private String description;

    private MultipartFile image;

    public ProductForm(Integer id, String name, String description, MultipartFile image) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.image = image;
    }

    public ProductForm() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public MultipartFile getImage() {
        return image;
    }

    public void setImage(MultipartFile image) {
        this.image = image;
    }
}
