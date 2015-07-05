package com.baidu.sapi2.shell;

import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.shell.callback.FillUserProfileCallBack;
import com.baidu.sapi2.shell.response.SapiAccountResponse;
import org.json.JSONObject;

class a$b$a
  extends HttpResponseHandler
{
  a$b$a(a.b paramb) {}
  
  protected void onFailure(Throwable paramThrowable, String paramString)
  {
    a.a.onFinish();
    a.a.onSystemError(-100);
  }
  
  protected void onSuccess(int paramInt, String paramString)
  {
    for (;;)
    {
      try
      {
        paramInt = a.e.a(paramString);
        switch (paramInt)
        {
        case 0: 
          a.a.onFinish();
          a.a.onSystemError(paramInt);
          return;
        }
      }
      catch (Throwable paramString)
      {
        SapiAccountResponse localSapiAccountResponse;
        a.a.onFinish();
        a.a.onSystemError(-100);
        return;
      }
      localSapiAccountResponse = new SapiAccountResponse();
      errorCode = paramInt;
      paramString = new JSONObject(paramString);
      displayname = paramString.optString("displayname");
      bduss = paramString.optString("bduss");
      uid = paramString.optString("uid");
      ptoken = paramString.optString("ptoken");
      stoken = paramString.optString("stoken");
      a.a.onFinish();
      a.a.onSuccess(localSapiAccountResponse);
      return;
      a.a.onFinish();
      a.a.onPhoneUnavailable();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */