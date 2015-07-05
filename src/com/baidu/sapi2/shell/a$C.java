package com.baidu.sapi2.shell;

import android.text.TextUtils;
import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.shell.callback.GetUserInfoCallBack;
import com.baidu.sapi2.shell.response.GetUserInfoResponse;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.e;
import org.json.JSONException;
import org.json.JSONObject;

class a$c
  extends HttpResponseHandler
{
  a$c(a parama, GetUserInfoCallBack paramGetUserInfoCallBack, String paramString) {}
  
  protected void onFailure(Throwable paramThrowable, String paramString)
  {
    if (a.a(c).c())
    {
      a.a(c).d();
      a.onFinish();
      a.onSystemError(-100);
      return;
    }
    a.a(c).b();
    c.a(a, b);
  }
  
  protected void onSuccess(int paramInt, String paramString)
  {
    a.a(c).d();
    a.onFinish();
    paramInt = c.a(paramString);
    switch (paramInt)
    {
    default: 
      a.onSystemError(paramInt);
      return;
    case 0: 
      try
      {
        paramString = new JSONObject(paramString);
        GetUserInfoResponse localGetUserInfoResponse = new GetUserInfoResponse();
        errorCode = paramInt;
        errorMsg = paramString.optString("errmsg");
        String str = paramString.optString("portrait");
        if (!TextUtils.isEmpty(str)) {
          portrait = String.format("http://himg.bdimg.com/sys/portrait/item/%s.jpg", new Object[] { str });
        }
        username = paramString.optString("username");
        uid = paramString.optString("userid");
        displayname = paramString.optString("displayname");
        incompleteUser = "1".equals(paramString.optString("incomplete_user"));
        secureMobile = paramString.optString("securemobil");
        secureEmail = paramString.optString("secureemail");
        a.onSuccess(localGetUserInfoResponse);
        return;
      }
      catch (JSONException paramString)
      {
        a.onSystemError(paramInt);
        L.e(paramString);
        return;
      }
    }
    a.onBdussInvalid();
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */