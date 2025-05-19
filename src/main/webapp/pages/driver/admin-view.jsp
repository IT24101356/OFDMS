<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Driver Management</title>
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
<div class="max-w-4xl mx-auto py-10 px-4">
    <h1 class="text-3xl font-bold mb-6 text-center">Driver Management</h1>

    <!-- Add Driver Form -->
    <form action="addDriver" method="POST" class="bg-gray-800 p-6 rounded-lg mb-10 shadow-md space-y-4">
        <h2 class="text-xl font-semibold mb-2">Add New Driver</h2>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
            <input type="text" name="name" placeholder="Name" required
                   class="p-3 rounded-md bg-gray-700 border border-gray-600 focus:outline-none focus:ring-2 focus:ring-blue-500">
            <input type="number" name="age" placeholder="Age" required
                   class="p-3 rounded-md bg-gray-700 border border-gray-600 focus:outline-none focus:ring-2 focus:ring-blue-500">
            <button type="submit"
                    class="bg-blue-600 hover:bg-blue-700 text-white font-semibold py-3 rounded-md transition duration-300">
                Add Driver
            </button>
        </div>
    </form>

    <!-- Driver Table -->
    <div class="overflow-x-auto">
        <table class="min-w-full table-auto bg-gray-800 rounded-lg overflow-hidden">
            <thead class="bg-gray-700 text-white">
            <tr>
                <th class="p-4 text-left">ID</th>
                <th class="p-4 text-left">Name</th>
                <th class="p-4 text-left">Age</th>
                <th class="p-4 text-left">Actions</th>
            </tr>
            </thead>
            <tbody id="driverTable" class="text-gray-300">
            <!-- Example static row -->
            <tr class="border-b border-gray-700">
                <td class="p-4">1</td>
                <td class="p-4">John Doe</td>
                <td class="p-4">30</td>
                <td class="p-4 flex space-x-2">
                    <form action="editDriver.jsp" method="GET">
                        <input type="hidden" name="id" value="1">
                        <button type="submit"
                                class="bg-yellow-500 hover:bg-yellow-600 text-white px-4 py-2 rounded-md">Edit</button>
                    </form>
                    <form action="deleteDriver" method="POST" onsubmit="return confirm('Are you sure?')">
                        <input type="hidden" name="id" value="1">
                        <button type="submit"
                                class="bg-red-600 hover:bg-red-700 text-white px-4 py-2 rounded-md">Delete</button>
                    </form>
                </td>
            </tr>
            <!-- Repeat this row dynamically using JSP or JS -->
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
