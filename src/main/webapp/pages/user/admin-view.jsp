<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>User Management</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-900 text-white min-h-screen">

<nav class="flex justify-between items-center p-6 bg-gray-800">
    <!-- Title -->
    <div class="flex items-center">
        <h1 class="text-3xl font-bold text-white">Food Express</h1>
    </div>

    <!-- Navigation Links -->
    <div class="space-x-4">

        <a href="<%=request.getContextPath()%>/pages/driver/admin-view.jsp" class="text-white hover:text-blue-400">Driver Management</a>
        <a href="<%=request.getContextPath()%>/pages/user/admin-view.jsp" class="text-white hover:text-blue-400">User Management</a>
        <a href="<%=request.getContextPath()%>/pages/food-item/AddFood.jsp" class="text-white hover:text-blue-400">Add Food Item</a>
        <a href="<%=request.getContextPath()%>/pages/food-item/admin-view.jsp" class="text-white hover:text-blue-400">View Food Items</a>
        <a href="<%=request.getContextPath()%>/pages/order/pending-order-admin.jsp" class="text-white hover:text-blue-400">Pending Orders</a>
        <a href="<%=request.getContextPath()%>/pages/order/confirmed-order-admin.jsp" class="text-white hover:text-blue-400">Confirmed Orders</a>
        <a href="<%=request.getContextPath()%>/pages/review/admin-view.jsp" class="text-white hover:text-blue-400">Reviews Management</a>
        <a href="<%=request.getContextPath()%>/pages/admin/admin-view.jsp" class="text-white hover:text-blue-400">Admin Management</a>
        <a href="<%=request.getContextPath()%>/pages/admin/register.jsp"
           class="ml-4 px-4 py-2 bg-green-500 text-white rounded-md hover:bg-green-600">
            Signup
        </a>
        <a href="<%=request.getContextPath()%>/admin-logout"
           class="ml-4 px-4 py-2 bg-red-500 text-white rounded-md hover:bg-red-600">
            Logout
        </a>

    </div>
</nav>


<div class="max-w-6xl mx-auto py-10 px-4">
    <h1 class="text-3xl font-bold mb-6 text-center">User Management</h1>

    <!-- Users Table -->
    <div class="overflow-x-auto">
        <table class="min-w-full table-auto bg-gray-800 rounded-lg overflow-hidden shadow">
            <thead class="bg-gray-700 text-white">
            <tr>
                <th class="p-4 text-left">User ID</th>
                <th class="p-4 text-left">Name</th>
                <th class="p-4 text-left">Age</th>
                <th class="p-4 text-left">Email</th>
                <th class="p-4 text-left">Actions</th>
            </tr>
            </thead>
            <tbody class="text-gray-300">
            <!-- Example User Row (loop from backend using JSP/Servlet) -->
            <tr class="border-b border-gray-700">
                <td class="p-4">1</td>
                <td class="p-4">John Doe</td>
                <td class="p-4">22</td>
                <td class="p-4">john@example.com</td>
                <td class="p-4">
                    <form action="<%=request.getContextPath()%>/delete-user" method="POST" onsubmit="return confirm('Are you sure you want to delete this user?');">
                        <input type="hidden" name="userId" value="1">
                        <button type="submit"
                                class="bg-red-600 hover:bg-red-700 text-white px-4 py-2 rounded-md">
                            Delete
                        </button>
                    </form>
                </td>
            </tr>
            <!-- Repeat this block dynamically with backend data -->
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
