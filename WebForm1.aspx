<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HW1_HealthCheckAppointmentSystem.WebForm1" MaintainScrollPositionOnPostback="true"%>
<%--MaintainScrollPositionOnPostback="true" -> 避免更新後網頁跳回最上面--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link href="HW1_StyleSheet.css" rel="stylesheet" type="text/css" /> <%--連結樣式表--%>
    <style type="text/css">
        .auto-style1 {
            width: 1778px;
            height: 300px;
            border: 1px solid #008080;
        }
        .auto-style44 {
            width: 63px;
            text-align: center;
            height: 26px;
            font-weight: bold;
        }
        .auto-style50 {
            border-collapse: separate;
        }
        .auto-style62 {
            width: 570px;
            text-align: center;
            height: 26px;
            font-weight: bold;
        }
        .auto-style63 {
            width: 570px;
            height: 35px;
        }
        .auto-style64 {
            width: 570px;
            height: 37px;
        }
        .auto-style66 {
            line-height: 150%;
        }
        .auto-style67 {
            line-height: 150%;
            width: 161px;
        }
        .auto-style68 {
            width: 63px;
        }
        .auto-style76 {
            width: 570px;
        }
        .auto-style78 {
            width: 570px;
            height: 26px;
            border-collapse: separate;
        }
        .auto-style79 {
            width: 199px;
            text-align: center;
            height: 26px;
            font-weight: bold;
        }
        .auto-style80 {
            width: 199px;
            height: 35px;
        }
        .auto-style81 {
            width: 199px;
            height: 37px;
        }
        .auto-style82 {
            width: 199px;
        }
        .auto-style83 {
            width: 199px;
            height: 26px;
            border-collapse: separate;
        }
        .auto-style84 {
            width: 166px;
            text-align: center;
            height: 26px;
            font-weight: bold;
        }
        .auto-style85 {
            width: 166px;
            height: 35px;
        }
        .auto-style86 {
            width: 166px;
            height: 37px;
        }
        .auto-style87 {
            width: 166px;
            height: 36px;
        }
        .auto-style88 {
            width: 166px;
            height: 26px;
            border-collapse: separate;
        }
        .auto-style89 {
            top: 0px;
            left: 0px;
            position: relative;
            height: 24px;
            width: 51px;
            z-index: 1;
        }
    </style>




</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="💉健康檢查預約系統💊" Font-Size="XX-Large" CssClass="auto-style89"></asp:Label>
            <br />
            <br />
            <asp:Panel ID="Panel_BasicInformation" runat="server" BackColor="#CCFFFF">
                <br />
                <asp:Label ID="Label_title_BasicInformation" runat="server" Font-Size="XX-Large" Text="基本資料" Font-Names="辰宇落雁體 Thin" style="letter-spacing: 10px"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label_title_Name" runat="server" Text="姓名：" CssClass="小標題"></asp:Label>
                <asp:TextBox ID="TextBox_name" runat="server" CausesValidation="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_name" runat="server" ControlToValidate="TextBox_name" ErrorMessage="姓名 不可空白" CssClass="必填" SetFocusOnError="True">請輸入姓名！</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label_title_Gender" runat="server" CssClass="小標題" Text="性別："></asp:Label>
                <asp:RadioButton ID="RadioButton_genderM" runat="server" CausesValidation="True" GroupName="gender" Text="男" Checked="True" />
                <asp:RadioButton ID="RadioButton_genderF" runat="server" CausesValidation="True" GroupName="gender" Text="女" />
                <br />
                <asp:Label ID="Label_title_Birth" runat="server" Text="生日：" CssClass="小標題"></asp:Label>
                <asp:TextBox ID="TextBox_birth" runat="server" CausesValidation="True" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_birth" runat="server" ControlToValidate="TextBox_birth" CssClass="必填" ErrorMessage="生日 不可空白" SetFocusOnError="True">請輸入生日！</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label_title_ID" runat="server" Text="身份證/居留證/護照：" CssClass="小標題"></asp:Label>
                <asp:TextBox ID="TextBox_id" runat="server" CausesValidation="True" EnableTheming="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_id" runat="server" ControlToValidate="TextBox_id" CssClass="必填" ErrorMessage="身份證/居留證/護照 不可空白" SetFocusOnError="True" Display="Dynamic">請輸入身份證/居留證/護照！</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator_id" runat="server" ControlToValidate="TextBox_id" CssClass="必填" ErrorMessage="身份證/居留證/護照 須為字母+9個數字" ValidationExpression="[a-zA-Z][0-9]{9}|[a-zA-Z]{2}[0-9]{8}" Display="Dynamic" SetFocusOnError="True">身份證/居留證/護照 格式錯誤！</asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label_title_Phone" runat="server" Text="連絡電話：" CssClass="小標題"></asp:Label>
                <asp:TextBox ID="TextBox_phone" runat="server" CausesValidation="True" TextMode="Phone"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_phone" runat="server" ControlToValidate="TextBox_phone" CssClass="必填" ErrorMessage="連絡電話 不可空白" SetFocusOnError="True" Display="Dynamic">請輸入連絡電話！</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator_phone" runat="server" ControlToValidate="TextBox_phone" CssClass="必填" Display="Dynamic" ErrorMessage="連絡電話 須為9或10個數字" SetFocusOnError="True" ValidationExpression="[0-9]{9,10}">連絡電話 格式錯誤！</asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label_title_Email" runat="server" Text="電子郵件：" CssClass="小標題"></asp:Label>
                <asp:TextBox ID="TextBox_email" runat="server" CausesValidation="True" TextMode="Email" Width="350px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_email" runat="server" ControlToValidate="TextBox_email" CssClass="必填" ErrorMessage="電子郵件 不可空白" SetFocusOnError="True" Display="Dynamic">請輸入電子郵件！</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator_email" runat="server" ControlToValidate="TextBox_email" CssClass="必填" ErrorMessage="電子郵件 格式錯誤" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" SetFocusOnError="True">電子郵件 格式錯誤！</asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label_title_Address" runat="server" CssClass="小標題" Text="地址："></asp:Label>
                <asp:TextBox ID="TextBox_address" runat="server" Width="600px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_address" runat="server" ControlToValidate="TextBox_email" CssClass="必填" ErrorMessage="地址 不可空白" SetFocusOnError="True">請輸入地址！</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label_title_FamilyDisease" runat="server" CssClass="小標題" Text="家族病史："></asp:Label>
                <asp:CheckBoxList ID="CheckBoxList_familyDisease" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList_familyDisease_SelectedIndexChanged" RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <asp:ListItem Value="0">無</asp:ListItem>
                    <asp:ListItem Value="1">大腸癌</asp:ListItem>
                    <asp:ListItem Value="2">高血壓</asp:ListItem>
                    <asp:ListItem Value="3">糖尿病</asp:ListItem>
                    <asp:ListItem Value="4">氣喘</asp:ListItem>
                    <asp:ListItem Value="5">心臟病</asp:ListItem>
                    <asp:ListItem Value="6">其他</asp:ListItem>
                </asp:CheckBoxList>
                <asp:TextBox ID="TextBox_Other_FamilyDisease" runat="server" Enabled="False"></asp:TextBox>
                <br />
                <br />
                &nbsp;
                <asp:Button ID="Button_BasicInformation_submit" runat="server" OnClick="Button_BasicInformation_submit_Click" Text="送出" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button_BasicInformation_clear" runat="server" CausesValidation="False" OnClick="Button_BasicInformation_clear_Click" Text="清除" />
                <br />
                <br />
                <asp:ValidationSummary ID="ValidationSummary_BasicInformation" runat="server" BorderColor="#FCE0FA" BorderStyle="Ridge" BorderWidth="5px" CssClass="錯誤提醒" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" HeaderText="錯誤訊息提醒：" />
                <br />
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel__HealthExaminationIteems" runat="server" BackColor="#CCFFCC" Visible="False" >
                <br />
                <asp:Label ID="Label_title_HealthExaminationIteems" runat="server" Font-Names="辰宇落雁體 Thin" Font-Size="XX-Large" Text="健檢項目" style="letter-spacing: 10px"></asp:Label>
                <br />
                <br />
                <table id="Table_HealthExaminationIteems" aria-multiline="False" aria-multiselectable="False" aria-readonly="False" aria-required="False" class="auto-style1" style="border-width: 1px; border-color: #008080; margin: 10px; border-collapse: collapse; text-align: left; font-family: 新細明體; font-size: medium; width: auto">
                    <tr>
                        <td class="auto-style44" style="border: 1px solid #008080; border-collapse: collapse">&nbsp;</td>
                        <td class="auto-style79" style="border: 1px solid #008080; border-collapse: collapse">項目名稱</td>
                        <td class="auto-style84" style="border: 1px solid #008080; border-collapse: collapse">費用＄</td>
                        <td class="auto-style62" style="border: 1px solid #008080; border-collapse: collapse">說明</td>
                    </tr>
                    <tr>
                        <td class="auto-style68" rowspan="7" style="border: 1px solid #008080; border-collapse: collapse">公費</td>
                        <td class="auto-style80" style="border: 1px solid #008080; border-collapse: collapse">基本身體檢查</td>
                        <td class="auto-style85" style="border: 1px solid #008080; border-collapse: collapse">
                            <p class="auto-style66">
                                40歲以上 免費<br /> 未滿40歲 460 元</p>
                        </td>
                        <td class="auto-style63" style="border: 1px solid #008080; border-collapse: collapse">身高、體重、血壓、口腔、胸腔、腹部...</td>
                    </tr>
                    <tr>
                        <td class="auto-style81" style="border: 1px solid #008080; border-collapse: collapse">肝功能檢查</td>
                        <td class="auto-style86" style="border: 1px solid #008080; border-collapse: collapse">
                            <p class="auto-style66">
                                40歲以上 免費<br /> 未滿40歲 340 元</p>
                        </td>
                        <td class="auto-style64" style="border: 1px solid #008080; border-collapse: collapse">SGOP(ASP)、SGPT(ALT)</td>
                    </tr>
                    <tr>
                        <td class="auto-style82" style="border: 1px solid #008080; border-collapse: collapse">血脂肪檢查</td>
                        <td class="auto-style85" style="border: 1px solid #008080; border-collapse: collapse">
                            <p class="auto-style66">
                                40歲以上 免費<br /> 未滿40歲 190 元</p>
                        </td>
                        <td class="auto-style76" style="border: 1px solid #008080; border-collapse: collapse">總膽固醇(高密度膽固醇、低密度膽固醇)、三酸甘油脂</td>
                    </tr>
                    <tr>
                        <td class="auto-style82" style="border: 1px solid #008080; border-collapse: collapse">糖尿病檢查</td>
                        <td class="auto-style85" style="border: 1px solid #008080; border-collapse: collapse">
                            <p class="auto-style66">
                                40歲以上 免費<br /> 未滿40歲 50 元</p>
                        </td>
                        <td class="auto-style76" style="border: 1px solid #008080; border-collapse: collapse">飯前血糖檢查</td>
                    </tr>
                    <tr>
                        <td class="auto-style82" style="border: 1px solid #008080; border-collapse: collapse">腎功能檢查</td>
                        <td class="auto-style85" style="border: 1px solid #008080; border-collapse: collapse">
                            <p class="auto-style66">
                                40歲以上 免費<br /> 未滿40歲 120 元</p>
                        </td>
                        <td class="auto-style76" style="border: 1px solid #008080; border-collapse: collapse">肌酸酐、腎絲球過濾率計算</td>
                    </tr>
                    <tr>
                        <td class="auto-style82" style="border: 1px solid #008080; border-collapse: collapse">B、Ｃ型肝炎檢查</td>
                        <td class="auto-style87" style="border: 1px solid #008080; border-collapse: collapse">
                            <p class="auto-style66">
                                40歲以上 免費<br /> 未滿40歲 410 元</p>
                        </td>
                        <td class="auto-style76" style="border: 1px solid #008080; border-collapse: collapse">HBsAg、Anti-HCV</td>
                    </tr>
                    <tr>
                        <td class="auto-style82" style="border: 1px solid #008080; border-collapse: collapse">尿液檢查</td>
                        <td class="auto-style87" style="border: 1px solid #008080; border-collapse: collapse">
                            <p class="auto-style67">
                                40歲以上 免費<br /> 未滿40歲 75 元</p>
                        </td>
                        <td class="auto-style76" style="border: 1px solid #008080; border-collapse: collapse">尿蛋白</td>
                    </tr>
                    <tr>
                        <td class="auto-style68" rowspan="4" style="border: 1px solid #008080; border-collapse: collapse">自費</td>
                        <td class="auto-style83" style="border-collapse: collapse; border: 1px solid #008080">腦部核磁共振檢查</td>
                        <td class="auto-style88" style="border-collapse: collapse; border: 1px solid #008080">6500 元</td>
                        <td class="auto-style78" style="border-collapse: collapse; border: 1px solid #008080">檢查大腦、小腦、腦幹等組織、顱內動脈。<br class="auto-style50" /> ※建議對象：<br /> 不明原因頭痛或經常性頭暈者，中風高危險群（高血壓、糖尿病、高血脂、吸菸、肥胖者）。<br class="auto-style50" /> 
                            <asp:Label ID="Label_Examination_Notice" runat="server" ForeColor="Red" Text="懷孕或疑似懷孕無法做此項目"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style83" style="border-collapse: collapse; border: 1px solid #008080">全身型骨質密度檢查</td>
                        <td class="auto-style88" style="border-collapse: collapse; border: 1px solid #008080">1200 元</td>
                        <td class="auto-style78" style="border-collapse: collapse; border: 1px solid #008080">精確檢測骨質流失程度，診斷是否罹患骨質疏鬆症。<br class="auto-style50" /> 
                            <asp:Label ID="Label_Examination_Notice0" runat="server" ForeColor="Red" Text="懷孕或疑似懷孕無法做此項目"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style83" style="border-collapse: collapse; border: 1px solid #008080">大腸鏡</td>
                        <td class="auto-style88" style="border-collapse: collapse; border: 1px solid #008080">3150 元</td>
                        <td class="auto-style78" style="border-collapse: collapse; border: 1px solid #008080">檢查全大腸是否有痔瘡、息肉、腫瘤等病變。<br class="auto-style50" /> 
                            <asp:Label ID="Label_Examination_Notice1" runat="server" ForeColor="Red" Text="哺乳、懷孕或疑似懷孕無法做此項目"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style83" style="border-collapse: collapse; border: 1px solid #008080">靜態心電圖</td>
                        <td class="auto-style88" style="border-collapse: collapse; border: 1px solid #008080">150 元</td>
                        <td class="auto-style78" style="border-collapse: collapse; border: 1px solid #008080">心臟節律與構造，是否有異常心律、心肌缺血、心臟肥大或傳導異常等。</td>
                    </tr>
                </table>
                <br />
                <asp:Label ID="Label_choise_HealthExaminationIteems" runat="server" Text="請選擇檢查項目:"></asp:Label>
                <br />
                <asp:CheckBoxList ID="CheckBoxList_HealthExaminationIteems" runat="server" AutoPostBack="True" OnSelectedIndexChanged="SelecteDate_and_SelectedHealthExaminationIteems_CHECK">
                    <asp:ListItem Value="460">基本身體檢查</asp:ListItem>
                    <asp:ListItem Value="340">肝功能檢查</asp:ListItem>
                    <asp:ListItem Value="190">血脂肪檢查</asp:ListItem>
                    <asp:ListItem Value="50">糖尿病檢查</asp:ListItem>
                    <asp:ListItem Value="120">腎功能檢查</asp:ListItem>
                    <asp:ListItem Value="410">B、Ｃ型肝炎檢查</asp:ListItem>
                    <asp:ListItem Value="75">尿液檢查</asp:ListItem>
                    <asp:ListItem Value="6500">腦部核磁共振檢查</asp:ListItem>
                    <asp:ListItem Value="1200">全身型骨質密度檢查</asp:ListItem>
                    <asp:ListItem Value="3150">大腸鏡</asp:ListItem>
                    <asp:ListItem Value="150">靜態心電圖</asp:ListItem>
                </asp:CheckBoxList>
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="SelecteDate_and_SelectedHealthExaminationIteems_CHECK"></asp:Calendar>
                <br />
                &nbsp;<asp:Button ID="Button_HealthExaminationIteems_submit" runat="server" CausesValidation="False" Enabled="False" OnClick="Button_HealthExaminationIteems_submit_Click" Text="送出" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </asp:Panel>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
