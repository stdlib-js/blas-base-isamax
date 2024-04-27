"use strict";var o=function(i,a){return function(){return a||i((a={exports:{}}).exports,a),a.exports}};var m=o(function(A,x){
var f=require('@stdlib/math-base-special-absf/dist');function _(i,a,n){var u,e,t,v,r;if(i<1||n<=0)return-1;if(e=0,i===1)return e;if(n===1){for(u=f(a[0]),r=1;r<i;r++)v=f(a[r]),v>u&&(e=r,u=v);return e}for(u=f(a[0]),t=n,r=1;r<i;r++)v=f(a[t]),v>u&&(e=r,u=v),t+=n;return e}x.exports=_
});var y=o(function(B,p){
var c=require('@stdlib/math-base-special-absf/dist');function d(i,a,n,u){var e,t,v,r,s;if(i<1||n<=0)return-1;if(t=0,i===1)return t;for(e=c(a[u]),v=u+n,s=1;s<i;s++)r=c(a[v]),r>e&&(t=s,e=r),v+=n;return t}p.exports=d
});var l=o(function(C,b){
var E=require('@stdlib/utils-define-nonenumerable-read-only-property/dist'),j=m(),O=y();E(j,"ndarray",O);b.exports=j
});var g=require("path").join,h=require('@stdlib/utils-try-require/dist'),k=require('@stdlib/assert-is-error/dist'),w=l(),q,R=h(g(__dirname,"./native.js"));k(R)?q=w:q=R;module.exports=q;
/** @license Apache-2.0 */
/** @license Apache-2.0 */
//# sourceMappingURL=index.js.map
