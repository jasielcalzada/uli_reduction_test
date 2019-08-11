<%@ Page Language="C#" MasterPageFile="~/masterpages/ULI_Reduction.Master" AutoEventWireup="true" CodeBehind="detail_case.aspx.cs" Inherits="FBC_ULI_REDUCTION.modules.ULI_Reduction.detail_case" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cBody" runat="server">
    <link href="css/table_reason.css" rel="stylesheet" />
    <link href="css/loading.css" rel="stylesheet" />
    <div class="container col-lg-12" style="margin-top:0px; margin-left: 0px; background: rgb(217, 219, 223); font-size: 90%;">
        <div class="row">

            <div class="col-12 col-sm-12 col-md-12 col-lg-7 col-xl-8" style="margin-top:10px;">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="card" style="margin-bottom: 10px;">
                            <div class="card-header">
                                <div class="row">
                                    <div class="col-lg-2" style="text-align: left;">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="check_expand_all">
                                            <label class="custom-control-label" for="check_expand_all">Expand all</label>
                                        </div>                                     
                                    </div>
                                    <div class="col-lg-2" style="text-align: left;">
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="check_show_all">
                                            <label class="custom-control-label" for="check_show_all">Show all</label>
                                        </div>
                                    </div>
                                    <%--<div class="col-lg-4" style="text-align: center;">
                                        <h5>Impact</h5>
                                    </div>--%>
                                    <%--<div class="col-lg-4" style="text-align: right;">
                                        <div class="col-auto">
                                            <button id="btnExportExcel" type="submit" class="btn btn-primary">Export EXCEL</button>
                                        </div>
                                    </div>--%>
                                </div>
                            </div>
                            <div class="card-body" style="margin-bottom: 10px;">
                               <table id="table_detail_case" class="display" style="width:100%"> </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-12 col-sm-12 col-md-12 col-lg-5 col-xl-4" style="margin-top: 10px; margin-left: -25px;">
                <div class="card" style="margin-bottom: 10px; margin-right: -30px;">
                    <div class="card-header">
                        <div class="col-12" style="text-align: center;">
                            <h5>Information</h5>
                        </div>
                    </div>
                    <div class="card-body">
                        <div style="margin-bottom: 5px; margin-left: -15px; margin-right: -15px;">
                            <ul class="nav nav-tabs">
                                <li class="nav-item">
                                    <a href="#info" class="nav-link active" role="tab" data-toggle="tab">Detail</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#instruction" class="nav-link " role="tab" data-toggle="tab">Summary</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div role="tab-panel" class="tab-pane active" id="info">
                                    <div class="row h-100 justify-content-center align-items-center">
                                        <div class="col-10">
                                            <h4>Case     <small class="badge badge-pill badge-dark" id="id_caso"></small></h4>
                                            <div class="row">
                                                <div  class="col-lg-3 col-form-label">
                                                    <h6>Created</h6>
                                                </div>
                                                <div class="col-lg-6" style="text-align: left;">
                                                    <h6 id="created_on"></h6>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div  class="col-lg-4 col-form-label">
                                                    <h6>Time elapsed</h6>
                                                </div>
                                                <div class="col-lg-8" style="text-align: left;">
                                                    <h6 id="time_alapsed"></h6>
                                                </div>
                                            </div>

                                            <div class="row h-100 justify-content-center align-items-center">
                                                <div class="row ">
                                                    <div class="solve_before_pass alert alert-danger col-lg-12" style="text-align: center;" role="alert">Solution time has exceeded. <br> Please change Otay in Date.</div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-lg-3 col-form-label">
                                                    <h6>Created by</h6>
                                                </div>
                                                <div class="col-lg-8" style="text-align: left;">
                                                    <h6 id="created_by"></h6>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-4 col-form-label">
                                                    <h6>Solve before</h6>
                                                </div>
                                                <div class="col-lg-6" style="text-align: left;">
                                                    <h6 id="solve_before"></h6>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-lg-3 col-form-label">
                                                    <h6>Otay In</h6>
                                                </div>
                                                <div class="col-lg-4">
                                                    <input type="date" class="form-control form-control-sm" id="textNeeLoadDate">
                                                </div>
                                                <div class="col-lg-3">
                                                    <button type="submit" id="btnChangeLoadDate" class="btn btn-danger"
                                                        style="padding: 6px 18px;">Apply</button>
                                                </div>
                                            </div>

                                            <hr />

                                            <div class="row">
                                                <label for="labelMaster" class="col-lg-3 col-form-label">Reason</label>
                                                <div class="col-lg-8">
                                                    <h6><b id="reason_id"></b></h6>
                                                </div>
                                            </div>

                                            <br>

                                            <div class="row">
                                                <label for="table_suggestion_case" class="col-lg-4 col-form-label"><b>Sony reduces to</b></label>
                                                <table class="table table-bordered" id="table_suggestion_case">
                                                    <thead class="thead-light">
                                                        <tr>
                                                            <th scope="col">Model</th>
                                                            <th scope="col">Reduce QTY</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody class="tbody_case_suggestion"></tbody>
                                                </table>
                                            </div>
                                            <div class="row">
                                                    <table class="table table-bordered" id="total_shipment_PO">
                                                        <thead class="thead-light">
                                                            <tr>
                                                                <th style="text-align: center;" scope="col">Total Shipment</th>
                                                                <th style="text-align: center;" scope="col">Total PO</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td id="total_shipment" style="text-align: center;"></td>
                                                                <td id="total_po" style="text-align: center;"></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>


<!--
                                            <div class="row">
                                                <label for="labelOrderType" class="col-lg-4 col-form-label">Total Shipment</label>
                                                <div class="col-lg-8">
                                                    <input type="text" readonly class="form-control-plaintext" id="labelOrderType" value="2">
                                                </div>
                                            </div>
                                            <div class="row">
                                                <label for="labelOrderType" class="col-lg-4 col-form-label">Total PO</label>
                                                <div class="col-lg-8">
                                                    <input type="text" readonly class="form-control-plaintext" id="labelOrderType" value="3">
                                                </div>
                                            </div>
                                        -->


                                        </div>
                                    </div>

                                </div>



                                <div role="tab-panel" class="tab-pane " id="instruction">
                                    <div class="col-12">
                                        <div class="row">
                                            <br>
                                            <label for="tableInstructions" class="col-lg-4 col-form-label"><b>Sony
                                                    reduces to</b></label>
                                            <table class="table table-bordered" id="tableInstructions">
                                                <thead class="thead-light">
                                                    <tr>
                                                        <th scope="col">Model</th>
                                                        <th scope="col">Reduce QTY</th>
                                                    </tr>
                                                </thead>
                                                <tbody class="tbody_case_suggestion"></tbody>
                                            </table>
                                        </div>

                                        <hr />

                                        <div style="margin-bottom: 5px; margin-left: -15px; margin-right: -15px;">
                                            <ul class="nav nav-tabs">
                                                <li class="nav-item">
                                                    <a href="#po" class="nav-link active" role="tab" data-toggle="tab">PO</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="#model" class="nav-link " role="tab" data-toggle="tab">Model</a>
                                                </li>
                                            </ul>
                                            <div class="tab-content">
                                                <div role="tab-panel" class="tab-pane active" id="po">
                                                    <div class="table-wrapper-scroll-y my-custom-scrollbar tableFixHead">
                                                        <table class="table table_case_summary_po display table-bordered table-sm" style="width:100%;">
                                                            <thead class="thead-light fixedHeader">
                                                                <tr>
                                                                    <th scope="col">Po / Model / Part Number.</th>
                                                                    <th scope="col">Qty</th>
                                                                    <th scope="col">Use</th>
                                                                    <th scope="col">Avaliable</th>                                                                   
                                                                    <th scope="col">New Qty</th>
                                                                    <th scope="col">Reduced</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody class="tbody_case_summary_po"></tbody>
                                                        </table>
                                                    </div>
                                                </div>

                                                <div role="tab-panel" class="tab-pane " id="model">
                                                    <div class="table-wrapper-scroll-y my-custom-scrollbar tableFixHead">
                                                        <table class=" table table_case_summary_model display table-bordered table-sm" style="width:100%;">
                                                            <thead class="thead-light fixedHeader">
                                                                <tr>
                                                                    <!--<th scope="col">Model /<br> PARTNER NAME</th>-->
                                                                    <th scope="col">Model/Part Number./Partner Name.</th>
                                                                    <th scope="col">State</th>
                                                                    <th scope="col">Qty</th>
                                                                    <th scope="col">New Qty</th>
                                                                    <th scope="col">Reduced</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody class="tbody_case_summary_model"></tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row h-100 justify-content-center align-items-center">
                            <div class="card card-body col-10" style="margin-bottom: 5px;  margin-left: -15px; margin-right: -15px;">
                                <div class="row h-100 justify-content-center align-items-center">
                                    <div class="col-lg-4" style="text-align: left;">
                                        <button id="btn_approve_case" type="button" class="btn btn-primary" style="padding: 6px 18px;">Approve</button>
                                    </div>
                                    <div class="col-lg-4" style="text-align: center;">
                                        <button id="btn_cancel_case" type="submit" class="btn btn-primary" style="padding: 6px 18px;" onclick="">Cancel</button>
                                    </div>
                                    <div class="col-lg-4" style="text-align: right;">
                                        <button id="btn_resend_case" type="submit" class="btn btn-primary" style="padding: 6px 18px;" onclick="">Resend</button>
                                    </div>

                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="save"></div>
    <div class="save_temp_qty"></div>
    <div class="loading"></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cfooter" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cPage_Scripts" runat="server">
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="../../guruable/plugins/bootstrap4.3.1/bootstrap.min.js"></script>
    <script src="../../guruable/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="../../guruable/plugins/jquery-cookies/jquery.cookie.js"></script>
    <script src="js/detail_case.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var screen = $('.loading');
            configureLoadingScreen(screen);
        });
        function configureLoadingScreen(screen) {
            $(document)
                .ajaxStart(function () {
                    screen.fadeIn();
                })
                .ajaxStop(function () {
                    screen.fadeOut();
                })
        }
    </script>
</asp:Content>
