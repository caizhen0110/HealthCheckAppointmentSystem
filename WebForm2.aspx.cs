using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HW1_HealthCheckAppointmentSystem
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
            Label1.Text += "基本資料為<br/>";
            TextBox nametextbox = (TextBox)Page.PreviousPage.FindControl("TextBox_name");
            Label1.Text += "姓名為:"+nametextbox.Text+ "<br/>";
            TextBox birthtextbox = (TextBox)Page.PreviousPage.FindControl("TextBox_birth");
            Label1.Text += "生日:"+ birthtextbox.Text+ "<br/>";
            TextBox idtextbox = (TextBox)Page.PreviousPage.FindControl("TextBox_id");
            Label1.Text += "身份證/居留證/護照:" + idtextbox.Text+ "<br/>";
            TextBox phonetextbox = (TextBox)Page.PreviousPage.FindControl("TextBox_phone");
            Label1.Text += "連絡電話:" + phonetextbox.Text+ "<br/>";
            TextBox emailtextbox = (TextBox)Page.PreviousPage.FindControl("TextBox_email");
            Label1.Text += "電子郵件:" + emailtextbox.Text+ "<br/>";
            TextBox addresstextbox = (TextBox)Page.PreviousPage.FindControl("TextBox_address");
            Label1.Text += "地址:" + addresstextbox.Text+ "<br/>";
            //Calendar Calendar1 = (Calendar)Page.PreviousPage.FindControl("Calendar1");
            //Label1.Text += "日期:" + Calendar1.SelectedDate+ "<br/>";
            Label1.Text += "家族病史:<br/>";
            CheckBoxList familyDisease__CheckBoxList = (CheckBoxList)Page.PreviousPage.FindControl("CheckBoxList_familyDisease");
            for (int i = 0; i < familyDisease__CheckBoxList.Items.Count; i++)
            {
                if (familyDisease__CheckBoxList.Items[i].Selected == true)
                {
                    if (i == 6)
                    {
                        TextBox Other_FamilyDisease__TextBox = (TextBox)Page.PreviousPage.FindControl("TextBox_Other_FamilyDisease");
                        Label1.Text += Other_FamilyDisease__TextBox.Text + "<br/>";
                    }
                    else
                    {
                        Label1.Text += familyDisease__CheckBoxList.Items[i].Text + "<br/>";
                    }

                }
            }

            Label2.Text = "";
            Label2.Text += "選擇的健檢項目為:<br/>";
            int count = 0;
            int pay = 0;
            CheckBoxList choise_ExaminationIteems__CheckBoxList = (CheckBoxList)Page.PreviousPage.FindControl("CheckBoxList_HealthExaminationIteems");
            for(int i=0;i< choise_ExaminationIteems__CheckBoxList.Items.Count; i++)
            {
                if (choise_ExaminationIteems__CheckBoxList.Items[i].Selected == true)
                {
                    count++;
                    Label2.Text += count + ". " + choise_ExaminationIteems__CheckBoxList.Items[i].Text + "<br/>";
                    pay += int.Parse(choise_ExaminationIteems__CheckBoxList.Items[i].Value);
                }
            }
            Label2.Text += "<br/>"+"本次健檢費用為 "+ pay + " 元<br/>";
        }
    }
}