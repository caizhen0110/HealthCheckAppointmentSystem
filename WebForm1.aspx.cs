using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HW1_HealthCheckAppointmentSystem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //基本資料_送出
        protected void Button_BasicInformation_submit_Click(object sender, EventArgs e)
        {
            Panel__HealthExaminationIteems.Visible = true;
            Panel_BasicInformation.Visible = false;

            //選擇生日大於今天
            //if (string.Equals(TextBox_birth.Text,DateTime.Now.ToString()) > 0 )
            //{
            //    Button_BasicInformation_submit.Enabled = false;
            //}
            //else
            //{
            //    Button_BasicInformation_submit.Enabled = true;
            //}
        }

        //基本資料_清除
        protected void Button_BasicInformation_clear_Click(object sender, EventArgs e)
        {
            TextBox_name.Text = "";
            RadioButton_genderM.Checked = false;
            RadioButton_genderF.Checked = false;
            TextBox_birth.Text = "";
            TextBox_id.Text = "";
            TextBox_phone.Text = "";
            TextBox_email.Text = "";
            TextBox_address.Text = "";
        }

        protected void CheckBoxList_familyDisease_SelectedIndexChanged(object sender, EventArgs e)
        {
            //勾選 無
            if(CheckBoxList_familyDisease.Items[0].Selected == true)
            {
                for(int i=1; i< CheckBoxList_familyDisease.Items.Count; i++)
                {
                    CheckBoxList_familyDisease.Items[i].Enabled = false;
                    CheckBoxList_familyDisease.Items[i].Selected = false;
                    TextBox_Other_FamilyDisease.Text = "";
                }
            }
            else
            {
                for (int i = 1; i < CheckBoxList_familyDisease.Items.Count; i++)
                {
                    CheckBoxList_familyDisease.Items[i].Enabled = true;
                }
            }
            //啟動其他疾病的填寫
            if(CheckBoxList_familyDisease.Items[6].Selected == true)
            {
                TextBox_Other_FamilyDisease.Enabled = true;
            }
            else
            {
                TextBox_Other_FamilyDisease.Enabled = false;
            }
        }

        protected void Button_HealthExaminationIteems_submit_Click(object sender, EventArgs e)
        {
            Server.Transfer("WebForm2.aspx", true);
        }

        //檢查項目_送出 檢驗選取無錯誤
        protected void SelecteDate_and_SelectedHealthExaminationIteems_CHECK(object sender, EventArgs e)
        {
            if(CheckBoxList_HealthExaminationIteems.SelectedItem == null || DateTime.Now.Date.CompareTo(Calendar1.SelectedDate) >= 0){
                Button_HealthExaminationIteems_submit.Enabled = false;
            }
            else
            {
                Button_HealthExaminationIteems_submit.Enabled = true;
            }
        }
    }
}