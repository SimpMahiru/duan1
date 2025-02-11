/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UI;

import DAO.DoanhThuTheoNamDAO;
import java.awt.BorderLayout;
import java.awt.Color;
import javax.swing.ImageIcon;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;

/**
 *
 * @author TuanDuc
 */
public class frmTrangChu extends javax.swing.JFrame {
    void loadBieuDo(){
        DefaultCategoryDataset dataset = new DefaultCategoryDataset();
        String str = "Doanh thu bán vé máy bay hằng năm";
        dataset.addValue(new DoanhThuTheoNamDAO().getDoanhThu(2024), str, "2024");
        dataset.addValue(new DoanhThuTheoNamDAO().getDoanhThu(2023), str, "2023");
        dataset.addValue(new DoanhThuTheoNamDAO().getDoanhThu(2022), str, "2022");
        dataset.addValue(new DoanhThuTheoNamDAO().getDoanhThu(2021), str, "2021");
        dataset.addValue(new DoanhThuTheoNamDAO().getDoanhThu(2020), str, "2020");
        dataset.addValue(new DoanhThuTheoNamDAO().getDoanhThu(2019), str, "2019");
        dataset.addValue(new DoanhThuTheoNamDAO().getDoanhThu(2018), str, "2018");
        dataset.addValue(new DoanhThuTheoNamDAO().getDoanhThu(2017), str, "2017");
        dataset.addValue(new DoanhThuTheoNamDAO().getDoanhThu(2016), str, "2016");
        dataset.addValue(new DoanhThuTheoNamDAO().getDoanhThu(2015), str, "2015");
        dataset.addValue(new DoanhThuTheoNamDAO().getDoanhThu(2014), str, "2014");
        dataset.addValue(new DoanhThuTheoNamDAO().getDoanhThu(2013), str, "2013");
        dataset.addValue(new DoanhThuTheoNamDAO().getDoanhThu(2012), str, "2012");
        dataset.addValue(new DoanhThuTheoNamDAO().getDoanhThu(2011), str, "2011");
        dataset.addValue(new DoanhThuTheoNamDAO().getDoanhThu(2010), str, "2010");
        dataset.addValue(new DoanhThuTheoNamDAO().getDoanhThu(2009), str, "2009");
        JFreeChart barChart = ChartFactory.createBarChart("BIỂU ĐỒ THỐNG KÊ DOANH THU THEO NĂM", "Năm", "Tiền (Triệu)", dataset , PlotOrientation.VERTICAL, true, true, true);
        ChartPanel chartPanel = new ChartPanel(barChart);

    }
    
    
    
    void loadPercentDT(){
//        int nam2018 = Integer.parseInt(String.valueOf(Math.round(new DoanhThuTheoNamDAO().getDoanhThu(2023))));
//        int nam2019 = Integer.parseInt(String.valueOf(Math.round(new DoanhThuTheoNamDAO().getDoanhThu(2024))));
//        int per = nam2019 * 100 / nam2018;
//        lblPercentDT.setText(String.valueOf(per) + "%");
//        if(nam2019 < nam2018){
//            ImageIcon icon = new ImageIcon("src//Icon//downHome.png");
//            lblPercentDT.setIcon(icon);
//            lblPercentDT.setForeground(new Color(231, 76, 60));
//        }else{
//            ImageIcon icon = new ImageIcon("src//Icon//upHome.png");
//            lblPercentDT.setIcon(icon);
//            lblPercentDT.setForeground(new Color(26,187,156));
//        }

            
    }
    
    public frmTrangChu() {
        initComponents();
        setLocationRelativeTo(this);
        loadPercentDT();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/HinhDuLieu/banner.jpg"))); // NOI18N
        jLabel1.setText("jLabel1");
        jPanel1.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(-100, 1, -1, -1));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 1070, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 730, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Windows".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(frmTrangChu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(frmTrangChu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(frmTrangChu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(frmTrangChu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new frmTrangChu().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    // End of variables declaration//GEN-END:variables
}
