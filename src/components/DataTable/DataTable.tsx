import { DataGrid, GridColDef, GridValueGetterParams } from '@material-ui/data-grid'

const columns: GridColDef[] = [
    { field: 'id', headerName: 'ID', width: 90 },
    {
    field: 'price',
    headerName: 'Price',
    type: 'number',
    width: 150
    },
    {
    field: 'coin',
    headerName: 'Coin',
    width: 150
    },
    {
    field: 'marketCap',
    headerName: 'Market Cap',
    width: 110
    },
];

const rows = [
    { id: 1, coin: 'Ethereum', price: 4586, marketCap: '544 Billion' },
    { id: 2, coin: 'Chainlink', price: 32, marketCap: '15 Billion' },
    { id: 3, coin: 'OriginTrail', price: 3, marketCap: '808 Million' },
    { id: 4, coin: 'Solana', price: 228, marketCap: '68 Billion' },
    { id: 5, coin: 'Polkadot', price: 50, marketCap: '52 Billion' },
    { id: 6, coin: 'Algorand', price: 2, marketCap: '11 Billion' },
    { id: 7, coin: 'Loopring', price: 1, marketCap: '1.6 Billion' },
    { id: 8, coin: 'Bitcoin', price: 63005, marketCap: '1.2 Trillion' },
    { id: 9, coin: 'Synthetix', price: 10, marketCap: '2 Billion' },
  ];

export const DataTable = () =>{
    return (
        <div style={{ height: 400, width: '100%'}}>
            <h2>Coin in inventory</h2>
            <DataGrid rows={rows} columns={columns} pageSize={5} checkboxSelection></DataGrid>
        </div>
    )
}