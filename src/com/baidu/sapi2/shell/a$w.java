package com.baidu.sapi2.shell;

import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.SapiConfiguration;
import com.baidu.sapi2.c;
import com.baidu.sapi2.shell.callback.SapiCallBack;
import com.baidu.sapi2.shell.response.SapiResponse;
import com.baidu.sapi2.utils.L;
import org.json.JSONException;
import org.json.JSONObject;

class a$w
  extends HttpResponseHandler
{
  a$w(a parama, SapiCallBack paramSapiCallBack) {}
  
  protected void onFailure(Throwable paramThrowable, String paramString)
  {
    if (a != null) {
      a.onSystemError(-100);
    }
  }
  
  protected void onSuccess(int paramInt, String paramString)
  {
    try
    {
      paramInt = b.a(paramString);
      if ((paramInt == 0) || (paramInt == 110000))
      {
        paramString = new JSONObject(paramString);
        long l = System.currentTimeMillis() / 1000L;
        paramInt = (int)(paramString.optLong("time", System.currentTimeMillis() / 1000L) - l);
        c.a(bb).context).b(paramInt);
        paramString = new SapiResponse();
        errorCode = 0;
        if (a != null)
        {
          a.onSuccess(paramString);
          return;
        }
      }
    }
    catch (JSONException paramString)
    {
      do
      {
        L.e(paramString);
      } while (a == null);
      a.onSystemError(-100);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */