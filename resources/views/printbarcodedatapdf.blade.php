<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>@font-face Demo</title>
    <style>
        body {
            margin: 0 auto;
            font-size: 10px;
        }
        body,
        td,
        th {
            font-size: 11px;
        }
    </style>
</head>
<body>
    @foreach($stickerxy as $value2)
    @for($i=1; $i<=$value2->qty; $i++)
        <table width="100%" align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td style="font-size: 14px; white-space: nowrap;" align="left"><img style="width: 50px;height: 50px;" src="{{ URL('/documents/' . $company->Logo) }}" ></td>
                <td style="font-size: 14px; white-space: nowrap;" align="right"><img style="width: 50px;height: 50px;" src="{{ URL('/documents/' . $company->BackgroundLogo) }}" ></td>
                
            </tr>
            <tr>
                <td colspan="2" align="center"> <img style="text-align:center;margin-bottom: 10px;" src="data:image/png;base64,{{DNS2D::getBarcodePNG($value2->LabelDeails, 'QRCODE')}}" alt="barcode" />
                </td>
            </tr>

            <tr>
                <td align="left" style="width: 100px;">Order Number:</td>
                <td style="font-size: 10px;" align="right">{{ $value2->OrderNumber }}</td>
            </tr>
            <tr>
                <td align="left">Client Name:</td>
                <td style="font-size: 10px;" align="right">{{ $value2->ClientName }}</td>
            </tr>
            <tr>
                <td align="left">Content:</td>
                <td style="font-size: 10px;" align="right">{{ $value2->Content }}</td>
            </tr>
            <tr>
                <td align="left">Order Date:</td>
                <td style="font-size: 10px;" align="right">{{ $value2->CustomerOrderDate }}</td>
            </tr>
            <tr>
                <td align="left">Unit Number:</td>
                <td style="font-size: 10px;" align="right">{{ $value2->UnitNumber }}</td>
            </tr>
            <tr>
                <td align="left">Description:</td>
                <td style="font-size: 10px;" align="right">{{ $value2->Description }}</td>
            </tr>

        </table>
        @endfor
        @endforeach
</body>
</html>