package com.baidu.sapi2.shell;

import android.text.TextUtils;
import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.shell.callback.SapiCallBack;
import com.baidu.sapi2.shell.response.GetPortraitResponse;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.e;
import org.json.JSONException;
import org.json.JSONObject;

class a$e
  extends HttpResponseHandler
{
  a$e(a parama, SapiCallBack paramSapiCallBack, String paramString1, String paramString2, String paramString3) {}
  
  public void onFailure(Throwable paramThrowable, String paramString)
  {
    if (a.a(e).c())
    {
      a.a(e).d();
      a.onSystemError(-100);
      return;
    }
    a.a(e).b();
    e.a(a, b, c, d);
  }
  
  public void onSuccess(int paramInt, String paramString)
  {
    a.a(e).d();
    paramInt = e.a(paramString);
    if (paramInt == 0) {
      try
      {
        Object localObject = new JSONObject(paramString);
        paramString = new GetPortraitResponse();
        errorCode = paramInt;
        errorMsg = ((JSONObject)localObject).optString("errmsg");
        localObject = ((JSONObject)localObject).optString("portrait");
        if (!TextUtils.isEmpty((CharSequence)localObject)) {
          portrait = String.format("http://himg.bdimg.com/sys/portrait/item/%s.jpg", new Object[] { localObject });
        }
        a.onSuccess(paramString);
        return;
      }
      catch (JSONException paramString)
      {
        a.onSystemError(paramInt);
        L.e(paramString);
        return;
      }
    }
    a.onSystemError(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */