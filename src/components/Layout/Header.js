import React from 'react';
import { MdClearAll } from 'react-icons/md';
import { useHistory } from 'react-router-dom';
import { Button, Nav, Navbar } from 'reactstrap';
import bn from 'utils/bemnames';

const bem = bn.create('header');
const Header = () => {
  let history = useHistory();
  const handleSidebarControlButton = event => {
    event.preventDefault();
    event.stopPropagation();
    document.querySelector('.cr-sidebar').classList.toggle('cr-sidebar--open');
  };

  const handleLogOut = e => {
    e.preventDefault();
    localStorage.clear();
    history.push('/');
  };

  return (
    <div>
      <Navbar light expand className={bem.b('bg-white')}>
        <Nav navbar className="mr-2">
          <Button outline onClick={handleSidebarControlButton}>
            <MdClearAll size={25} />
          </Button>
        </Nav>
        <Button color="warning" className="ml-auto" onClick={handleLogOut}>
          Logout
        </Button>{' '}
      </Navbar>
    </div>
  );
};

export default Header;
