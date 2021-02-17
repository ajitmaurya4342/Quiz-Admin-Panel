



import React from 'react';
import {
  MdClearAll,
} from 'react-icons/md';
import {
  Button,
  Nav,
  Navbar,



} from 'reactstrap';
import bn from 'utils/bemnames';

const bem = bn.create('header');
const Header =()=>{

 const handleSidebarControlButton = (event) => {

    event.preventDefault();
    event.stopPropagation();
    document.querySelector('.cr-sidebar').classList.toggle('cr-sidebar--open');
  };


  

    return (
<div>
{localStorage.getItem("isLoggedIn")==="true" &&
      <Navbar light expand className={bem.b('bg-white')}>
        <Nav navbar className="mr-2">

          <Button outline onClick={handleSidebarControlButton}>
            <MdClearAll size={25} />
          </Button>

        </Nav>
       

      
      </Navbar>
}
</div>
    );
  
}

export default Header;
