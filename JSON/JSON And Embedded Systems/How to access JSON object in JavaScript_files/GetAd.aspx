(function(){
    /* tokens */
    var ppcs="%3Cdiv%20id%3D%27dv_pp_V8PsXSHV0e3j%27%3E%3Cdiv%3E%20%3Cscript%3Evar%20cbola_script_div%3D%20document.currentScript.parentNode%3B%09%20%20%20var%20cbola_script%3D%20document.createElement%28%27script%27%29%3B%20var%20cbola_catId%20%3D%20null%3B%20if%20%28typeof%20cbola_Category%20%21%3D%3D%20%27undefined%27%29%20%20%20%20cbola_catId%20%3D%20cbola_Category%3B%20var%20cbola_rand%3DMath.floor%28%28Math.random%28%29%20*%20100%29%20%2B%201%29%3B%20cbola_script.src%3D%20%27%2F%2Fpsa.carambo.la%2FgetPsa%3Fwidth%3D728%26height%3D90%26did%3D112239%26pid%3Dmyky82%26isMobile%3D0%26category%3D%27%2B%20cbola_catId%2B%27%26cb%3D%27%2B%20cbola_rand%3B%20cbola_script_div.appendChild%28cbola_script%29%3B%20%3C%2Fscript%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E",
        ppps="%3Cdiv%20style%3D%22display%3Anone%3Bwidth%3A0%3Bheight%3A0%22%3E%3CIFRAME%20SRC%3D%22https%3A%2F%2Fpixel.quantserve.com%2Fpixel%2Fp-01-0VIaSjnOLg.gif%3Ftags%3DCONTEXTWEB.IAB19-20%2CPUBLISHER.560779%2C%2CCAMPAIGN.0.0%2CAA_30000%2CAA_30102%2CAA_30301%2CAA_30602%2CAA_30800%2CAA_30207%2CAA_30902%2CADSIZE.728X90%2CZIPCODE.560001%2CPUBLISHERDOMAIN.mkyong.com%22%20HEIGHT%3D%220%22%20WIDTH%3D%220%22%20MARGINWIDTH%3D%220%22%20MARGINHEIGHT%3D%220%22%20ALLOWTRANSPARENCY%3D%22true%22%20FRAMEBORDER%3D%220%22%20SCROLLING%3D%22NO%22%3E%3C%2FIFRAME%3E%3C%2Fdiv%3E",
        pp_exp="0",
        ppContainerId = "pp_ad_container_0",
        maOpts = {"enabled":false,"maxSeqNum":0,"periodMax":0,"periodMin":0,"rotatingPassback":false,"skipRotation":false},
        /* selecting parent.parent.pp in case this is in multiple iframes */
        pp = window.pp || parent.pp || parent.parent.pp,
        runSafe = function(func){
            try{
                return func();
            }catch(ignore){}
        },
        thisAd = runSafe(function(){
            if (typeof pp === 'object' && typeof pp.updateMaOpts === 'function') {
                return pp.updateMaOpts(ppContainerId, maOpts);
            }
        }),
        docWrite = function(str){
            document.write(decodeURIComponent(str)); // jshint ignore:line
        };
    /* right before rendering the creative, the previous one will be rotated if necessary */
    runSafe(function(){
        if (typeof pp === 'object' && typeof pp.beforeRenderAd === 'function') {
            pp.beforeRenderAd(ppContainerId);
        }
    });
    /* only render ad if necessary according to MA config */
    if (typeof thisAd !== 'object' || typeof thisAd.maOpts !== 'object' || !thisAd.maOpts.skipRotation) {
        //inline rendering using document.write
        if(pp_exp=='1'){
            try{
                /* used in async javascript [1.0], where the ad itself is rendered in an iframe */
                parent.pp.AdManager.displayExpandable(window.frameElement,decodeURIComponent(ppcs));
                docWrite(ppps);
            }catch(e){
                docWrite(ppcs+ppps);
            }
        } else {
            docWrite(ppcs+ppps);
        }
    }
    /* after rendering or skipping the creative the next rotation must be scheduled (according to 'maOpts') */
    runSafe(function(){
        if (typeof pp === 'object' && typeof pp.afterRenderAd === 'function') {
            pp.afterRenderAd(ppContainerId);
        }
    });
})();