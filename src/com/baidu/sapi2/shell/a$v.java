package com.baidu.sapi2.shell;

import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.SapiConfiguration;
import com.baidu.sapi2.c;
import com.baidu.sapi2.utils.L;
import org.json.JSONException;
import org.json.JSONObject;

class a$v
  extends HttpResponseHandler
{
  a$v(a parama) {}
  
  public void onFailure(Throwable paramThrowable, String paramString)
  {
    super.onFailure(paramThrowable, paramString);
    c.a(ba).context).a(false);
  }
  
  public void onSuccess(int paramInt, String paramString)
  {
    if (paramString != null) {}
    try
    {
      paramString = new JSONObject(paramString);
      if ((!paramString.has("error_code")) && (!paramString.has("error_msg")) && (paramString.optInt("fulfilbind") == 0) && ((paramString.optInt("reg") == 1) || (paramString.optInt("login") == 1))) {
        c.a(ba).context).a(true);
      }
      return;
    }
    catch (JSONException paramString)
    {
      L.e(paramString);
      c.a(ba).context).a(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */