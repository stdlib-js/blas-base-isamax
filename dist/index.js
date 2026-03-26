"use strict";var o=function(e,r){return function(){return r||e((r={exports:{}}).exports,r),r.exports}};var q=o(function(B,m){
var f=require('@stdlib/math-base-special-absf/dist');function R(e,r,a,i){var u,s,v,n,t;if(e<1)return-1;if(s=0,e===1)return s;for(u=f(r[i]),v=i+a,t=1;t<e;t++)n=f(r[v]),n>u&&(s=t,u=n),v+=a;return s}m.exports=R
});var d=o(function(C,c){
var _=require('@stdlib/strided-base-stride2offset/dist'),b=q();function E(e,r,a){var i=_(e,a);return b(e,r,a,i)}c.exports=E
});var j=o(function(D,y){
var O=require('@stdlib/utils-define-nonenumerable-read-only-property/dist'),p=d(),g=q();O(p,"ndarray",g);y.exports=p
});var h=require("path").join,k=require('@stdlib/utils-try-require/dist'),w=require('@stdlib/assert-is-error/dist'),z=j(),x,l=k(h(__dirname,"./native.js"));w(l)?x=z:x=l;module.exports=x;
/** @license Apache-2.0 */
/** @license Apache-2.0 */
//# sourceMappingURL=index.js.map
