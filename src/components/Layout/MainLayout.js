import { Content,  Header, Sidebar } from 'components/Layout';
import React from 'react';
import { useLocation } from 'react-router-dom'
import NotificationSystem from 'react-notification-system';
import { NOTIFICATION_SYSTEM_STYLE } from 'utils/constants';



class MainLayout extends React.Component {
  static isSidebarOpen() {
    return document
      .querySelector('.cr-sidebar')
      .classList.contains('cr-sidebar--open');
  }


  componentWillReceiveProps({ breakpoint }) {
    if (breakpoint !== this.props.breakpoint) {
      this.checkBreakpoint(breakpoint);
    }
  }





  componentDidMount() {
    this.checkBreakpoint(this.props.breakpoint);

 // function HeaderView() {

   

  }

  // close sidebar when
  handleContentClick = event => {
 const {location } = this.props;
if(location.pathname!=='/'){ 
    // close sidebar if sidebar is open and screen size is less than `md`
    if (
      MainLayout.isSidebarOpen() &&
      (this.props.breakpoint === 'xs' ||
        this.props.breakpoint === 'sm' ||
        this.props.breakpoint === 'md')
    ) {
      this.openSidebar('close');
    }
}else{
this.openSidebar('close');
}
  };

  checkBreakpoint(breakpoint) {
 const {location } = this.props;
if(location.pathname!=='/'){ 
    switch (breakpoint) {
      case 'xs':
      case 'sm':
      case 'md':
        return this.openSidebar('close');

      case 'lg':
      case 'xl':
      default:
        return this.openSidebar('open');
    }
}
  }

  openSidebar(openOrClose) {
 const {location } = this.props;
if(location.pathname!=='/'){ 
    if (openOrClose === 'open') {
      return document
        .querySelector('.cr-sidebar')
        .classList.add('cr-sidebar--open');
    }
    document.querySelector('.cr-sidebar').classList.remove('cr-sidebar--open');
}
  }

  render() {
    const { children,location } = this.props;

    return (
      <main className="cr-app bg-light">
 { location.pathname !== '/' &&
        <Sidebar  />
  }
        <Content fluid onClick={this.handleContentClick}>
 { location.pathname !== '/' &&
          <Header />
  }
          {children}
       
        </Content>

        <NotificationSystem
          dismissible={false}
          ref={notificationSystem =>
            (this.notificationSystem = notificationSystem)
          }
          style={NOTIFICATION_SYSTEM_STYLE}
        />
      </main>
    );
  }
}

export default MainLayout;
