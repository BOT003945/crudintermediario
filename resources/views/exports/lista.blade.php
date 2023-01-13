<table>
    <thead>
    <tr>
        <th>Tipo</th>
        <th>Email</th>
    </tr>
    </thead>
    <tbody>
    @foreach($invoices as $invoice)
        <tr>
            <td>{{ $invoice->precio }}</td>
            <td @disabled(true)>{{ $invoice->id_Estudio }}</td>
        </tr>
    @endforeach
    </tbody>
</table>