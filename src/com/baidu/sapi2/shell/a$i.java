package com.baidu.sapi2.shell;

import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.shell.callback.SapiCallBack;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.e;
import org.json.JSONException;
import org.json.JSONObject;

class a$i
  extends HttpResponseHandler
{
  a$i(a parama, SapiCallBack paramSapiCallBack, boolean paramBoolean, b paramb, String paramString1, String paramString2) {}
  
  public void onFailure(Throwable paramThrowable, String paramString)
  {
    super.onFailure(paramThrowable, paramString);
    JSONObject localJSONObject = new JSONObject();
    paramThrowable = "";
    try
    {
      localJSONObject.put("failure_info", paramString);
      paramString = localJSONObject.toString();
      paramThrowable = paramString;
    }
    catch (JSONException paramString)
    {
      for (;;)
      {
        f.a(-100, a, "", b, c);
        L.e(paramString);
      }
      a.a(f).b();
      f.a(a, d, e, b);
    }
    if (a.a(f).c())
    {
      a.a(f).d();
      f.a(-100, a, paramThrowable, b, c);
      return;
    }
  }
  
  public void onSuccess(int paramInt, String paramString)
  {
    super.onSuccess(paramInt, paramString);
    try
    {
      Object localObject = new JSONObject(paramString);
      String str = ((JSONObject)localObject).optString("cert");
      localObject = ((JSONObject)localObject).optString("cert_id");
      a.a(f, a, str, (String)localObject, d, e, b, c);
      return;
    }
    catch (Exception localException)
    {
      f.a(-100, a, paramString, b, c);
      localException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */