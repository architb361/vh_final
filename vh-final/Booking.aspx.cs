﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;


public partial class Booking : System.Web.UI.Page
{
    string con_string = WebConfigurationManager.ConnectionStrings["virtualhighsConnectionString"].ConnectionString;
    SqlDataAdapter ad;
    DataTable dt1, dt2, dt3, dt4, dt5, dt6, dt7, dt8, dt9, dt10;



    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Gallery_Click(object sender, EventArgs e)
    {

    }
    protected void Events_Click(object sender, EventArgs e)
    {

    }
    protected void Home_click(object sender, EventArgs e)
    {

    }
    protected void Contact_Click(object sender, EventArgs e)
    {

    }




    protected void PC_CheckedChanged(object sender, EventArgs e)
    {
        PC1.Visible = true;
        PC_more.Visible = true;
    }

    protected void PS3_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void PS4_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void XBOX_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void PC1_CheckedChanged(object sender, EventArgs e)
    {
        no_of_pcs.Visible = false;
        if (PC1.Checked)
        {
            no_of_pcs.Visible = false;
            CheckBox1.Visible = false;
            CheckBox2.Visible = false;
            CheckBox3.Visible = false;
            CheckBox4.Visible = false;
            CheckBox5.Visible = false;
            CheckBox6.Visible = false;
            CheckBox7.Visible = false;
            CheckBox8.Visible = false;
            CheckBox9.Visible = false;
            CheckBox10.Visible = false;
            CheckBox11.Visible = false;
            CheckBox12.Visible = false;
            CheckBox13.Visible = false;
            CheckBox14.Visible = false;
            CheckBox15.Visible = false;
            CheckBox16.Visible = false;
            CheckBox17.Visible = false;
            CheckBox18.Visible = false;
            CheckBox19.Visible = false;
            CheckBox20.Visible = false;
            CheckBox21.Visible = false;
            CheckBox22.Visible = false;
            CheckBox23.Visible = false;
            CheckBox24.Visible = false;
            CheckBox25.Visible = false;
            CheckBox26.Visible = false;
            pc_booking.Visible = false;
            string qry = "select * from vh_pc1";
            ad = new SqlDataAdapter(qry, con_string);
            dt1 = new DataTable();
            ad.Fill(dt1);

            qry = "select * from vh_pc2";
            ad = new SqlDataAdapter(qry, con_string);
            dt2 = new DataTable();
            ad.Fill(dt2);

            qry = "select * from vh_pc3";
            ad = new SqlDataAdapter(qry, con_string);
            dt3 = new DataTable();
            ad.Fill(dt3);

            qry = "select * from vh_pc4";
            ad = new SqlDataAdapter(qry, con_string);
            dt4 = new DataTable();
            ad.Fill(dt4);

            qry = "select * from vh_pc5";
            ad = new SqlDataAdapter(qry, con_string);
            dt5 = new DataTable();
            ad.Fill(dt5);

            qry = "select * from vh_pc6";
            ad = new SqlDataAdapter(qry, con_string);
            dt6 = new DataTable();
            ad.Fill(dt6);

            qry = "select * from vh_pc7";
            ad = new SqlDataAdapter(qry, con_string);
            dt7 = new DataTable();
            ad.Fill(dt7);

            qry = "select * from vh_pc8";
            ad = new SqlDataAdapter(qry, con_string);
            dt8 = new DataTable();
            ad.Fill(dt8);

            qry = "select * from vh_pc9";
            ad = new SqlDataAdapter(qry, con_string);
            dt9 = new DataTable();
            ad.Fill(dt9);

            qry = "select * from vh_pc10";
            ad = new SqlDataAdapter(qry, con_string);
            dt10 = new DataTable();
            ad.Fill(dt10);

            DataRow dr1, dr2, dr3, dr4, dr5, dr6, dr7, dr8, dr9, dr10;

            for (int i = 0; i < 26; i++)
            {
                dr1 = dt1.Rows[i];
                dr2 = dt2.Rows[i];
                dr3 = dt3.Rows[i];
                dr4 = dt4.Rows[i];
                dr5 = dt5.Rows[i];
                dr6 = dt6.Rows[i];
                dr7 = dt7.Rows[i];
                dr8 = dt8.Rows[i];
                dr9 = dt9.Rows[i];
                dr10 = dt10.Rows[i];
                bool r1, r2, r3, r4, r5, r6, r7, r8, r9, r10;
                r1 = bool.Parse(dr1["booked"].ToString());
                r2 = bool.Parse(dr2["booked"].ToString());
                r3 = bool.Parse(dr3["booked"].ToString());
                r4 = bool.Parse(dr4["booked"].ToString());
                r5 = bool.Parse(dr5["booked"].ToString());
                r6 = bool.Parse(dr6["booked"].ToString());
                r7 = bool.Parse(dr7["booked"].ToString());
                r8 = bool.Parse(dr8["booked"].ToString());
                r9 = bool.Parse(dr9["booked"].ToString());
                r10 = bool.Parse(dr10["booked"].ToString());

                switch (i)
                {
                    case 0:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox1.Visible = true;
                        break;

                    case 1:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox2.Visible = true;
                        break;

                    case 2:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox3.Visible = true;
                        break;

                    case 3:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox4.Visible = true;
                        break;

                    case 4:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox5.Visible = true;
                        break;

                    case 5:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox6.Visible = true;
                        break;

                    case 6:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox7.Visible = true;
                        break;

                    case 7:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox8.Visible = true;
                        break;

                    case 8:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox9.Visible = true;
                        break;

                    case 9:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox10.Visible = true;
                        break;

                    case 10:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox11.Visible = true;
                        break;

                    case 11:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox12.Visible = true;
                        break;

                    case 12:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox13.Visible = true;
                        break;

                    case 13:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox14.Visible = true;
                        break;

                    case 14:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox15.Visible = true;
                        break;

                    case 15:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox16.Visible = true;
                        break;
                    case 16:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox17.Visible = true;
                        break;

                    case 17:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox18.Visible = true;
                        break;

                    case 18:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox19.Visible = true;
                        break;

                    case 19:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox20.Visible = true;
                        break;

                    case 20:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox21.Visible = true;
                        break;

                    case 21:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox22.Visible = true;
                        break;

                    case 22:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox23.Visible = true;
                        break;

                    case 23:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox24.Visible = true;
                        break;

                    case 24:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox25.Visible = true;
                        break;

                    case 25:
                        if (r1 == true && r2 == true && r3 == true && r4 == true && r5 == true && r6 == true && r7 == true && r8 == true && r9 == true && r10 == true)
                        {
                        }
                        else
                            CheckBox26.Visible = true;
                        break;
                }
            }
            pc_booking.Visible = true;
        }
        else
        {
            CheckBox1.Visible = false;
            CheckBox2.Visible = false;
            CheckBox3.Visible = false;
            CheckBox4.Visible = false;
            CheckBox5.Visible = false;
            CheckBox6.Visible = false;
            CheckBox7.Visible = false;
            CheckBox8.Visible = false;
            CheckBox9.Visible = false;
            CheckBox10.Visible = false;
            CheckBox11.Visible = false;
            CheckBox12.Visible = false;
            CheckBox13.Visible = false;
            CheckBox14.Visible = false;
            CheckBox15.Visible = false;
            CheckBox16.Visible = false;
            CheckBox17.Visible = false;
            CheckBox18.Visible = false;
            CheckBox19.Visible = false;
            CheckBox20.Visible = false;
            CheckBox21.Visible = false;
            CheckBox22.Visible = false;
            CheckBox23.Visible = false;
            CheckBox24.Visible = false;
            CheckBox25.Visible = false;
            CheckBox26.Visible = false;
            pc_booking.Visible = false;
        }


    }

    protected void PC_more_CheckedChanged(object sender, EventArgs e)
    {
        if (PC_more.Checked)
        {
            CheckBox1.Visible = false;
            CheckBox2.Visible = false;
            CheckBox3.Visible = false;
            CheckBox4.Visible = false;
            CheckBox5.Visible = false;
            CheckBox6.Visible = false;
            CheckBox7.Visible = false;
            CheckBox8.Visible = false;
            CheckBox9.Visible = false;
            CheckBox10.Visible = false;
            CheckBox11.Visible = false;
            CheckBox12.Visible = false;
            CheckBox13.Visible = false;
            CheckBox14.Visible = false;
            CheckBox15.Visible = false;
            CheckBox16.Visible = false;
            CheckBox17.Visible = false;
            CheckBox18.Visible = false;
            CheckBox19.Visible = false;
            CheckBox20.Visible = false;
            CheckBox21.Visible = false;
            CheckBox22.Visible = false;
            CheckBox23.Visible = false;
            CheckBox24.Visible = false;
            CheckBox25.Visible = false;
            CheckBox26.Visible = false;
            pc_booking.Visible = false;
            no_of_pcs.Visible = true;
        }
        else
            no_of_pcs.Visible = false;
    }
    protected void no_of_pcs_SelectedIndexChanged(object sender, EventArgs e)
    {

        CheckBox1.Visible = false;
        CheckBox2.Visible = false;
        CheckBox3.Visible = false;
        CheckBox4.Visible = false;
        CheckBox5.Visible = false;
        CheckBox6.Visible = false;
        CheckBox7.Visible = false;
        CheckBox8.Visible = false;
        CheckBox9.Visible = false;
        CheckBox10.Visible = false;
        CheckBox11.Visible = false;
        CheckBox12.Visible = false;
        CheckBox13.Visible = false;
        CheckBox14.Visible = false;
        CheckBox15.Visible = false;
        CheckBox16.Visible = false;
        CheckBox17.Visible = false;
        CheckBox18.Visible = false;
        CheckBox19.Visible = false;
        CheckBox20.Visible = false;
        CheckBox21.Visible = false;
        CheckBox22.Visible = false;
        CheckBox23.Visible = false;
        CheckBox24.Visible = false;
        CheckBox25.Visible = false;
        CheckBox26.Visible = false;

        int no = int.Parse(no_of_pcs.SelectedValue);

        string qry = "select * from vh_pc1";
        ad = new SqlDataAdapter(qry, con_string);
        dt1 = new DataTable();
        ad.Fill(dt1);

        qry = "select * from vh_pc2";
        ad = new SqlDataAdapter(qry, con_string);
        dt2 = new DataTable();
        ad.Fill(dt2);

        qry = "select * from vh_pc3";
        ad = new SqlDataAdapter(qry, con_string);
        dt3 = new DataTable();
        ad.Fill(dt3);

        qry = "select * from vh_pc4";
        ad = new SqlDataAdapter(qry, con_string);
        dt4 = new DataTable();
        ad.Fill(dt4);

        qry = "select * from vh_pc5";
        ad = new SqlDataAdapter(qry, con_string);
        dt5 = new DataTable();
        ad.Fill(dt5);

        qry = "select * from vh_pc6";
        ad = new SqlDataAdapter(qry, con_string);
        dt6 = new DataTable();
        ad.Fill(dt6);

        qry = "select * from vh_pc7";
        ad = new SqlDataAdapter(qry, con_string);
        dt7 = new DataTable();
        ad.Fill(dt7);

        qry = "select * from vh_pc8";
        ad = new SqlDataAdapter(qry, con_string);
        dt8 = new DataTable();
        ad.Fill(dt8);

        qry = "select * from vh_pc9";
        ad = new SqlDataAdapter(qry, con_string);
        dt9 = new DataTable();
        ad.Fill(dt9);

        qry = "select * from vh_pc10";
        ad = new SqlDataAdapter(qry, con_string);
        dt10 = new DataTable();
        ad.Fill(dt10);

        DataRow dr1, dr2, dr3, dr4, dr5, dr6, dr7, dr8, dr9, dr10;


        for (int i = 0; i < 26; i++)
        {
            int count = 0;
            dr1 = dt1.Rows[i];
            dr2 = dt2.Rows[i];
            dr3 = dt3.Rows[i];
            dr4 = dt4.Rows[i];
            dr5 = dt5.Rows[i];
            dr6 = dt6.Rows[i];
            dr7 = dt7.Rows[i];
            dr8 = dt8.Rows[i];
            dr9 = dt9.Rows[i];
            dr10 = dt10.Rows[i];
            bool r1, r2, r3, r4, r5, r6, r7, r8, r9, r10;
            r1 = bool.Parse(dr1["booked"].ToString());
            r2 = bool.Parse(dr2["booked"].ToString());
            r3 = bool.Parse(dr3["booked"].ToString());
            r4 = bool.Parse(dr4["booked"].ToString());
            r5 = bool.Parse(dr5["booked"].ToString());
            r6 = bool.Parse(dr6["booked"].ToString());
            r7 = bool.Parse(dr7["booked"].ToString());
            r8 = bool.Parse(dr8["booked"].ToString());
            r9 = bool.Parse(dr9["booked"].ToString());
            r10 = bool.Parse(dr10["booked"].ToString());

            if (r1 == false)
                count++;
            if (r2 == false)
                count++;
            if (r3 == false)
                count++;
            if (r4 == false)
                count++;
            if (r5 == false)
                count++;
            if (r6 == false)
                count++;
            if (r7 == false)
                count++;
            if (r8 == false)
                count++;
            if (r9 == false)
                count++;
            if (r10 == false)
                count++;
            if (count >= no)
            {
                switch (i)
                {
                    case 0:
                        CheckBox1.Visible = true;
                        break;

                    case 1:
                        CheckBox2.Visible = true;
                        break;

                    case 2:
                        CheckBox3.Visible = true;
                        break;

                    case 3:
                        CheckBox4.Visible = true;
                        break;

                    case 4:
                        CheckBox5.Visible = true;
                        break;

                    case 5:
                        CheckBox6.Visible = true;
                        break;

                    case 6:
                        CheckBox7.Visible = true;
                        break;

                    case 7:
                        CheckBox8.Visible = true;
                        break;

                    case 8:
                        CheckBox9.Visible = true;
                        break;

                    case 9:
                        CheckBox10.Visible = true;
                        break;

                    case 10:
                        CheckBox11.Visible = true;
                        break;

                    case 11:
                        CheckBox12.Visible = true;
                        break;

                    case 12:
                        CheckBox13.Visible = true;
                        break;

                    case 13:
                        CheckBox14.Visible = true;
                        break;

                    case 14:
                        CheckBox15.Visible = true;
                        break;

                    case 15:
                        CheckBox16.Visible = true;
                        break;

                    case 16:
                        CheckBox17.Visible = true;
                        break;

                    case 17:
                        CheckBox18.Visible = true;
                        break;

                    case 18:
                        CheckBox19.Visible = true;
                        break;

                    case 19:
                        CheckBox20.Visible = true;
                        break;

                    case 20:
                        CheckBox21.Visible = true;
                        break;

                    case 21:
                        CheckBox22.Visible = true;
                        break;

                    case 22:
                        CheckBox23.Visible = true;
                        break;

                    case 23:
                        CheckBox24.Visible = true;
                        break;

                    case 24:
                        CheckBox25.Visible = true;
                        break;

                    case 25:
                        CheckBox26.Visible = true;
                        break;
                }
            }
        }
        pc_booking.Visible = true;
    }


    protected void pc_booking_Click(object sender, EventArgs e)
    {
        string qry = "select * from vh_pc1";
        ad = new SqlDataAdapter(qry, con_string);
        dt1 = new DataTable();
        ad.Fill(dt1);

        qry = "select * from vh_pc2";
        ad = new SqlDataAdapter(qry, con_string);
        dt2 = new DataTable();
        ad.Fill(dt2);

        qry = "select * from vh_pc3";
        ad = new SqlDataAdapter(qry, con_string);
        dt3 = new DataTable();
        ad.Fill(dt3);

        qry = "select * from vh_pc4";
        ad = new SqlDataAdapter(qry, con_string);
        dt4 = new DataTable();
        ad.Fill(dt4);

        qry = "select * from vh_pc5";
        ad = new SqlDataAdapter(qry, con_string);
        dt5 = new DataTable();
        ad.Fill(dt5);

        qry = "select * from vh_pc6";
        ad = new SqlDataAdapter(qry, con_string);
        dt6 = new DataTable();
        ad.Fill(dt6);

        qry = "select * from vh_pc7";
        ad = new SqlDataAdapter(qry, con_string);
        dt7 = new DataTable();
        ad.Fill(dt7);

        qry = "select * from vh_pc8";
        ad = new SqlDataAdapter(qry, con_string);
        dt8 = new DataTable();
        ad.Fill(dt8);

        qry = "select * from vh_pc9";
        ad = new SqlDataAdapter(qry, con_string);
        dt9 = new DataTable();
        ad.Fill(dt9);

        qry = "select * from vh_pc10";
        ad = new SqlDataAdapter(qry, con_string);
        dt10 = new DataTable();
        ad.Fill(dt10);

        if (PC1.Checked)
        {
            int count = 0;
            bool[] arr = new bool[26];
            for (int i = 0; i < 26; i++)
                arr[i] = false;

            if (CheckBox1.Checked)
            {
                count++;
                arr[0] = true;
            }
            if (CheckBox2.Checked)
            {
                count++;
                arr[1] = true;
            }
            if (CheckBox3.Checked)
            {
                count++;
                arr[2] = true;
            }
            if (CheckBox4.Checked)
            {
                count++;
                arr[3] = true;
            }
            if (CheckBox5.Checked)
            {
                count++;
                arr[4] = true;
            }
            if (CheckBox6.Checked)
            {
                count++;
                arr[5] = true;
            }
            if (CheckBox7.Checked)
            {
                count++;
                arr[6] = true;
            }
            if (CheckBox8.Checked)
            {
                count++;
                arr[7] = true;
            }
            if (CheckBox9.Checked)
            {
                count++;
                arr[8] = true;
            }
            if (CheckBox10.Checked)
            {
                count++;
                arr[9] = true;
            }
            if (CheckBox11.Checked)
            {
                count++;
                arr[10] = true;
            }
            if (CheckBox12.Checked)
            {
                count++;
                arr[11] = true;
            }
            if (CheckBox13.Checked)
            {
                count++;
                arr[12] = true;
            }
            if (CheckBox14.Checked)
            {
                count++;
                arr[13] = true;
            }
            if (CheckBox15.Checked)
            {
                count++;
                arr[14] = true;
            }
            if (CheckBox16.Checked)
            {
                count++;
                arr[15] = true;
            }
            if (CheckBox17.Checked)
            {
                count++;
                arr[16] = true;
            }
            if (CheckBox18.Checked)
            {
                count++;
                arr[17] = true;
            }
            if (CheckBox19.Checked)
            {
                count++;
                arr[18] = true;
            }
            if (CheckBox20.Checked)
            {
                count++;
                arr[19] = true;
            }
            if (CheckBox21.Checked)
            {
                count++;
                arr[20] = true;
            }
            if (CheckBox22.Checked)
            {
                count++;
                arr[21] = true;
            }
            if (CheckBox23.Checked)
            {
                count++;
                arr[22] = true;
            }
            if (CheckBox24.Checked)
            {
                count++;
                arr[23] = true;
            }
            if (CheckBox25.Checked)
            {
                count++;
                arr[24] = true;
            }
            if (CheckBox26.Checked)
            {
                count++;
                arr[25] = true;
            }
            if (count != 0)
            {
                DataRow dr1, dr2, dr3, dr4, dr5, dr6, dr7, dr8, dr9, dr10;
                int ra1 = 0, ra2 = 0, ra3 = 0, ra4 = 0, ra5 = 0, ra6 = 0, ra7 = 0, ra8 = 0, ra9 = 0, ra10 = 0;
                int flag = 0;
                for (int i = 0; i < 26; i++)
                {
                    if (arr[i] == true)
                    {
                        dr1 = dt1.Rows[i];
                        dr2 = dt2.Rows[i];
                        dr3 = dt3.Rows[i];
                        dr4 = dt4.Rows[i];
                        dr5 = dt5.Rows[i];
                        dr6 = dt6.Rows[i];
                        dr7 = dt7.Rows[i];
                        dr8 = dt8.Rows[i];
                        dr9 = dt9.Rows[i];
                        dr10 = dt10.Rows[i];
                        bool r1, r2, r3, r4, r5, r6, r7, r8, r9, r10;
                        r1 = bool.Parse(dr1["booked"].ToString());
                        r2 = bool.Parse(dr2["booked"].ToString());
                        r3 = bool.Parse(dr3["booked"].ToString());
                        r4 = bool.Parse(dr4["booked"].ToString());
                        r5 = bool.Parse(dr5["booked"].ToString());
                        r6 = bool.Parse(dr6["booked"].ToString());
                        r7 = bool.Parse(dr7["booked"].ToString());
                        r8 = bool.Parse(dr8["booked"].ToString());
                        r9 = bool.Parse(dr9["booked"].ToString());
                        r10 = bool.Parse(dr10["booked"].ToString());

                        if (r1 == false)
                            ra1++;

                        if (r2 == false)
                            ra2++;

                        if (r3 == false)
                            ra3++;

                        if (r4 == false)
                            ra4++;

                        if (r5 == false)
                            ra5++;

                        if (r6 == false)
                            ra6++;

                        if (r7 == false)
                            ra7++;

                        if (r8 == false)
                            ra8++;

                        if (r9 == false)
                            ra9++;

                        if (r10 == false)
                            ra10++;

                    }
                }
                if (ra1 == count)
                    flag = 1;
                else if (ra2 == count)
                    flag = 2;
                else if (ra3 == count)
                    flag = 3;
                else if (ra4 == count)
                    flag = 4;
                else if (ra5 == count)
                    flag = 5;
                else if (ra6 == count)
                    flag = 6;
                else if (ra7 == count)
                    flag = 7;
                else if (ra8 == count)
                    flag = 8;
                else if (ra9 == count)
                    flag = 9;
                else if (ra10 == count)
                    flag = 10;
                string email_id = Session["email-id"].ToString();
                SqlConnection con = new SqlConnection(con_string);
                for (int i = 0; i < 26; i++)
                {
                    if (arr[i] == true)
                    {
                        qry = "update vh_pc" + flag.ToString() + " set booked=@booked,email_id=@email_id where slotid=" + (i + 1).ToString();
                        SqlCommand cmd = new SqlCommand(qry, con);
                        cmd.Parameters.AddWithValue("@booked", "true");
                        cmd.Parameters.AddWithValue("@email_id", email_id);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                Response.Write("<script>alert('booking sucessful')</script>");
            }
            else
                Response.Write("<script>alert('please check to book')</script>");
        }



        else if (PC_more.Checked)
        {
            int nopcs = int.Parse(no_of_pcs.SelectedValue.ToString());
            int count = 0;
            int cn = 0;
            bool[] arr = new bool[26];
            for (int i = 0; i < 26; i++)
                arr[i] = false;

            if (CheckBox1.Checked)
            {
                count++;
                arr[0] = true;
            }
            if (CheckBox2.Checked)
            {
                count++;
                arr[1] = true;
            }
            if (CheckBox3.Checked)
            {
                count++;
                arr[2] = true;
            }
            if (CheckBox4.Checked)
            {
                count++;
                arr[3] = true;
            }
            if (CheckBox5.Checked)
            {
                count++;
                arr[4] = true;
            }
            if (CheckBox6.Checked)
            {
                count++;
                arr[5] = true;
            }
            if (CheckBox7.Checked)
            {
                count++;
                arr[6] = true;
            }
            if (CheckBox8.Checked)
            {
                count++;
                arr[7] = true;
            }
            if (CheckBox9.Checked)
            {
                count++;
                arr[8] = true;
            }
            if (CheckBox10.Checked)
            {
                count++;
                arr[9] = true;
            }
            if (CheckBox11.Checked)
            {
                count++;
                arr[10] = true;
            }
            if (CheckBox12.Checked)
            {
                count++;
                arr[11] = true;
            }
            if (CheckBox13.Checked)
            {
                count++;
                arr[12] = true;
            }
            if (CheckBox14.Checked)
            {
                count++;
                arr[13] = true;
            }
            if (CheckBox15.Checked)
            {
                count++;
                arr[14] = true;
            }
            if (CheckBox16.Checked)
            {
                count++;
                arr[15] = true;
            }
            if (CheckBox17.Checked)
            {
                count++;
                arr[16] = true;
            }
            if (CheckBox18.Checked)
            {
                count++;
                arr[17] = true;
            }
            if (CheckBox19.Checked)
            {
                count++;
                arr[18] = true;
            }
            if (CheckBox20.Checked)
            {
                count++;
                arr[19] = true;
            }
            if (CheckBox21.Checked)
            {
                count++;
                arr[20] = true;
            }
            if (CheckBox22.Checked)
            {
                count++;
                arr[21] = true;
            }
            if (CheckBox23.Checked)
            {
                count++;
                arr[22] = true;
            }
            if (CheckBox24.Checked)
            {
                count++;
                arr[23] = true;
            }
            if (CheckBox25.Checked)
            {
                count++;
                arr[24] = true;
            }
            if (CheckBox26.Checked)
            {
                count++;
                arr[25] = true;
            }
            if (count != 0)
            {
                DataRow dr1, dr2, dr3, dr4, dr5, dr6, dr7, dr8, dr9, dr10;
                int ra1 = 0, ra2 = 0, ra3 = 0, ra4 = 0, ra5 = 0, ra6 = 0, ra7 = 0, ra8 = 0, ra9 = 0, ra10 = 0;
                int[] flag = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
                for (int i = 0; i < 26; i++)
                {
                    if (arr[i] == true)
                    {
                        dr1 = dt1.Rows[i];
                        dr2 = dt2.Rows[i];
                        dr3 = dt3.Rows[i];
                        dr4 = dt4.Rows[i];
                        dr5 = dt5.Rows[i];
                        dr6 = dt6.Rows[i];
                        dr7 = dt7.Rows[i];
                        dr8 = dt8.Rows[i];
                        dr9 = dt9.Rows[i];
                        dr10 = dt10.Rows[i];
                        bool r1, r2, r3, r4, r5, r6, r7, r8, r9, r10;
                        r1 = bool.Parse(dr1["booked"].ToString());
                        r2 = bool.Parse(dr2["booked"].ToString());
                        r3 = bool.Parse(dr3["booked"].ToString());
                        r4 = bool.Parse(dr4["booked"].ToString());
                        r5 = bool.Parse(dr5["booked"].ToString());
                        r6 = bool.Parse(dr6["booked"].ToString());
                        r7 = bool.Parse(dr7["booked"].ToString());
                        r8 = bool.Parse(dr8["booked"].ToString());
                        r9 = bool.Parse(dr9["booked"].ToString());
                        r10 = bool.Parse(dr10["booked"].ToString());

                        if (r1 == false)
                            ra1++;

                        if (r2 == false)
                            ra2++;

                        if (r3 == false)
                            ra3++;

                        if (r4 == false)
                            ra4++;

                        if (r5 == false)
                            ra5++;

                        if (r6 == false)
                            ra6++;

                        if (r7 == false)
                            ra7++;

                        if (r8 == false)
                            ra8++;

                        if (r9 == false)
                            ra9++;

                        if (r10 == false)
                            ra10++;

                    }
                }
                if (ra1 == count)
                    flag[0] = 1;
                if (ra2 == count)
                    flag[1] = 1;
                if (ra3 == count)
                    flag[2] = 1;
                if (ra4 == count)
                    flag[3] = 1;
                if (ra5 == count)
                    flag[4] = 1;
                if (ra6 == count)
                    flag[5] = 1;
                if (ra7 == count)
                    flag[6] = 1;
                if (ra8 == count)
                    flag[7] = 1;
                if (ra9 == count)
                    flag[8] = 1;
                if (ra10 == count)
                    flag[9] = 1;
                string email_id = Session["email-id"].ToString();
                SqlConnection con = new SqlConnection(con_string);
                for (int k = 0; k < 10; k++)
                {
                    if (flag[k] != 0 && cn != nopcs)
                    {
                        for (int i = 0; i < 26; i++)
                        {
                            if (arr[i] == true)
                            {
                                qry = "update vh_pc" + (k + 1).ToString() + " set booked=@booked,email_id=@email_id where slotid=" + (i + 1).ToString();
                                SqlCommand cmd = new SqlCommand(qry, con);
                                cmd.Parameters.AddWithValue("@booked", "true");
                                cmd.Parameters.AddWithValue("@email_id", email_id);
                                con.Open();
                                cmd.ExecuteNonQuery();
                                con.Close();
                            }
                        }
                        cn++;
                    }
                }
                Response.Write("<script>alert('booking sucessful')</script>");
            }
            else
                Response.Write("<script>alert('please check to book')</script>");

        }

    }
}