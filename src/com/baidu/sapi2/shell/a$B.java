package com.baidu.sapi2.shell;

import android.text.TextUtils;
import com.baidu.cloudsdk.common.http.AsyncHttpClient;
import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.cloudsdk.common.http.RequestParams;
import com.baidu.sapi2.SapiConfiguration;
import com.baidu.sapi2.shell.callback.FillUserProfileCallBack;
import com.baidu.sapi2.utils.L;
import java.util.HashMap;
import java.util.Map;

class a$b
  extends HttpResponseHandler
{
  a$b(a parama, FillUserProfileCallBack paramFillUserProfileCallBack, String paramString1, String paramString2, String paramString3) {}
  
  protected void onFailure(Throwable paramThrowable, String paramString)
  {
    a.onFinish();
    a.onSystemError(-100);
  }
  
  protected void onSuccess(int paramInt, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      a.onFinish();
      a.onSystemError(-100);
      return;
    }
    paramInt = paramString.indexOf("(");
    int i = paramString.indexOf(")");
    if (paramInt >= 0) {}
    for (;;)
    {
      try
      {
        paramString = paramString.substring(paramInt + 1, i);
        switch (e.a(paramString))
        {
        case 0: 
          a.onFinish();
          a.onSystemError(-100);
          return;
        }
      }
      catch (Throwable paramString)
      {
        L.e(paramString);
        a.onFinish();
        a.onSystemError(-100);
        return;
      }
      paramString = new HashMap();
      paramString.put("appid", be).appId);
      paramString.put("tpl", be).tpl);
      if (!TextUtils.isEmpty(be).clientId)) {
        paramString.put("clientid", be).clientId);
      }
      paramString.put("upsmschannel", b);
      paramString.put("bduss", c);
      paramString.put("vcode", d);
      paramString.put("sig", a.a(e, paramString, be).appSignKey));
      a.a(e, new AsyncHttpClient());
      a.d(e).setUserAgent(a.c(e));
      a.d(e).post(be).context, e.K(), new RequestParams(paramString), new a.b.a(this));
      return;
      a.onFinish();
      a.onSystemError(-100);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */