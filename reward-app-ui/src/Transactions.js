import { Modal, Table } from "react-bootstrap";
import "bootstrap/dist/css/bootstrap.min.css";
import './Transactions.css';

function Transactions({ transactions, show, close }) {
    
    return (
        <div className="Transactions">
            <Modal
                show={show}
                size="lg"
                centered
                className="Transactions"
            >
                <Modal.Header className="Transactions">
                    <Modal.Title id="contained-modal-title-vcenter">Transaction Details</Modal.Title>
                </Modal.Header>
                <Modal.Body className="Transactions">
                    <Table striped bordered hover className="Transactions">
                        <thead>
                            <tr>
                                <th>Description</th>
                                <th>Transaction Date</th>
                                <th>Transaction Value(in RS)</th>
                                <th>Points</th>
                            </tr>
                        </thead>
                        <tbody>
                            {
                                transactions.map((transaction) =>
                                    <tr key={transaction.id}>
                                        <td>{transaction.description}</td>
                                        <td>{transaction.transactionDate}</td>
                                        <td>{transaction.total}</td>
                                        <td>{transaction.points}</td>
                                    </tr>
                                )
                            }
                        </tbody>
                    </Table>
                </Modal.Body>
                <Modal.Footer>
                    <button onClick={close}>Close</button>
                </Modal.Footer>
            </Modal>
        </div>
    );
}

export default Transactions;