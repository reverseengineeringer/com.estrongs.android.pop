package com.baidu.sapi2.shell;

import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.SapiAccount;
import com.baidu.sapi2.share.b;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.e;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

class a$a
  extends HttpResponseHandler
{
  a$a(a parama, String paramString1, String paramString2, String paramString3) {}
  
  protected void onFailure(Throwable paramThrowable, String paramString)
  {
    if (a.a(d).c())
    {
      a.a(d).d();
      return;
    }
    a.a(d).b();
    d.a(b, c, a);
  }
  
  protected void onSuccess(int paramInt, String paramString)
  {
    a.a(d).d();
    switch (d.a(paramString))
    {
    default: 
      return;
    case 0: 
      try
      {
        Object localObject = new JSONObject(paramString);
        paramString = new SapiAccount();
        bduss = ((JSONObject)localObject).optString("bduss");
        uid = ((JSONObject)localObject).optString("uid");
        displayname = ((JSONObject)localObject).optString("displayname");
        username = ((JSONObject)localObject).optString("username");
        ptoken = ((JSONObject)localObject).optString("ptoken");
        app = "Web浏览器";
        b.a().a(paramString, false);
        localObject = new HashMap();
        ((Map)localObject).put("app", app);
        ((Map)localObject).put("sync_type", a);
        com.baidu.sapi2.utils.a.a("b2c_login_share", (Map)localObject);
        return;
      }
      catch (JSONException paramString)
      {
        L.e(paramString);
        return;
      }
    }
    d.a(new a.a.a(this));
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */