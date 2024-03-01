<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quotation.aspx.cs" Inherits="AJ.Modules.Quotation" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Purchase Quotation</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
   
</head>
<body>
    <div class="container">
        <h1>Purchase Quotation</h1>
        <form id="quotationForm" runat="server">
            <div class="form-group">
                <label for="orderDate">Order Date:</label>
                <input type="date" id="orderDate" runat="server" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="orderNo">Order No:</label>
                <input type="text" id="orderNo" runat="server" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="customerName">Customer Name:</label>
                <input type="text" id="customerName" runat="server" class="form-control"/>
            </div>
            <!-- Add fields for items -->
            <div id="items">
                <!-- Item rows will be added dynamically using JavaScript -->
            </div>
            <button type="button" class="btn btn-primary" onclick="addItem()">Add Item</button>
            <button type="submit" class="btn btn-success">Submit</button>
        </form>
    </div>

   <script>
    function addItem() {
    var itemsDiv = document.getElementById('items');

    var itemRow = document.createElement('div');
    itemRow.classList.add('form-row');

    itemRow.innerHTML = `
        <div class="form-group col-md-4">
            <input type="text" class="form-control" placeholder="Item Name">
        </div>
        <div class="form-group col-md-2">
            <input type="text" class="form-control" placeholder="Product Type">
        </div>
        <div class="form-group col-md-2">
            <input type="text" class="form-control" placeholder="Product">
        </div>
        <div class="form-group col-md-3">
            <input type="text" class="form-control" placeholder="Description">
        </div>
        <div class="form-group col-md-1">
            <input type="number" class="form-control" placeholder="Price">
        </div>
        <div class="form-group col-md-1">
            <input type="number" class="form-control" placeholder="Qty">
        </div>
    `;

    itemsDiv.appendChild(itemRow);
}
   </script>
</body>
</html>

