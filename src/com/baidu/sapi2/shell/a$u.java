package com.baidu.sapi2.shell;

import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.SapiConfiguration;
import com.baidu.sapi2.c;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.e;
import org.json.JSONObject;

class a$u
  extends HttpResponseHandler
{
  a$u(a parama) {}
  
  protected void onFailure(Throwable paramThrowable, String paramString)
  {
    if (a.a(a).c())
    {
      a.a(a).d();
      return;
    }
    a.a(a).b();
    a.b();
  }
  
  protected void onSuccess(int paramInt, String paramString)
  {
    a.a(a).d();
    if (a.a(paramString) == 0) {}
    try
    {
      paramString = new JSONObject(paramString);
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("sn", paramString.optString("sn"));
      localJSONObject.put("seed", paramString.optString("seed"));
      localJSONObject.put("pubkey", paramString.optString("pubkey"));
      c.a(ba).context).f(localJSONObject.toString());
      return;
    }
    catch (Exception paramString)
    {
      L.e(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */