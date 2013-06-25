﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="item.aspx.cs" Inherits="POS.views.item" MasterPageFile="~/views/masterPage.Master" %>

<%@ Register src="~/piczardUserControls/simpleImageUploadUserControl/SimpleImageUpload.ascx" tagname="SimpleImageUpload" tagprefix="ccPiczardUC" %>




<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

    <script type="text/javascript">

        var IU = 'I';
        var ID = -1;
        var warningPic = -1;
        var itemPic = -1;
        var isDelete = false;

        $(document).ready(function () {

            $("#menu .nav li").removeClass("active");
            $("#menu .nav li#item").addClass("active");

            $("#itemPages .btn-group .dropdown-toggle").html("Item <span class='caret'></span>");

            // positioning alertBox
            $("#alertBox").css("top", $(window).outerHeight() / 2);
            $("#alertBox").css("left", $(window).outerWidth() / 2);


            $("#btnCancel").click(function () {
                clearAllElements();
                return false;
            });



            $("#submit").click(function () {

                var isStockItemVal = "0";
                if ($("#<%=isStockItem.ClientID %>").prop("checked")) isStockItemVal = "1";

                var discontinueVal = "0";
                if ($("#<%=discontinue.ClientID %>").prop("checked")) discontinueVal = "1";

                var visibleOnWebVal = "0";
                if ($("#<%=visibleOnWeb.ClientID %>").prop("checked")) visibleOnWebVal = "1";

                var allUserValue = -1;
                if ($('#allUser').is(":checked")) { allUserValue = 1; }
                else { allUserValue = 0; }

                if (window.IU == 'I') {
                    $.post("../Ajax/item.aspx",
                        {
                            itemName: $('#<%=itemName.ClientID %>').val(),
                            reference: $("#<%=reference.ClientID %>").val(),
                            description: $("#<%=description.ClientID %>").val(),
                            shortDescription: $("#<%=shortDescription.ClientID %>").val(),
                            deptID: $("#<%=deptDrplst.ClientID %>").val(),
                            sectionID: $("#<%=sectionDrplst.ClientID %>").val(),
                            familyID: $("#<%=familyDrplst.ClientID %>").val(),
                            brandID: $("#<%=brandDrplst.ClientID %>").val(),
                            lineID: $("#<%=lineDrplst.ClientID %>").val(),
                            isStockItem: isStockItemVal,
                            discontinue: discontinueVal,
                            stockMeasure: $("#<%=stockMeasure.ClientID %>").val(),
                            stockMeasureUnit: $("#<%=stockMeasureUnit.ClientID %>").val(),
                            purchaseMeasure: $("#<%=purchaseMeasure.ClientID %>").val(),
                            purchaseMeasureUnit: $("#<%=purchaseMeasureUnit.ClientID %>").val(),
                            saleMeasure: $("#<%=saleMeasure.ClientID %>").val(),
                            saleMeasureUnit: $("#<%=saleMeasureUnit.ClientID %>").val(),
                            itemType: $("#<%=itemType.ClientID %>").val(),
                            itemClass: $("#<%=itemClass.ClientID %>").val(),
                            saleAccount: $("#<%=saleAccount.ClientID %>").val(),
                            purchaseAccount: $("#<%=purchaseAccount.ClientID %>").val(),
                            costOfSaleAccount: $("#<%=costOfSaleAccount.ClientID %>").val(),
                            saleReturnAccount: $("#<%=saleReturnAccount.ClientID %>").val(),
                            purchaseReturnAccount: $("#<%=purchaseReturnAccount.ClientID %>").val(),
                            visibleOnWeb: visibleOnWebVal,
                            season: $("#<%=season.ClientID %>").val(),
                            characteristics: $("#<%=characteristics.ClientID %>").val(),
                            warningID: $("#<%=itemWarning.ClientID %>").val(),

                            allUser: allUserValue,
                            users: $('#<%=usersDrpLst.ClientID %>').val(),
                            warningMessage: $("#warningMessage").val(),

                            image: "",
                            referencePic: $("#referencePic").val(),
                            descriptionPic: $("#descriptionPic").val(),

                            createDate: '',
                            createUser: '-1',
                            modifyUser: '-1',
                            StatementType: 'Insert'
                        },

                        function (response) {
                            PageMethods.saveImage(response.split(":;:")[0], response.split(":;:")[1]);
                            $(document).trigger("add-alerts", [
                                {
                                    'message': "Data inserted...",
                                    'priority': 'success'
                                }
                              ]);

                                clearAllElements();

                                __doPostBack("<%= UpdatePanel2.ClientID %>");
                        }
                    );

                    return false;
                }
                else if (window.IU == 'U') {


                    $.post("../Ajax/item.aspx",
                        {
                            itemID: window.ID,
                            itemName: $('#<%=itemName.ClientID %>').val(),
                            reference: $("#<%=reference.ClientID %>").val(),
                            description: $("#<%=description.ClientID %>").val(),
                            shortDescription: $("#<%=shortDescription.ClientID %>").val(),
                            deptID: $("#<%=deptDrplst.ClientID %>").val(),
                            sectionID: $("#<%=sectionDrplst.ClientID %>").val(),
                            familyID: $("#<%=familyDrplst.ClientID %>").val(),
                            brandID: $("#<%=brandDrplst.ClientID %>").val(),
                            lineID: $("#<%=lineDrplst.ClientID %>").val(),
                            isStockItem: isStockItemVal,
                            discontinue: $("#<%=discontinue.ClientID %>").val(),
                            stockMeasure: $("#<%=stockMeasure.ClientID %>").val(),
                            stockMeasureUnit: $("#<%=stockMeasureUnit.ClientID %>").val(),
                            purchaseMeasure: $("#<%=purchaseMeasure.ClientID %>").val(),
                            purchaseMeasureUnit: $("#<%=purchaseMeasureUnit.ClientID %>").val(),
                            saleMeasure: $("#<%=saleMeasure.ClientID %>").val(),
                            saleMeasureUnit: $("#<%=saleMeasureUnit.ClientID %>").val(),
                            itemType: $("#<%=itemType.ClientID %>").val(),
                            itemClass: $("#<%=itemClass.ClientID %>").val(),
                            saleAccount: $("#<%=saleAccount.ClientID %>").val(),
                            purchaseAccount: $("#<%=purchaseAccount.ClientID %>").val(),
                            costOfSaleAccount: $("#<%=costOfSaleAccount.ClientID %>").val(),
                            saleReturnAccount: $("#<%=saleReturnAccount.ClientID %>").val(),
                            purchaseReturnAccount: $("#<%=purchaseReturnAccount.ClientID %>").val(),
                            visibleOnWeb: $("#<%=visibleOnWeb.ClientID %>").val(),
                            season: $("#<%=season.ClientID %>").val(),
                            characteristics: $("#<%=characteristics.ClientID %>").val(),
                            
                            warningID: window.warningID,
                            allUser: allUserValue,
                            users: $('#<%=usersDrpLst.ClientID %>').val(),
                            warningMessage: $("#warningMessage").val(),

                            itemPicID: window.itemPicID,
                            itemID: window.ID,
                            image: "",
                            referencePic: $("#referencePic").val(),
                            descriptionPic: $("#descriptionPic").val(),

                            modifyUser: '-1',
                            StatementType: 'Update'
                        },

                        function (response) {
                            window.IU = 'I';
                            PageMethods.saveImage(response.split(":;:")[0], response.split(":;:")[1]);

                            $(document).trigger("add-alerts", [
                                {
                                    'message': "Data updated...",
                                    'priority': 'success'
                                }
                              ]);

                                clearAllElements();

                                __doPostBack("<%= UpdatePanel2.ClientID %>");
                        }
                    );

                    return false;
                }
            });


        });


        function updaterow(itemID, itemName, reference, description, shortDescription, deptID, sectionID, familyID, brandID, lineID, isStockItem, discontinue, stockMeasure, stockMeasureUnit, purchaseMeasure, purchaseMeasureUnit, saleMeasure, saleMeasureUnit, itemType, itemClass, saleAccount, purchaseAccount, costOfSaleAccount, saleReturnAccount, purchaseReturnAccount, visibleOnWeb, season, characteristics, warningID_old, warningID, allUser, users, warningMessage, itemPicID, referencePic, descriptionPic)
        {
            if (!window.isDelete) {
                window.IU = 'U';
                window.ID = itemID;
                window.warningID = warningID;
                window.itemPicID = itemPicID;

                $('#<%=itemName.ClientID %>').val(itemName);
                $("#<%=reference.ClientID %>").val(reference);
                $("#<%=description.ClientID %>").val(description);
                $("#<%=shortDescription.ClientID %>").val(shortDescription);
                $("#<%=deptDrplst.ClientID %>").val(deptID);
                $("#<%=sectionDrplst.ClientID %>").val(sectionID);
                $("#<%=familyDrplst.ClientID %>").val(familyID);
                $("#<%=brandDrplst.ClientID %>").val(brandID);
                $("#<%=lineDrplst.ClientID %>").val(lineID);

                $("#<%=stockMeasure.ClientID %>").val(stockMeasure);
                $("#<%=stockMeasureUnit.ClientID %>").val(stockMeasureUnit);
                $("#<%=purchaseMeasure.ClientID %>").val(purchaseMeasure);
                $("#<%=purchaseMeasureUnit.ClientID %>").val(purchaseMeasureUnit);
                $("#<%=saleMeasure.ClientID %>").val(saleMeasure);
                $("#<%=saleMeasureUnit.ClientID %>").val(saleMeasureUnit);
                $("#<%=itemType.ClientID %>").val(itemType);
                $("#<%=itemClass.ClientID %>").val(itemClass);
                $("#<%=saleAccount.ClientID %>").val(saleAccount);
                $("#<%=purchaseAccount.ClientID %>").val(purchaseAccount);
                $("#<%=costOfSaleAccount.ClientID %>").val(costOfSaleAccount);
                $("#<%=saleReturnAccount.ClientID %>").val(saleReturnAccount);
                $("#<%=purchaseReturnAccount.ClientID %>").val(purchaseReturnAccount);

                $("#<%=season.ClientID %>").val(season);
                $("#<%=characteristics.ClientID %>").val(characteristics);
                $("#<%=itemWarning.ClientID %>").val(warningID);

                if (isStockItem == "1") $("#<%=isStockItem.ClientID %>").prop("checked", true);
                else $("#<%=isStockItem.ClientID %>").prop("checked", false);

                if (discontinue == "1") $("#<%=discontinue.ClientID %>").prop("checked", true);
                else $("#<%=discontinue.ClientID %>").prop("checked", false);

                if (visibleOnWeb == "1") $("#<%=visibleOnWeb.ClientID %>").prop("checked", true);
                else $("#<%=visibleOnWeb.ClientID %>").prop("checked", false);



                if (allUser == "1") $("#allUser").prop("checked", true);
                else $("#allUser").prop("checked", false);
                $("#<%=usersDrpLst.ClientID %>").val(users);
                $("#warningMessage").val(warningMessage);

                $("#reference").val(reference);
                $("#description").val(description);

                $("#ctl00_MainContent_ImageUploader_imgPreview").load();

                src = $("#ctl00_MainContent_ImageUploader_imgPreview").attr("src");
                src = "../uploadedImg/itemPics/" + itemID + "/" + itemPicID + ".jpg";
                $("#ctl00_MainContent_ImageUploader_imgPreview").attr("src", src);
                $("#ctl00_MainContent_ImageUploader_imgPreview").css("height", "auto");
                $("#ctl00_MainContent_ImageUploader_imgPreview").css("width", "auto");
            }
        }


        function deleteRow(itemID) {
            window.isDelete = true;

            if (confirm('Sure To Delete?')) {
                $.post("../Ajax/item.aspx",
                    {
                        itemID: itemID,
                        StatementType: 'Delete'
                    },

                    function (response) {
                        $(document).trigger("add-alerts", [
                                {
                                    'message': "Data deleted...",
                                    'priority': 'error'
                                }
                              ]);

                                __doPostBack("<%= UpdatePanel2.ClientID %>");
                    }
                );
            } else {
                // Do nothing!
            }

            //clearAllElements();
            return false;
        }

        function clearAllElements() {
            window.IU = 'I';
            window.ID = -1;
            window.isDelete = false;

            $("input[type='text']").val(null);
            $("input[type='checkbox']").prop('checked', false);
            $("input[type='select']").val(-1);
            $("select").val(-1);

            src = "../uploadedImg/" + "dummy" + ".jpg";
            $("#ctl00_MainContent_ImageUploader_imgPreview").attr("src", src);
            $("#ctl00_MainContent_ImageUploader_imgPreview").css("height", "auto");
            $("#ctl00_MainContent_ImageUploader_imgPreview").css("width", "auto");
        }
    </script>

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <div id="alertBox" data-alerts="alerts"  data-fade="3000"></div>

        <div class="tabbable">
          <ul class="nav nav-tabs">
            <li id="tab1Ref" class="active"><a href="#tab1" data-toggle="tab">List</a></li>
            <li id="tab2Ref"><a href="#tab2" data-toggle="tab">Create New</a></li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="tab1">

              <asp:ScriptManager runat="server" ID="ScriptManager1" EnablePageMethods="true" EnablePartialRendering="true">
              </asp:ScriptManager>

              <asp:UpdatePanel runat="server" ID="UpdatePanel2" UpdateMode="Always">
                    <ContentTemplate>
                       <asp:ListView ID="lstvItem" runat="server">
                                <LayoutTemplate>
                                    <table class="table table-condensed" id="dataRows">
                                        <tr>
                                            <th>Department ID</th>
                                            <th>Department Name</th>
                                        </tr>
                                        <asp:PlaceHolder id="itemPlaceholder" runat="server" />
                                    </table>
                                </LayoutTemplate>

                                <ItemTemplate>
                                    <tr ondblclick="updaterow(<%#Eval("itemID") %>, '<%#Eval("itemName") %>', '<%#Eval("reference") %>', '<%#Eval("description") %>', '<%#Eval("shortDescription") %>', '<%#Eval("deptID") %>', '<%#Eval("sectionID") %>', '<%#Eval("familyID") %>', '<%#Eval("brandID") %>', '<%#Eval("lineID") %>', '<%#Eval("isStockItem") %>', '<%#Eval("discontinue") %>', '<%#Eval("stockMeasure") %>', '<%#Eval("stockMeasureUnit") %>', '<%#Eval("purchaseMeasure") %>', '<%#Eval("purchaseMeasureUnit") %>', '<%#Eval("saleMeasure") %>', '<%#Eval("saleMeasureUnit") %>', '<%#Eval("itemType") %>', '<%#Eval("itemClass") %>', '<%#Eval("saleAccount") %>', '<%#Eval("purchaseAccount") %>', '<%#Eval("costOfSaleAccount") %>', '<%#Eval("saleReturnAccount") %>', '<%#Eval("purchaseReturnAccount") %>', '<%#Eval("visibleOnWeb") %>', '<%#Eval("season") %>', '<%#Eval("characteristics") %>', '<%#Eval("warningID") %>',
                                                              <%#Eval("warningID") %>, '<%#Eval("allUser") %>', '<%#Eval("users") %>', '<%#Eval("warningMessage") %>',
                                                              <%#Eval("itemPicID") %>, '<%#Eval("reference") %>', '<%#Eval("description ") %>');
                                                    $('#tab2').addClass('active');
                                                    $('#tab2Ref').addClass('active');

                                                    $('#tab1').removeClass('active');
                                                    $('#tab1Ref').removeClass('active');
                                                    $('#tab2Ref a').html('Edit / Update');
                                                    ">
                                        <td>
                                            <asp:Label ID="lblItemID" runat="Server" Text='<%#Eval("itemID") %>' />
                                        </td>

                                        <td>
                                            <asp:Label ID="lblItemName" runat="Server" Text='<%#Eval("itemName") %>' />
                                        </td>

                                        <td class="btn btn-danger btn-mini"  onmouseup="deleteRow(<%#Eval("itemID") %>)" style="cursor:pointer">Delete</td>
                                    </tr>
                                </ItemTemplate>
                            </asp:ListView>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <div class="tab-pane" id="tab2">
              <form class="navbar-form pull-left" id="itemForm" action="item.aspx">
                    
                    <div id="item">
                        
                        <div class="tabbable"> <!-- Only required for left/right tabs -->
                            <ul class="nav nav-tabs">
                            <li class="active"><a href="#tabOp1" data-toggle="tab">Properties1</a></li>
                            <li><a href="#tabOp2" data-toggle="tab">Properties2</a></li>
                            <li><a href="#tabOp3" data-toggle="tab">Warning</a></li>
                            <li><a href="#tabOp4" data-toggle="tab">Pics</a></li>
                            <li><a href="#tabOp5" data-toggle="tab">Account</a></li>
                            <li><a href="#tabOp6" data-toggle="tab">Other</a></li>
                            
                          </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="tabOp1">
                                    <table>
                                        <tr>
                                            <td><label>Item ID</label></td>
                                            <td><asp:TextBox id="nextID" runat="server" class="span2" ReadOnly="true" ></asp:TextBox></td>
                                        </tr>

                                        <tr>
                                            <td><label>Name</label></td>
                                            <td><asp:TextBox runat="server" id="itemName" placeholder="Item Name" class="span2"></asp:TextBox>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td><label>Reference</label></td>
                                            <td><!-- <input id="reference" type="text" placeholder="Reference" class="span2" /> -->
                                                <asp:TextBox runat="server" id="reference" placeholder="Reference" class="span2"></asp:TextBox>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td><label>Description</label></td>
                                            <td><asp:TextBox runat="server" id="description" type="text" placeholder="Description" class="span2"></asp:TextBox></td>
                                        </tr>

                                        <tr>
                                            <td><label>Short Description</label></td>
                                            <td><asp:TextBox runat="server" id="shortDescription" type="text" placeholder="Short Description" class="span2"></asp:TextBox></td>
                                        </tr>

                                        <tr>
                                            <td><label>Department</label></td>
                                            <td><asp:DropDownList ID="deptDrplst" runat="server" 
                                                    onselectedindexchanged="deptDrplst_SelectedIndexChanged" 
                                                    AutoPostBack="True"></asp:DropDownList></td>
                                        </tr>

                                        <tr>
                                            <td><label>Section</label></td>
                                            <td><asp:DropDownList ID="sectionDrplst" runat="server" 
                                                    onselectedindexchanged="sectionDrplst_SelectedIndexChanged" 
                                                    AutoPostBack="True"></asp:DropDownList></td>
                                        </tr>

                                        <tr>
                                            <td><label>Family</label></td>
                                            <td><asp:DropDownList ID="familyDrplst" runat="server"></asp:DropDownList></td>
                                        </tr>
                            
                                        <tr>
                                            <td><label>Brand</label></td>
                                            <td><asp:DropDownList ID="brandDrplst" runat="server" 
                                                    onselectedindexchanged="brandDrplst_SelectedIndexChanged" 
                                                    AutoPostBack="True"></asp:DropDownList></td>
                                        </tr>

                                        <tr>
                                            <td><label>Line</label></td>
                                            <td><asp:DropDownList ID="lineDrplst" runat="server"></asp:DropDownList></td>
                                        </tr>

                                        <tr>
                                            <td><label>Item Type</label></td>
                                            <td><asp:TextBox runat="server" id="itemType" type="text" placeholder="Item Type" class="span2"></asp:TextBox>
                                                
                                            </td>
                                        </tr>

                                        <tr>
                                            <td><label>Item Class</label></td>
                                            <td><asp:TextBox runat="server" id="itemClass" type="text" placeholder="Item Class" class="span2"></asp:TextBox></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="tab-pane" id="tabOp2">
                                    <table>
                                        <tr>
                                            <td><label>Is Stock Item</label></td>
                                            <td><asp:CheckBox runat="server" id="isStockItem" class="span2" /></td>
                                        </tr>

                                        <tr>
                                            <td><label>Discontinue</label></td>
                                            <td><asp:CheckBox runat="server" id="discontinue" class="span2" /></td>
                                        </tr>

                                        <tr>
                                            <td><label>Stock Measure</label></td>
                                            <td><asp:TextBox runat="server" id="stockMeasure" type="text" placeholder="Stock Measure" class="span2"></asp:TextBox></td>
                                        </tr>

                                        <tr>
                                            <td><label>Stock Measure Unit</label></td>
                                            <td><asp:TextBox runat="server" id="stockMeasureUnit" type="text" placeholder="Stock Measure Unit" class="span2"></asp:TextBox>
                                                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Insert only float" Type="Double" ControlToValidate="stockMeasureUnit"></asp:RangeValidator>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td><label>Purchase Measure</label></td>
                                            <td><asp:TextBox runat="server" id="purchaseMeasure" type="text" placeholder="Purchase Measure" class="span2"></asp:TextBox></td>
                                        </tr>

                                        <tr>
                                            <td><label>Purchase Measure Unit</label></td>
                                            <td><asp:TextBox runat="server" id="purchaseMeasureUnit" type="text" placeholder="Purchase Measure Unit" class="span2"></asp:TextBox>
                                                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Insert only float" Type="Double" ControlToValidate="purchaseMeasureUnit"></asp:RangeValidator>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td><label>Sale Measure</label></td>
                                            <td><asp:TextBox runat="server" id="saleMeasure" type="text" placeholder="Sale Measure" class="span2"></asp:TextBox></td>
                                        </tr>

                                        <tr>
                                            <td><label>Sale Measure Unit</label></td>
                                            <td><asp:TextBox runat="server" id="saleMeasureUnit" type="text" placeholder="Sale Measure Unit" class="span2"></asp:TextBox>
                                                <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="Insert only float" Type="Double" ControlToValidate="saleMeasureUnit"></asp:RangeValidator>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="tab-pane" id="tabOp3">
                                    <table>
                                        <tr>
                                            <td><label>All Users</label></td>
                                            <td><input id="allUser" type="checkbox" class="span2" /></td>
                                        </tr>

                                        <tr>
                                            <td><label>Users</label></td>
                                            <td><asp:DropDownList ID="usersDrpLst" runat="server"></asp:DropDownList></td>
                                        </tr>

                    
                                        <tr>
                                            <td><label>Warning Message</label></td>
                                            <td><input id="warningMessage" type="text" placeholder="Warning Message" class="span2" /></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="tab-pane" id="tabOp4">
                                    <table>
                                        <tr>
                                            <td><label>Image</label></td>
                                            <td>
                                                 <asp:UpdatePanel runat="server" ID="UpdatePanel1" UpdateMode="Always">
                                                    <ContentTemplate>
                             
                                                    <div class="pageContainer">  
                           
                                                        <ccPiczardUC:SimpleImageUpload ID="ImageUploader" runat="server" 
                                                            Width="500px"
                                                            AutoOpenImageEditPopupAfterUpload="true"
                                                            Culture="en" 
                                                         EnableEdit="False" />
                                                    </div>
                            
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td><label>Reference</label></td>
                                            <td><input id="referencePic" type="text" placeholder="Reference" class="span2" /></td>
                                        </tr>

                                        <tr>
                                            <td><label>Description</label></td>
                                            <td><input id="descriptionPic" type="text" placeholder="Description" class="span2" /></td>
                                        </tr>
                    
                                                         
                                    </table>
                                </div>
                                <div class="tab-pane" id="tabOp5">
                                    <table>
                                        <tr>
                                            <td><label>Sale Account</label></td>
                                            <td><asp:TextBox runat="server" id="saleAccount" type="text" placeholder="Sale Account" class="span2"></asp:TextBox></td>
                                        </tr>

                                        <tr>
                                            <td><label>Purchase Account</label></td>
                                            <td><asp:TextBox runat="server" id="purchaseAccount" type="text" placeholder="Purchase Account" class="span2"></asp:TextBox></td>
                                        </tr>

                                        <tr>
                                            <td><label>Cost Of Sale Account</label></td>
                                            <td><asp:TextBox runat="server" id="costOfSaleAccount" type="text" placeholder="Cost Of Sale Account" class="span2"></asp:TextBox></td>
                                        </tr>

                                        <tr>
                                            <td><label>Sale Return Account</label></td>
                                            <td><asp:TextBox runat="server" id="saleReturnAccount" type="text" placeholder="Sale Return Account" class="span2"></asp:TextBox></td>
                                        </tr>

                                        <tr>
                                            <td><label>Purchase Return Account</label></td>
                                            <td><asp:TextBox runat="server" id="purchaseReturnAccount" type="text" placeholder="Purchase Return Account" class="span2"></asp:TextBox></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="tab-pane" id="tabOp6">
                                    <table>
                                        <tr>
                                            <td><label>Visible On Web</label></td>
                                            <td><asp:CheckBox runat="server" id="visibleOnWeb" class="span2" /></td>
                                        </tr>

                                        <tr>
                                            <td><label>Season</label></td>
                                            <td><asp:TextBox runat="server" id="season" type="text" placeholder="Season" class="span2"></asp:TextBox></td>
                                        </tr>

                                        <tr>
                                            <td><label>Characteristics</label></td>
                                            <td><asp:TextBox runat="server" id="characteristics" type="text" placeholder="Characteristics" class="span2"></asp:TextBox></td>
                                        </tr>

                                        <tr>
                                            <td><label>Warning</label></td>
                                            <td><asp:DropDownList ID="itemWarning" runat="server"></asp:DropDownList></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <table style="background:#fff">
                            <tr>
                                <td></td>
                                <td>
                                    <div id="submit" class="btn" >Submit</div>
                                    <asp:Button ID="Button1" runat="server" class="btn" Text="Button" Visible="false"/>
                                    <div id="btnCancel" class="btn" >Cancel</div>
                                </td>
                            </tr>  
                        </table>  
                    </div>
                </form>
            </div>
          </div>
        </div>   
                 
        
       
                


        
       
        

        
</asp:Content>
