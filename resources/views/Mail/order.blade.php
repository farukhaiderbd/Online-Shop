<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Order Completed</title>
</head>
<body>

    <h3>Thanks for order</h3>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>{{ $data['name'] }}</td>
                    <td>{{ $data['email'] }}</td>
                </tr>
            </tbody>
        </table>
</body>
</html>
