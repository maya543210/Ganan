$(document).ready(function () {

    // Yaniv fancybox comment start

    //$("a.popupProg").fancybox({
    //    'width': 610,
    //    'height': 530,
    //    'hideOnContentClick': false,
    //    'autoScale': false,
    //    'margin': 10,
    //    'titleShow': false,
    //    'type': 'iframe',
    //    'scrolling': 'no',
    //    onComplete: function () {
    //        $('#fancybox-frame').focus();
    //        setTimeout(setFocusToFlash, 500); // not working
    //    }
    //});

    // Yaniv fancybox comment end

    //function setFocusToFlash() {
    //    $('#fancybox-frame').contents().find('#loader').attr('tabindex', 0).select().focus();
    //}

    /*$("a.popup").fancybox({
		'width': 670, 
		'height': 500, 
		'hideOnContentClick': false,
		'type': 'iframe'
	});*/

    /*$("a.sTitle").fancybox({
		'width': 610, 
		'height': 530, 
		'hideOnContentClick': false,
		'autoScale': false,
		'margin': 10,
		'titleShow': false, 
		'type': 'iframe'
	});*/

    // search
    $("#id_search").quicksearch("div#ContentPlaceHolder1_projects_list div", {
        noResults: '#noresults',
        stripeRows: ['odd', 'even'],
        loader: 'span.loading',
        onBefore: function () {
            $("div#ContentPlaceHolder1_projects_list div").unhighlight();
        }, // remove former highlighting
        onAfter: function () {
            if ($('#id_search').val() != '' && $('#id_search').val().length > 1) {
                $("div#ContentPlaceHolder1_projects_list div:visible").highlight($('#id_search').val());
            }
        },
    });

    // if search, search all
    $("#id_search").focus(function () {
        if ($(this).val() == '') {
            showAll();
            $('.menu').removeClass("menu_active");
            $("#all").addClass("menu_active");
            // hide noresults field
            // $('#noresults').hide();
        }
    });

    // show search link if nothing found 
    /*$("#notfound").mouseover(function(){ 
	   $('#notfound').attr('href','http://www.echteinfach.tv/suche?submit=&max-results=4&suchwort='+$("#id_search").val() );
	});*/

    // menu
    var activeMenu = "all";

    $(".menu").click(filterTopic);

    function filterTopic() {
        // clear search text
        $("#id_search").val("");
        // hide noresults field
        // $('#noresults').hide();
        // trigger search
        setTimeout(function () {
            $(window).trigger("scroll");
        }, 100);

        // assign topic id
        activeMenu = this.id;
        $('.menu').removeClass('menu_active');
        $(this).addClass('menu_active');
        hideAll();
        if (activeMenu == 'all') {
            showAll();
        } else {
            $('.' + activeMenu).show();
        }
    }

    function hideAll() {
        $(".project").hide();
    }

    function showAll() {
        $(".project").show();
    }

    // disable enter key for live search 
    $("#searchform").keypress(function (e) {
        if (e.which == 13) {
            return false;
        }
        // call lazy load for each key by triggering scroll
        setTimeout(function () {
            $(window).trigger("scroll");
        }, 100);
    });

    // assign lazy load to images
    $("ul#ContentPlaceHolder1_projects_list img").lazyload({
        effect: "fadeIn"
    });

    // extends keypress function to add trigger scroll
    $("#searchform").bind("keyup change", function (e) {
        // call lazy load for each key to load images 
        $(window).trigger("scroll");
    })

    // extends filterTopic to add trigger scroll
    $("#id_search").bind("keyup change", function (e) {
        // extra call for lazy loading
        // $(window).trigger("scroll");
        setTimeout(function () {
            $(window).trigger("scroll");
        }, 100);
    })

    // startup: extra call for lazy loading
    $(window).trigger("scroll");

    // workaround for search param in URL, trigger scroll again
    setTimeout(function () {
        $(window).trigger("scroll");
    }, 100);

    // if url t=topic
    var urlQuery = getURLParameter("t");
    // alert(urlQuery + ": " + urlQuery.length);
    if ((typeof (urlQuery) !== 'undefined') && (urlQuery != null) && (urlQuery != "null") && (urlQuery != "")) {
        activeMenu = urlQuery;
        $('.menu').removeClass("menu_active");
        $('#' + activeMenu).addClass("menu_active");
        hideAll();
        $("." + activeMenu).show();
    }

    // if url s=searchterm
    var urlQueryS = getURLParameter("s");
    if ((typeof (urlQueryS) !== 'undefined') && (urlQueryS != null) && (urlQueryS != "null") && (urlQueryS != "")) {
        // set search text
        $("#id_search").val(urlQueryS);
        // trigger search
        $("#id_search").trigger("keyup");
    } else {
        urlQueryS = '';
    }

    // bind event for hashchange nav
    $(window).hashchange(function () {
        crtHash = location.hash;
        if (crtHash != undefined) {
            if (crtHash == "#all") {
                $("#all").trigger('click');
            } else if (crtHash == "#BA.html") {
                $("#BA").trigger('click');
            } else if (crtHash == "#IE.html") {
                $("#IE").trigger('click');
            } else if (crtHash == "#tri.html") {
                $("#tri").trigger('click');
            } else if (crtHash == "#vek.html") {
                $("#vek").trigger('click');
            } else if (crtHash == "#geo.html") {
                $("#geo").trigger('click');
            } else if (crtHash == "#fin.html") {
                $("#fin").trigger('click');
            } else if (crtHash == "#xtr.html") {
                $("#xtr").trigger('click');
            }
        }
    })

    // Trigger the event (useful on page load)
    $(window).hashchange();

});


