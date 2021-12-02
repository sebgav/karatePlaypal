function fun()
{
    var env=karate.env;
    karate.log('karate.env= ',env);
    if(!env)
    {
        env='qa';
    }
    var config={
        apiUrl:'https://api-m.sandbox.paypal.com'
        }
    if(env=='qa')
    {
            config.user='AVrttV_MDMdZRC1nK0mTmz7pgkPE_uSdjM8SGXIYBdIS_QGJ1GRfZsFwYAOOVH5rB7DqaeOloZXiM79d';
            config.pass='EBGR_THut9lZb1sOcK1YmtL8Pb9A_DQo81Zl5wfha-OXFEU9uzb7Pk44_0HiGWKma69Cbbcs7ue2Ix43';
    }
    if(env=='uat')
     {
                config.user='';
                config.pass='';
     }
     return config;

}