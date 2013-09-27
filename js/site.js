/* ========================================================================
 * Bootstrap: transition.js v3.0.0
 * http://twbs.github.com/bootstrap/javascript.html#transitions
 * ========================================================================
 * Copyright 2013 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ======================================================================== */
+function(t){"use strict";function n(){var t=document.createElement("bootstrap"),n={WebkitTransition:"webkitTransitionEnd",MozTransition:"transitionend",OTransition:"oTransitionEnd otransitionend",transition:"transitionend"};for(var i in n)if(void 0!==t.style[i])return{end:n[i]}}t.fn.emulateTransitionEnd=function(n){var i=!1,e=this;t(this).one(t.support.transition.end,function(){i=!0});var s=function(){i||t(e).trigger(t.support.transition.end)};return setTimeout(s,n),this},t(function(){t.support.transition=n()})}(window.jQuery),/* ========================================================================
 * Bootstrap: collapse.js v3.0.0
 * http://twbs.github.com/bootstrap/javascript.html#collapse
 * ========================================================================
 * Copyright 2012 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ======================================================================== */
+function(t){"use strict";var n=function(i,e){this.$element=t(i),this.options=t.extend({},n.DEFAULTS,e),this.transitioning=null,this.options.parent&&(this.$parent=t(this.options.parent)),this.options.toggle&&this.toggle()};n.DEFAULTS={toggle:!0},n.prototype.dimension=function(){var t=this.$element.hasClass("width");return t?"width":"height"},n.prototype.show=function(){if(!this.transitioning&&!this.$element.hasClass("in")){var n=t.Event("show.bs.collapse");if(this.$element.trigger(n),!n.isDefaultPrevented()){var i=this.$parent&&this.$parent.find("> .panel > .in");if(i&&i.length){var e=i.data("bs.collapse");if(e&&e.transitioning)return;i.collapse("hide"),e||i.data("bs.collapse",null)}var s=this.dimension();this.$element.removeClass("collapse").addClass("collapsing")[s](0),this.transitioning=1;var a=function(){this.$element.removeClass("collapsing").addClass("in")[s]("auto"),this.transitioning=0,this.$element.trigger("shown.bs.collapse")};if(!t.support.transition)return a.call(this);var o=t.camelCase(["scroll",s].join("-"));this.$element.one(t.support.transition.end,t.proxy(a,this)).emulateTransitionEnd(350)[s](this.$element[0][o])}}},n.prototype.hide=function(){if(!this.transitioning&&this.$element.hasClass("in")){var n=t.Event("hide.bs.collapse");if(this.$element.trigger(n),!n.isDefaultPrevented()){var i=this.dimension();this.$element[i](this.$element[i]())[0].offsetHeight,this.$element.addClass("collapsing").removeClass("collapse").removeClass("in"),this.transitioning=1;var e=function(){this.transitioning=0,this.$element.trigger("hidden.bs.collapse").removeClass("collapsing").addClass("collapse")};return t.support.transition?(this.$element[i](0).one(t.support.transition.end,t.proxy(e,this)).emulateTransitionEnd(350),void 0):e.call(this)}}},n.prototype.toggle=function(){this[this.$element.hasClass("in")?"hide":"show"]()};var i=t.fn.collapse;t.fn.collapse=function(i){return this.each(function(){var e=t(this),s=e.data("bs.collapse"),a=t.extend({},n.DEFAULTS,e.data(),"object"==typeof i&&i);s||e.data("bs.collapse",s=new n(this,a)),"string"==typeof i&&s[i]()})},t.fn.collapse.Constructor=n,t.fn.collapse.noConflict=function(){return t.fn.collapse=i,this},t(document).on("click.bs.collapse.data-api","[data-toggle=collapse]",function(n){var i,e=t(this),s=e.attr("data-target")||n.preventDefault()||(i=e.attr("href"))&&i.replace(/.*(?=#[^\s]+$)/,""),a=t(s),o=a.data("bs.collapse"),l=o?"toggle":e.data(),r=e.attr("data-parent"),h=r&&t(r);o&&o.transitioning||(h&&h.find('[data-toggle=collapse][data-parent="'+r+'"]').not(e).addClass("collapsed"),e[a.hasClass("in")?"addClass":"removeClass"]("collapsed")),a.collapse(l)})}(window.jQuery),function(){}.call(this);