function getURLParameter(name) {
    return decodeURI(
        (RegExp(name + '=' + '(.+?)(&|$)').exec(location.search) || [, null])[1]
    );
}

/* jQuery hashchange event - v1.3 - 7/21/2010
 * http://benalman.com/projects/jquery-hashchange-plugin/
 *
 * Copyright (c) 2010 "Cowboy" Ben Alman
 * Dual licensed under the MIT and GPL licenses.
 */


(function ($, e, b) {
    var c = "hashchange",
        h = document,
        f, g = $.event.special,
        i = h.documentMode,
        d = "on" + c in e && (i === b || i > 7);

    function a(j) {
        j = j || location.href;
        return "#" + j.replace(/^[^#]*#?(.*)$/, "$1")
    }
    $.fn[c] = function (j) {
        return j ? this.bind(c, j) : this.trigger(c)
    };
    $.fn[c].delay = 50;
    g[c] = $.extend(g[c], {
        setup: function () {
            if (d) {
                return false
            }
            $(f.start)
        },
        teardown: function () {
            if (d) {
                return false
            }
            $(f.stop)
        }
    });
    f = (function () {
        var j = {}, p, m = a(),
            k = function (q) {
                return q
            }, l = k,
            o = k;
        j.start = function () {
            p || n()
        };
        j.stop = function () {
            p && clearTimeout(p);
            p = b
        };

        function n() {
            var r = a(),
                q = o(m);
            if (r !== m) {
                l(m = r, q);
                $(e).trigger(c)
            } else {
                if (q !== m) {
                    location.href = location.href.replace(/#.*/, "") + q
                }
            }
            p = setTimeout(n, $.fn[c].delay)
        }
        $.browser.msie && !d && (function () {
            var q, r;
            j.start = function () {
                if (!q) {
                    r = $.fn[c].src;
                    r = r && r + a();
                    q = $('<iframe tabindex="-1" title="empty"/>').hide().one("load", function () {
                        r || l(a());
                        n()
                    }).attr("src", r || "javascript:0").insertAfter("body")[0].contentWindow;
                    h.onpropertychange = function () {
                        try {
                            if (event.propertyName === "title") {
                                q.document.title = h.title
                            }
                        } catch (s) {}
                    }
                }
            };
            j.stop = k;
            o = function () {
                return a(q.location.href)
            };
            l = function (v, s) {
                var u = q.document,
                    t = $.fn[c].domain;
                if (v !== s) {
                    u.title = h.title;
                    u.open();
                    t && u.write('<script>document.domain="' + t + '"<\/script>');
                    u.close();
                    q.location.hash = v
                }
            }
        })();
        return j
    })()
})(jQuery, this);