(window.webpackJsonp=window.webpackJsonp||[]).push([[9],{227:function(e,t,n){"use strict";n.r(t);var l=n(84),a=n(0),i=n.n(a),r=n(3),s=n(92),o=n.n(s),c=n(98),u=n.n(c),d=n(86),m=n(99),f=n.n(m),p=n(71),b=n(152),g=n(2),v=n(5),y=n(1),O=n.n(y),h=n(7),E=n.n(h),j=n(4),L={tag:j.g,type:O.a.string,size:O.a.string,color:O.a.string,className:O.a.string,cssModule:O.a.object,children:O.a.string},w=function(e){var t=e.className,n=e.cssModule,l=e.type,a=e.size,r=e.color,s=e.children,o=e.tag,c=Object(v.a)(e,["className","cssModule","type","size","color","children","tag"]),u=Object(j.d)(E()(t,!!a&&"spinner-"+l+"-"+a,"spinner-"+l,!!r&&"text-"+r),n);return i.a.createElement(o,Object(g.a)({role:"status"},c,{className:u}),s&&i.a.createElement("span",{className:Object(j.d)("sr-only",n)},s))};w.propTypes=L,w.defaultProps={tag:"div",type:"border",children:"Loading..."};var q=w,_=n(217),Q=n(218),x=n(219),N=n(221),k=n(220),F=n(82),A=n(11);t.default=function(e){var t=Object(a.useState)(!1),n=Object(l.a)(t,2),s=n[0],m=n[1],g=[{dataField:"question",text:"Question",filter:Object(c.textFilter)(),formatter:function(e,t){return i.a.createElement("div",null,i.a.createElement("span",null,"2"==t.question_type?i.a.createElement(d.a,{url:t.question,width:"120px",height:"120px",id:"myId",className:"myClassname",display:"initial",position:"relative"}):t.question))}},{dataField:"options",text:"Options"},{dataField:"correct_options",text:"Correct Option"},{dataField:"question_type",text:"Type (1-Ques,2-Img)",filter:Object(c.textFilter)(),formatter:function(e,t){return i.a.createElement("div",null,i.a.createElement("span",{style:t.level_q_id?{display:"block",color:"green"}:{display:"block"}},"2"==t.question_type?"Image":"Question"," ",i.a.createElement("br",null),t.level_q_id?"ADDED TO Level ":""," ",t.level," ",t.game_name)," ")}},{dataField:"",text:"Action",formatter:function(e,t){return i.a.createElement("div",{className:"checkbox disabled"},i.a.createElement(p.a,{onClick:function(){return e=t.question_id,void v.push("/questionForm",{question_id:e});var e},outline:!0,color:t.level_q_id?"warning":"success",size:"sm"},i.a.createElement(A.d,null)," Edit")," ")}}],v=Object(r.g)(),y=Object(a.useState)([]),O=Object(l.a)(y,2),h=O[0],E=O[1];Object(a.useEffect)(function(){j()},[]);var j=function(e){m(!0),F.a.GetQuestionList().then(function(e){var t=e.data;t&&!0===t.status&&(E(t.Record.data),m(!1))}).catch(function(e){console.log("On Catch Add_Submission_Tagging_User",e)}).finally(function(){})};return i.a.createElement("div",{className:"mb-3"},i.a.createElement(b.a,{in:!0,timeout:200},!0===s?i.a.createElement(q,{style:{width:"3rem",height:"3rem"}}):i.a.createElement(_.a,null,i.a.createElement(Q.a,{sm:"12",md:{size:12,offset:0}},i.a.createElement(x.a,{className:"m-3"},i.a.createElement(N.a,null,"Questions"," ",i.a.createElement(p.a,{color:"success",onClick:function(){v.push("/questionForm",{question_id:""})},className:"float-right"},"Add Question")," "),i.a.createElement(k.a,null,i.a.createElement(o.a,{keyField:"id",data:h,columns:g,pagination:f()(),filter:u()()})))))))}},75:function(e,t,n){"use strict";n.d(t,"a",function(){return l});var l="http://65.0.110.222:5000/"},78:function(e,t,n){"use strict";n(0);var l=n(83),a=n.n(l),i=n(75);t.a=function(){var e=a.a.create({baseURL:i.a});return e.defaults.headers.common["Access-Control-Allow-Origin"]="*",e.interceptors.response.use(function(e){return e},function(e){return Promise.reject(e)}),e}},82:function(e,t,n){"use strict";var l=n(78);n(75);t.a={AddQuestion:function(e){return Object(l.a)().post("admin/addEditQuestion",e)},GetQuestionList:function(){return Object(l.a)().get("admin/questionlist")},EditQuestion:function(e){return Object(l.a)().get("admin/questionlist?question_id=".concat(e))},GetGameList:function(){return Object(l.a)().get("admin/gamelist")},GetLevelList:function(){return Object(l.a)().get("admin/LevelList")},EditLevelList:function(e){return Object(l.a)().get("admin/LevelList?level_id=".concat(e))},GetLevelQuestionSetList:function(){return Object(l.a)().get("admin/LevelQuestionSetList")},AddLevelQuestion:function(e){return console.log(e),Object(l.a)().post("admin/addEditLevel",e)},GetLevelQuestionList:function(){return Object(l.a)().get("admin/questionlist?isUnique=1")}}},86:function(e,t,n){"use strict";var l=n(0),a=n.n(l),i=n(14),r=n.n(i),s=function(){return(s=Object.assign||function(e){for(var t,n=1,l=arguments.length;n<l;n++)for(var a in t=arguments[n])Object.prototype.hasOwnProperty.call(t,a)&&(e[a]=t[a]);return e}).apply(this,arguments)};t.a=function(e){for(var t=e.url,n=e.allowFullScreen,l=e.position,i=e.display,o=e.height,c=e.width,u=e.overflow,d=e.styles,m=e.onLoad,f=e.onMouseOver,p=e.onMouseOut,b=e.scrolling,g=e.id,v=e.frameBorder,y=e.ariaHidden,O=e.sandbox,h=e.allow,E=e.className,j=e.title,L=e.ariaLabel,w=e.ariaLabelledby,q=e.name,_=e.target,Q=e.loading,x=e.importance,N=e.referrerpolicy,k=e.allowpaymentrequest,F=e.src,A=r()({src:F||t,target:_||null,style:{position:l||null,display:i||"block",overflow:u||null},scrolling:b||null,allowpaymentrequest:k||null,importance:x||null,sandbox:O||null,loading:Q||null,styles:d||null,name:q||null,className:E||null,referrerpolicy:N||null,title:j||null,allow:h||null,id:g||null,"aria-labelledby":w||null,"aria-hidden":y||null,"aria-label":L||null,width:c||null,height:o||null,onLoad:m||null,onMouseOver:f||null,onMouseOut:p||null}),G=Object.create(null),M=0,C=Object.keys(A);M<C.length;M++){var S=C[M];null!=A[S]&&(G[S]=A[S])}for(var z=0,P=Object.keys(G.style);z<P.length;z++){var T=P[z];null==G.style[T]&&delete G.style[T]}if(n)if("allow"in G){var D=G.allow.replace("fullscreen","");G.allow=("fullscreen "+D.trim()).trim()}else G.allow="fullscreen";return v>=0&&(G.style.hasOwnProperty("border")||(G.style.border=v)),a.a.createElement("iframe",s({},G))}}}]);
//# sourceMappingURL=9.1316f1a5.chunk.js.map