/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package seatarrangement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author vishnu
 */
public class ViewArrangement extends javax.swing.JPanel {
public int ar[][];
String room[];
public int b;
    int[] bench=new int[12];
    /** Creates new form ViewArrangement */
    public ViewArrangement() {
        initComponents();
    }
    
//                DefaultTableModel model = (DefaultTableModel) jTable1.getModel();
//                model.addRow(new Object[]{401,"ananthu","  ","ama","  "});
        

    public  ViewArrangement(int a[][],String rooms[],int bench){
        ar=a;
        room=rooms;
        b=bench;
        table(b);
    
    }
    
    public void table(int b1){
        String url ="jdbc:mysql://localhost/sas?autoReconnect=true&serverTimezone=UTC&useSSL=False&allowPublicKeyRetrieval=true";
            try (Connection con = DriverManager.getConnection(url, "root", "")){
                String sql2="SELECT * FROM room";
                int[] rollno=new int[3];
                String[] name=new String[3];

                //department='cs' OR department='ec' ORDER BY department ASC 
                
                Statement st2=con.createStatement();
                ResultSet rs2=st2.executeQuery(sql2);
                while(rs2.next()){
                    int k=0;
                    for(int i=0;i<room.length;i++){
                        if(room[i]==rs2.getString(1)){
                            bench[k]=rs2.getInt(2);
                            k++;
                        }
                    }
                }
                
                System.out.println(b1);
                int k=0,l=0;
                for(int i=0;i<b;i++){
                    if(k==bench[l]){
                        k=0;
                        l++;
                        
                    }
                    for(int j=0;j<3;j++){
                        String sql1="SELECT rollno,name FROM student where reg_no='"+ar[i][j]+"'";
                        Statement st1=con.createStatement();
                        ResultSet rs1=st1.executeQuery(sql1);
                        if(rs1.next()){
                            rollno[j]=rs1.getInt(1);
                            name[j]=rs1.getString(2);
                            System.out.println("name is"+name[j]);
                        }
                        else{
                            name[j]="Null";
                            rollno[j]=0;
                        }
                    }
                    String sql3="INSERT INTO `arrangement`(`room_no`, `c1_roll_no`, `c1_name`, `c2_roll_no`, `c2_name`, `c3_roll_no`, `c3_name`) VALUES (?,?,?,?,?,?,?)";
                    PreparedStatement pst=con.prepareStatement(sql3);
                    pst.setString(1,room[l]);
                    pst.setInt(2,rollno[0]);
                    pst.setString(3,name[0]);
                    pst.setInt(4,rollno[1]);
                    pst.setString(5,name[1]);
                    pst.setInt(6,rollno[2]);
                    pst.setString(7,name[2]);
                    pst.executeUpdate();
                    k++;
                }
            } catch (SQLException ex) {
            Logger.getLogger(ViewArrangement.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jButton1 = new javax.swing.JButton();

        setBackground(new java.awt.Color(255, 255, 255));

        jButton1.setText("jButton1");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(247, 247, 247)
                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 161, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(236, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(198, 198, 198)
                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 65, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(224, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        
       //table(b);
        System.out.println("hello world");
    }//GEN-LAST:event_jButton1ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    // End of variables declaration//GEN-END:variables

}
