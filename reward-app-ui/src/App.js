import { useEffect, useState } from 'react';
import { Table } from "react-bootstrap";
import './App.css';
import Transactions from './Transactions'



function App() {

  const baseUrl = 'http://localhost:8080/api'

  const [ customers, setCustomers ] = useState([]);
  const [ showTransactions, setShowTransactions] = useState(false);
  const [ selectedCustomer, setSelectedCustomer] = useState(null);

  const handleCustomerClick = (customer) => {
    setSelectedCustomer(customer);
    setShowTransactions(true);
  };

  useEffect(() => {
    const fetchData = async () => {
    const response = await fetch(
      baseUrl+'/customers');
          const data = await response.json();
      //use only 3 sample data
      setCustomers( data )
    }
    // Call the function
    fetchData();
  }, []);

  return (
    <div className="App">
     <h3 className='h3'>Customer's Details</h3>
     <Table striped bordered hover>
       <thead>
         <tr>
           <th>Name</th>
           <th>No of Transactions</th>
           <th>Reward Points</th>
           <th>Total Purchase</th>
           <th>Action</th>
         </tr>   
       </thead>   
       <tbody>
         {
          customers.map( (customer,key) =>
          <tr key={customer.id}>
            <td>{customer.name }</td>
            <td>{customer.transactions.length }</td>
            <td>{customer.rewardPoints }</td>
            <td>{customer.totalPurchases }</td>
            <td><span onClick={() => handleCustomerClick(customer)}>
                Show Tranactions
              </span></td>
            {selectedCustomer && (<Transactions transactions={ selectedCustomer.transactions } show = {showTransactions} 
              close = {() =>{setShowTransactions(false)}} />)}
          </tr>
         )
       }
       </tbody>
     </Table>
     
   </div>
  );
}

export default App;
