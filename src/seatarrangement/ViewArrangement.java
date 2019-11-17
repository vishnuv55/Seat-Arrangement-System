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
import net.proteanit.sql.DbUtils;

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
                
                int[] rollno=new int[3];
                String[] name=new String[3];
/*
                //department='cs' OR department='ec' ORDER BY department ASC 
                
                Statement st2=con.createStatement();
                ResultSet rs2=st2.executeQuery(sql2);
                while(rs2.next()){
                    int k=0;
                    for(int i=0;i<room.length;i++){
                        String sars2.getString(1)
                        if(room[i].equals()){
                            bench[k]=rs2.getInt(2);
                            k++;
                        }
                    }
                }*/
                for(int i=0;i<12;i++){
                    String r=room[i];
                    String sql2="SELECT benches FROM room where roomid="+r+"";
                    Statement st2=con.createStatement();
                    ResultSet rs2=st2.executeQuery(sql2);
                    if(rs2.next()){
                        bench[i]=rs2.getInt(1);
                    }
                    else{
                        bench[i]=0;
                    }
                }
                for(int i=0;i<12;i++){
                    System.out.println(bench[i]);
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
            }catch (SQLException ex) {
            Logger.getLogger(ViewArrangement.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void printTable(){
        String url ="jdbc:mysql://localhost/sas?autoReconnect=true&serverTimezone=UTC&useSSL=False&allowPublicKeyRetrieval=true";
            try (Connection con = DriverManager.getConnection(url, "root", "")) {
                String sql="SELECT `room_no`, `c1_roll_no`, `c1_name`, `c2_roll_no`, `c2_name`, `c3_roll_no`, `c3_name` FROM `arrangement`";
                PreparedStatement pst=con.prepareStatement(sql);
                 ResultSet resultSet=pst.executeQuery(sql);
                 resultTable.setModel(DbUtils.resultSetToTableModel(resultSet));
            } catch (SQLException ex) {
            Logger.getLogger(Panel2.class.getName()).log(Level.SEVERE, null, ex);
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

        jScrollPane1 = new javax.swing.JScrollPane();
        resultTable = new javax.swing.JTable();
        jButton1 = new javax.swing.JButton();

        setBackground(new java.awt.Color(255, 255, 255));

        resultTable.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {},
                {},
                {},
                {}
            },
            new String [] {

            }
        ));
        jScrollPane1.setViewportView(resultTable);

        jButton1.setBackground(new java.awt.Color(255, 153, 0));
        jButton1.setFont(new java.awt.Font("SansSerif", 0, 18)); // NOI18N
        jButton1.setText("view");
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
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(35, 35, 35)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 701, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(329, 329, 329)
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 121, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(49, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(28, 28, 28)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 451, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jButton1)
                .addContainerGap(45, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        printTable();
    }//GEN-LAST:event_jButton1ActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable resultTable;
    // End of variables declaration//GEN-END:variables

}
