<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.example.onlinefooddeliverysystem.services.OrderManager" %>
<%@ page import="com.example.onlinefooddeliverysystem.models.Order" %>
<%@ page import="com.example.onlinefooddeliverysystem.models.User" %>

<%
    OrderManager.readOrders();
    List<Order> orders = OrderManager.getOrders();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Your Pending Orders</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-900 text-white min-h-screen">

<nav class="flex justify-between items-center p-6 bg-gray-800">
    <!-- Title -->
    <div class="flex items-center">
        <h1 class="text-3xl font-bold text-white">Food Express</h1>
    </div>

    <!-- Navigation Links -->
    <div class="flex items-center space-x-4">
        <a href="<%=request.getContextPath()%>/pages/driver/admin-view.jsp" class="text-white hover:text-blue-400">Driver Management</a>
        <a href="<%=request.getContextPath()%>/pages/user/admin-view.jsp" class="text-white hover:text-blue-400">User Management</a>
        <a href="<%=request.getContextPath()%>/pages/food-item/add-food.jsp" class="text-white hover:text-blue-400">Add Food Item</a>
        <a href="<%=request.getContextPath()%>/pages/food-item/admin-view.jsp" class="text-white hover:text-blue-400">View Food Items</a>
        <a href="<%=request.getContextPath()%>/pages/order/pending-order-admin.jsp" class="text-white hover:text-blue-400">Pending Orders</a>
        <a href="<%=request.getContextPath()%>/pages/order/confirmed-order-admin.jsp" class="text-white hover:text-blue-400">Confirmed Orders</a>
        <a href="<%=request.getContextPath()%>/pages/review/admin-view.jsp" class="text-white hover:text-blue-400">Reviews Management</a>
        <a href="<%=request.getContextPath()%>/pages/admin/admin-view.jsp" class="text-white hover:text-blue-400">Admin Management</a>
        <a href="<%=request.getContextPath()%>/pages/admin/register.jsp"
           class="ml-4 px-4 py-2 bg-green-500 text-white rounded-md hover:bg-green-600">
            Signup
        </a>
        <form action="<%=request.getContextPath()%>/admin-logout" method="POST" class="inline"
              onsubmit="return confirm('Are you sure you want to logout ?');">
            <input type="submit" value="Logout" class="ml-4 px-4 py-2 bg-red-500 text-white rounded-md hover:bg-red-600 cursor-pointer">
        </form>
    </div>
</nav>


<div class="max-w-6xl mx-auto py-10 px-4">
    <h1 class="text-3xl font-bold mb-6 text-center">Confirmed Orders</h1>

    <div class="overflow-x-auto">
        <table class="min-w-full table-auto bg-gray-800 rounded-lg overflow-hidden shadow-md">
            <thead class="bg-gray-700 text-white">
            <tr>
                <th class="p-4 text-left">Order ID</th>
                <th class="p-4 text-left">Order Name</th>
                <th class="p-4 text-left">Food ID</th>
                <th class="p-4 text-left">Quantity</th>
                <th class="p-4 text-left">Total Price (Rs.)</th>
                <th class="p-4 text-left">Status</th>
            </tr>
            </thead>
            <tbody class="text-gray-300">
            <%
                boolean found = false;
                for (Order order : orders) {
                    if (order.getStatus().equalsIgnoreCase("confirmed")) {
                        found = true;
            %>
            <tr class="border-b border-gray-700">
                <td class="p-4"><%= order.getId() %></td>
                <td class="p-4"><%= order.getOrderName() %></td>
                <td class="p-4"><%= order.getFoodId() %></td>
                <td class="p-4"><%= order.getQuantity() %></td>
                <td class="p-4"><%= order.getTotalPrice() %></td>
                <td class="p-4 text-green-400 font-semibold capitalize"><%= order.getStatus() %></td>
            </tr>
            <%
                    }
                }
                if (!found) {
            %>
            <tr>
                <td colspan="6" class="p-4 text-center text-gray-400">No confirmed orders found.</td>
            </tr>
            <%
                }
            %>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
