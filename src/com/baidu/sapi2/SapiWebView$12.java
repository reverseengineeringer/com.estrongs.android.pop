package com.baidu.sapi2;

import android.app.ProgressDialog;
import android.text.TextUtils;
import android.view.View;
import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.utils.L;
import com.tencent.mm.sdk.modelbase.BaseReq;
import com.tencent.mm.sdk.modelmsg.SendAuth.Req;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import org.json.JSONException;
import org.json.JSONObject;

class SapiWebView$12
  extends HttpResponseHandler
{
  SapiWebView$12(SapiWebView paramSapiWebView) {}
  
  public void onFailure(Throwable paramThrowable, String paramString)
  {
    if (SapiWebView.A(a) != null)
    {
      SapiWebView.A(a).setVisibility(0);
      return;
    }
    SapiWebView.C(a).handleServerError(paramString);
  }
  
  public void onFinish()
  {
    if (SapiWebView.B(a) != null) {}
    try
    {
      SapiWebView.B(a).dismiss();
      return;
    }
    catch (Throwable localThrowable)
    {
      L.e(localThrowable);
    }
  }
  
  public void onStart()
  {
    try
    {
      SapiWebView.a(a, ProgressDialog.show(a.getContext(), null, "加载中...", true));
      return;
    }
    catch (Throwable localThrowable)
    {
      L.e(localThrowable);
    }
  }
  
  public void onSuccess(int paramInt, String paramString)
  {
    try
    {
      Object localObject = new JSONObject(paramString);
      paramString = ((JSONObject)localObject).optString("mkey", "");
      if (!TextUtils.isEmpty(paramString))
      {
        localObject = new SendAuth.Req();
        scope = "snsapi_userinfo";
        state = paramString;
        WXAPIFactory.createWXAPI(a.getContext(), la).wxAppID).sendReq((BaseReq)localObject);
        a.finish();
        return;
      }
      paramString = ((JSONObject)localObject).optString("error_code", "");
      if (SapiWebView.C(a) != null)
      {
        SapiWebView.C(a).handleServerError(paramString);
        return;
      }
    }
    catch (JSONException paramString)
    {
      L.e(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */