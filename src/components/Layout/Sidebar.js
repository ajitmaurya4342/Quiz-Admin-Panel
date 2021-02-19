import React from 'react';
import {
  BrowserRouter,
  Redirect,
  Route,
  Switch,
  useHistory,
} from 'react-router-dom';
import { MdBorderAll, MdPerson, MdDashboard } from 'react-icons/md';
import { NavLink } from 'react-router-dom';
import {
  // UncontrolledTooltip,

  Nav,
  NavItem,
  NavLink as BSNavLink,
  Button,
} from 'reactstrap';
import bn from 'utils/bemnames';

// const pageContents = [

// ];

const navItems = [
  { to: '/dashboard', name: 'dashboard', exact: true, Icon: MdDashboard },
  // { to: '/forms', name: 'forms', exact: false, Icon: MdChromeReaderMode },
  { to: '/UserList', name: 'Users', exact: false, Icon: MdPerson },
  {
    to: '/QuestionList',
    name: 'Question List',
    exact: false,
    Icon: MdBorderAll,
  },
  {
    to: '/levelQuestionList',
    name: 'Level Q Set',
    exact: false,
    Icon: MdBorderAll,
  },
  //  { to: '/login', name: 'Logout', exact: false, Icon: MdBorderAll,click:"onLogout" },
];

const bem = bn.create('sidebar');
const Sidebar = () => {
  let history = useHistory();

  function onLog() {}
  function onLogout(routeName) {
    if (routeName === 'Logout') {
      localStorage.setItem('isLoggedIn2', 'true');

      history.push('/dashboard');
    }
  }

  return (
    <aside className={bem.b()}>
      <div />

      <div className={bem.e('content')}>
        <Nav vertical>
          {navItems.map(({ to, name, exact, Icon, click }, index) => (
            <NavItem onClick={click} key={index} className={bem.e('nav-item')}>
              <BSNavLink
                id={`navItem-${name}-${index}`}
                className="text-uppercase"
                tag={NavLink}
                to={to}
                activeClassName="active"
                exact={exact}
              >
                <Icon className={bem.e('nav-item-icon')} />
                <span className="">{name}</span>
              </BSNavLink>
            </NavItem>
          ))}

          {/* <NavItem
              className={bem.e('nav-item')}
              onClick={this.handleClick('Pages')}
            >
              <BSNavLink className={bem.e('nav-item-collapse')}>
                <div className="d-flex">
                  <MdPages className={bem.e('nav-item-icon')} />
                  <span className="">Pages</span>
                </div>
                <MdKeyboardArrowDown
                  className={bem.e('nav-item-icon')}
                  style={{
                    padding: 0,
                    transform: this.state.isOpenPages
                      ? 'rotate(0deg)'
                      : 'rotate(-90deg)',
                    transitionDuration: '0.3s',
                    transitionProperty: 'transform',
                  }}
                />
              </BSNavLink>
            </NavItem> */}
          {/* <Collapse isOpen={this.state.isOpenPages}>
              {pageContents.map(({ to, name, exact, Icon }, index) => (
                <NavItem key={index} className={bem.e('nav-item')}>
                  <BSNavLink
                    id={`navItem-${name}-${index}`}
                    className="text-uppercase"
                    tag={NavLink}
                    to={to}
                    activeClassName="active"
                    exact={exact}
                  >
                    <Icon className={bem.e('nav-item-icon')} />
                    <span className="">{name}</span>
                  </BSNavLink>
                </NavItem>
              ))}
            </Collapse> */}
        </Nav>
      </div>
      {/* <Button className="ml-3" st outline color="dark">
        Click
      </Button> */}
    </aside>
  );
};

export default Sidebar;
