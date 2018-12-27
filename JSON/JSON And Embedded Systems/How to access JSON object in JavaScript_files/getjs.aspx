(function(){
    /* jshint ignore:start */
    var pp_options={"cf":"728X90","tppg":"","asv":"30","esid":"","cwod":"","maOpts":{"enabled":false,"maxSeqNum":0,"periodMax":0,"periodMin":0,"rotatingPassback":false,"skipRotation":false},"epid":"","cn":"1","crtg":"","cp":"560779","ct":"532123","cu":"https://ads.contextweb.com/TagPublish/GetAd.aspx","cwfl":"","ccid":"","wp":"0","brk":"false","ca":"VIEWAD","cb":[560009,560138,558853,534301,558225,558356,558357,558511,560803,558118,558502,547259,545979,543793,543921,530739,558530,541254,560602,560724,534890,556010,558189,530912,560097,560741,560505,537085,558079,535039,548607,543604,560244]};
    /* jshint ignore:end */
    window.pp = window.pp || {
        prp: {},
        hPrp: function(pid,cnvfn){
            return function(o){
                try{window.pp.prp[pid] = cnvfn ? cnvfn(o) : o;}catch(e){}
            };
        }
    };
    if(typeof(window.pp.Ad)=='undefined'){
        if(pp_options.prp !== undefined && pp_options.prp !== null && typeof(pp_options.prp) !== 'string'){
            for(var i = 0; i < pp_options.prp.length; i++){
                document.write("<scr" + "ipt type=\"text/javascript\" src=\"" + pp_options.prp[i] + "\"></scr" + "ipt>"); // jshint ignore:line
            }
        }
        window.pp_options = pp_options;
        window.pp_display_ad = 1;
        document.write("<scr" + "ipt type=\"text/javascript\" src=\"https://ads.contextweb.com/TagPublish/getjs.static.js?v=30\"></scr" + "ipt>"); // jshint ignore:line
    } else {
        new pp.Ad(pp_options).display();
    }
})();