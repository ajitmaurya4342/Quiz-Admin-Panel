(window.webpackJsonp=window.webpackJsonp||[]).push([[8],{115:function(e,t,a){"use strict";var n=a(2),r=a(5),s=a(6),o=a(12),c=a(0),i=a.n(c),l=a(1),u=a.n(l),f=a(7),d=a.n(f),p=a(4),b={children:u.a.node,inline:u.a.bool,tag:p.g,innerRef:u.a.oneOfType([u.a.object,u.a.func,u.a.string]),className:u.a.string,cssModule:u.a.object},m=function(e){function t(t){var a;return(a=e.call(this,t)||this).getRef=a.getRef.bind(Object(o.a)(Object(o.a)(a))),a.submit=a.submit.bind(Object(o.a)(Object(o.a)(a))),a}Object(s.a)(t,e);var a=t.prototype;return a.getRef=function(e){this.props.innerRef&&this.props.innerRef(e),this.ref=e},a.submit=function(){this.ref&&this.ref.submit()},a.render=function(){var e=this.props,t=e.className,a=e.cssModule,s=e.inline,o=e.tag,c=e.innerRef,l=Object(r.a)(e,["className","cssModule","inline","tag","innerRef"]),u=Object(p.d)(d()(t,!!s&&"form-inline"),a);return i.a.createElement(o,Object(n.a)({},l,{ref:c,className:u}))},t}(c.Component);m.propTypes=b,m.defaultProps={tag:"form"},t.a=m},116:function(e,t,a){"use strict";var n=a(2),r=a(5),s=a(0),o=a.n(s),c=a(1),i=a.n(c),l=a(7),u=a.n(l),f=a(4),d={children:i.a.node,row:i.a.bool,check:i.a.bool,inline:i.a.bool,disabled:i.a.bool,tag:f.g,className:i.a.string,cssModule:i.a.object},p=function(e){var t=e.className,a=e.cssModule,s=e.row,c=e.disabled,i=e.check,l=e.inline,d=e.tag,p=Object(r.a)(e,["className","cssModule","row","disabled","check","inline","tag"]),b=Object(f.d)(u()(t,!!s&&"row",i?"form-check":"form-group",!(!i||!l)&&"form-check-inline",!(!i||!c)&&"disabled"),a);return o.a.createElement(d,Object(n.a)({},p,{className:b}))};p.propTypes=d,p.defaultProps={tag:"div"},t.a=p},117:function(e,t,a){"use strict";var n=a(2),r=a(5),s=a(0),o=a.n(s),c=a(1),i=a.n(c),l=a(7),u=a.n(l),f=a(90),d=a.n(f),p=a(4),b=i.a.oneOfType([i.a.number,i.a.string]),m=i.a.oneOfType([i.a.string,i.a.number,i.a.shape({size:b,push:Object(p.c)(b,'Please use the prop "order"'),pull:Object(p.c)(b,'Please use the prop "order"'),order:b,offset:b})]),g={children:i.a.node,hidden:i.a.bool,check:i.a.bool,size:i.a.string,for:i.a.string,tag:p.g,className:i.a.string,cssModule:i.a.object,xs:m,sm:m,md:m,lg:m,xl:m,widths:i.a.array},h={tag:"label",widths:["xs","sm","md","lg","xl"]},O=function(e,t,a){return!0===a||""===a?e?"col":"col-"+t:"auto"===a?e?"col-auto":"col-"+t+"-auto":e?"col-"+a:"col-"+t+"-"+a},j=function(e){var t=e.className,a=e.cssModule,s=e.hidden,c=e.widths,i=e.tag,l=e.check,f=e.size,b=e.for,m=Object(r.a)(e,["className","cssModule","hidden","widths","tag","check","size","for"]),g=[];c.forEach(function(t,n){var r=e[t];if(delete m[t],r||""===r){var s,o=!n;if(d()(r)){var c,i=o?"-":"-"+t+"-";s=O(o,t,r.size),g.push(Object(p.d)(u()(((c={})[s]=r.size||""===r.size,c["order"+i+r.order]=r.order||0===r.order,c["offset"+i+r.offset]=r.offset||0===r.offset,c))),a)}else s=O(o,t,r),g.push(s)}});var h=Object(p.d)(u()(t,!!s&&"sr-only",!!l&&"form-check-label",!!f&&"col-form-label-"+f,g,!!g.length&&"col-form-label"),a);return o.a.createElement(i,Object(n.a)({htmlFor:b},m,{className:h}))};j.propTypes=g,j.defaultProps=h,t.a=j},118:function(e,t,a){"use strict";var n=a(2),r=a(5),s=a(6),o=a(12),c=a(0),i=a.n(c),l=a(1),u=a.n(l),f=a(7),d=a.n(f),p=a(4),b={children:u.a.node,type:u.a.string,size:u.a.string,bsSize:u.a.string,state:Object(p.c)(u.a.string,'Please use the props "valid" and "invalid" to indicate the state.'),valid:u.a.bool,invalid:u.a.bool,tag:p.g,innerRef:u.a.oneOfType([u.a.object,u.a.func,u.a.string]),static:Object(p.c)(u.a.bool,'Please use the prop "plaintext"'),plaintext:u.a.bool,addon:u.a.bool,className:u.a.string,cssModule:u.a.object},m=function(e){function t(t){var a;return(a=e.call(this,t)||this).getRef=a.getRef.bind(Object(o.a)(Object(o.a)(a))),a.focus=a.focus.bind(Object(o.a)(Object(o.a)(a))),a}Object(s.a)(t,e);var a=t.prototype;return a.getRef=function(e){this.props.innerRef&&this.props.innerRef(e),this.ref=e},a.focus=function(){this.ref&&this.ref.focus()},a.render=function(){var e=this.props,t=e.className,a=e.cssModule,s=e.type,o=e.bsSize,c=e.state,l=e.valid,u=e.invalid,f=e.tag,b=e.addon,m=e.static,g=e.plaintext,h=e.innerRef,O=Object(r.a)(e,["className","cssModule","type","bsSize","state","valid","invalid","tag","addon","static","plaintext","innerRef"]),j=["radio","checkbox"].indexOf(s)>-1,v=new RegExp("\\D","g"),y=f||("select"===s||"textarea"===s?s:"input"),w="form-control";g||m?(w+="-plaintext",y=f||"input"):"file"===s?w+="-file":j&&(w=b?null:"form-check-input"),c&&"undefined"===typeof l&&"undefined"===typeof u&&("danger"===c?u=!0:"success"===c&&(l=!0)),O.size&&v.test(O.size)&&(Object(p.h)('Please use the prop "bsSize" instead of the "size" to bootstrap\'s input sizing.'),o=O.size,delete O.size);var E=Object(p.d)(d()(t,u&&"is-invalid",l&&"is-valid",!!o&&"form-control-"+o,w),a);return("input"===y||f&&"function"===typeof f)&&(O.type=s),!O.children||g||m||"select"===s||"string"!==typeof y||"select"===y||(Object(p.h)('Input with a type of "'+s+'" cannot have children. Please use "value"/"defaultValue" instead.'),delete O.children),i.a.createElement(y,Object(n.a)({},O,{ref:h,className:E}))},t}(i.a.Component);m.propTypes=b,m.defaultProps={type:"text"},t.a=m},226:function(e,t,a){"use strict";a.r(t);var n=a(79),r=a(85),s=a(84),o=a(0),c=a.n(o),i=a(78),l=(a(75),function(e){return Object(i.a)().post("admin/login",e)}),u=a(152),f=a(217),d=a(218),p=a(219),b=a(220),m=a(115),g=a(221),h=a(116),O=a(117),j=a(118),v=a(71),y=a(3);t.default=function(){var e=Object.freeze({user_name:"",password:""}),t=Object(o.useState)(e),a=Object(s.a)(t,2),i=a[0],w=a[1],E=function(e){w(Object(r.a)({},i,Object(n.a)({},e.target.name,e.target.value.trim())))},z=Object(y.g)();return c.a.createElement("div",{class:"section-1-container section-container loginDiv row align-items-center"},c.a.createElement("div",{className:"container"},c.a.createElement(u.a,{in:!0,timeout:150},c.a.createElement(f.a,null,c.a.createElement(d.a,{sm:"12",md:{size:4,offset:4}},c.a.createElement(p.a,{style:{borderRadius:"10px"}},c.a.createElement(b.a,null,c.a.createElement(m.a,null,c.a.createElement("div",{className:"text-center pb-4"},c.a.createElement(g.a,null,c.a.createElement("b",null,"Quiz IQ"))),c.a.createElement(h.a,null,c.a.createElement(O.a,{for:"username"},"Username"),c.a.createElement(j.a,{type:"text",name:"user_name",onChange:E})),c.a.createElement(h.a,null,c.a.createElement(O.a,{for:"username"},"Password"),c.a.createElement(j.a,{type:"password",name:"password",onChange:E})),c.a.createElement("hr",null),c.a.createElement(v.a,{size:"lg",color:"warning",block:!0,value:"/dashboard",onClick:function(e){e.preventDefault(),l(i).then(function(e){var t=e.data;t&&!0===t.status?(localStorage.setItem("loginId",t.Record[0].user_id),localStorage.setItem("loginType",t.Record[0].user_id),localStorage.setItem("userName",t.Record[0].user_id),z.push("/dashboard")):console.log("iuyiu")}).catch(function(e){console.log("On Catch Add_Submission_Tagging_User",e)}).finally(function(){})}},"Login")))))))))}},75:function(e,t,a){"use strict";a.d(t,"a",function(){return n});var n="http://65.0.110.222:5000/"},78:function(e,t,a){"use strict";a(0);var n=a(83),r=a.n(n),s=a(75);t.a=function(){var e=r.a.create({baseURL:s.a});return e.defaults.headers.common["Access-Control-Allow-Origin"]="*",e.interceptors.response.use(function(e){return e},function(e){return Promise.reject(e)}),e}},79:function(e,t,a){"use strict";function n(e,t,a){return t in e?Object.defineProperty(e,t,{value:a,enumerable:!0,configurable:!0,writable:!0}):e[t]=a,e}a.d(t,"a",function(){return n})},85:function(e,t,a){"use strict";a.d(t,"a",function(){return r});var n=a(79);function r(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{},r=Object.keys(a);"function"===typeof Object.getOwnPropertySymbols&&(r=r.concat(Object.getOwnPropertySymbols(a).filter(function(e){return Object.getOwnPropertyDescriptor(a,e).enumerable}))),r.forEach(function(t){Object(n.a)(e,t,a[t])})}return e}}}]);
//# sourceMappingURL=8.2d21bd12.chunk.js.map