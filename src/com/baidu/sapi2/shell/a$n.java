package com.baidu.sapi2.shell;

import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.shell.callback.FillUsernameCallBack;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.e;
import org.json.JSONException;
import org.json.JSONObject;

class a$n
  extends HttpResponseHandler
{
  a$n(a parama, FillUsernameCallBack paramFillUsernameCallBack, b paramb, String paramString1, String paramString2, String paramString3) {}
  
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
        L.e(paramString);
      }
      f.a(a, c, d, e);
    }
    if (a.a(f).c())
    {
      a.a(f).d();
      a.a(f, -100, a, paramThrowable, b);
      return;
    }
  }
  
  public void onSuccess(int paramInt, String paramString)
  {
    super.onSuccess(paramInt, paramString);
    a.a(f).d();
    try
    {
      Object localObject = new JSONObject(paramString);
      String str = ((JSONObject)localObject).optString("cert");
      localObject = ((JSONObject)localObject).optString("cert_id");
      a.a(f, a, c, d, e, str, (String)localObject, b);
      return;
    }
    catch (Exception localException)
    {
      a.a(f, f.b(paramString), a, paramString, b);
      localException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */