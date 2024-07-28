/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author pc
 */
public class VeMayBay {
    private String maVe;
    private String maHangVe;
    private String maLoaiVe;
    private String maChuyenBay;
    private float giaBan;

    public VeMayBay() {
    }

    public VeMayBay(String maVe) {
        this.maVe = maVe;
    }

    public VeMayBay(String maVe, String maHangVe, String maLoaiVe, String maChuyenBay, float giaBan) {
        this.maVe = maVe;
        this.maHangVe = maHangVe;
        this.maLoaiVe = maLoaiVe;
        this.maChuyenBay = maChuyenBay;
        this.giaBan = giaBan;
    }

    public String getMaVe() {
        return maVe;
    }

    public void setMaVe(String maVe) {
        this.maVe = maVe;
    }

    public String getMaHangVe() {
        return maHangVe;
    }

    public void setMaHangVe(String maHangVe) {
        this.maHangVe = maHangVe;
    }

    public String getMaLoaiVe() {
        return maLoaiVe;
    }

    public void setMaLoaiVe(String maLoaiVe) {
        this.maLoaiVe = maLoaiVe;
    }

    public String getMaChuyenBay() {
        return maChuyenBay;
    }

    public void setMaChuyenBay(String maChuyenBay) {
        this.maChuyenBay = maChuyenBay;
    }

    public float getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(float giaBan) {
        this.giaBan = giaBan;
    }
}
