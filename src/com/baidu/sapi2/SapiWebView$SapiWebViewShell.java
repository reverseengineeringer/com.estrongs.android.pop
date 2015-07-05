package com.baidu.sapi2;

import android.os.Handler;
import android.os.Message;
import android.webkit.JavascriptInterface;
import com.baidu.sapi2.shell.response.SapiAccountResponse;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.SapiUtils;
import com.baidu.sapi2.utils.enums.FastLoginFeature;
import com.baidu.sapi2.utils.enums.LoginShareStrategy;
import com.baidu.sapi2.utils.enums.SocialType;
import java.util.List;
import org.json.JSONArray;

public final class SapiWebView$SapiWebViewShell
{
  public SapiWebView$SapiWebViewShell(SapiWebView paramSapiWebView) {}
  
  @JavascriptInterface
  public void action_fast_reg()
  {
    if (SapiWebView.k(a) != null)
    {
      a.post(new SapiWebView.SapiWebViewShell.9(this));
      return;
    }
    a.loadFastReg();
  }
  
  @JavascriptInterface
  public String action_forget_pwd()
  {
    boolean[] arrayOfBoolean1 = new boolean[1];
    arrayOfBoolean1[0] = false;
    boolean[] arrayOfBoolean2 = new boolean[1];
    arrayOfBoolean2[0] = false;
    a.post(new SapiWebView.SapiWebViewShell.10(this, arrayOfBoolean1, arrayOfBoolean2));
    while (arrayOfBoolean2[0] == 0) {
      try
      {
        Thread.sleep(10L);
      }
      catch (InterruptedException localInterruptedException)
      {
        L.e(localInterruptedException);
      }
    }
    if (arrayOfBoolean1[0] != 0) {
      return "1";
    }
    return "0";
  }
  
  @JavascriptInterface
  public void action_lecai_login()
  {
    if (SapiWebView.u(a) != null) {
      a.post(new SapiWebView.SapiWebViewShell.12(this));
    }
  }
  
  @JavascriptInterface
  public void action_nuomi_login()
  {
    if (SapiWebView.t(a) != null) {
      a.post(new SapiWebView.SapiWebViewShell.11(this));
    }
  }
  
  @JavascriptInterface
  public void action_received_sms_code(String paramString1, String paramString2)
  {
    SapiWebView.a(a, SapiWebView.q(a));
    qa).a = paramString1;
    qa).b = paramString2;
    SapiWebView.q(a).postDelayed(SapiWebView.j(a), 15000L);
  }
  
  @JavascriptInterface
  public void action_social_qzone_webview()
  {
    if (SapiWebView.s(a) != null)
    {
      Message localMessage = new Message();
      what = SocialType.QZONE.getType();
      SapiWebView.s(a).sendMessage(localMessage);
    }
  }
  
  @JavascriptInterface
  public void action_social_renren_webview()
  {
    if (SapiWebView.s(a) != null)
    {
      Message localMessage = new Message();
      what = SocialType.RENREN.getType();
      SapiWebView.s(a).sendMessage(localMessage);
    }
  }
  
  @JavascriptInterface
  public void action_social_sina_sso()
  {
    a.loadSinaSSOLogin();
  }
  
  @JavascriptInterface
  public void action_social_sina_weibo_webview()
  {
    if (SapiWebView.s(a) != null)
    {
      Message localMessage = new Message();
      what = SocialType.SINA_WEIBO.getType();
      SapiWebView.s(a).sendMessage(localMessage);
    }
  }
  
  @JavascriptInterface
  public void action_social_tx_weibo_webview()
  {
    if (SapiWebView.s(a) != null)
    {
      Message localMessage = new Message();
      what = SocialType.TENCENT_WEIBO.getType();
      SapiWebView.s(a).sendMessage(localMessage);
    }
  }
  
  @JavascriptInterface
  public void action_social_weixin_sso()
  {
    if (SapiWebView.s(a) != null)
    {
      Message localMessage = new Message();
      what = SocialType.WEIXIN.getType();
      SapiWebView.s(a).sendMessage(localMessage);
    }
  }
  
  @JavascriptInterface
  public void action_unite_verify(String paramString)
  {
    if (SapiWebView.w(a) != null) {
      a.post(new SapiWebView.SapiWebViewShell.14(this, paramString));
    }
  }
  
  @JavascriptInterface
  public void action_voice_login()
  {
    if (SapiWebView.v(a) != null) {
      a.post(new SapiWebView.SapiWebViewShell.13(this));
    }
  }
  
  @JavascriptInterface
  public void authorized_response(String paramString)
  {
    authorized_response(paramString, 0);
  }
  
  @JavascriptInterface
  public void authorized_response(String paramString, int paramInt)
  {
    SapiAccountResponse localSapiAccountResponse;
    if (paramInt == 1)
    {
      localSapiAccountResponse = SapiWebView.a(la).context, paramString);
      if (localSapiAccountResponse != null) {
        break label90;
      }
      if (SapiWebView.m(a) != null) {
        a.post(new SapiWebView.SapiWebViewShell.3(this));
      }
    }
    if (paramInt == 0)
    {
      paramString = SapiWebView.a(paramString);
      if (paramString != null) {
        break label165;
      }
      if (SapiWebView.m(a) != null) {
        a.post(new SapiWebView.SapiWebViewShell.6(this));
      }
    }
    label90:
    label165:
    do
    {
      return;
      if ((errorCode == 0) || (errorCode == 110000))
      {
        if (SapiWebView.m(a) == null) {
          break;
        }
        a.post(new SapiWebView.SapiWebViewShell.4(this));
        break;
      }
      if (SapiWebView.m(a) == null) {
        break;
      }
      a.post(new SapiWebView.SapiWebViewShell.5(this, localSapiAccountResponse));
      break;
      if ((SapiWebView.n(a) != null) && (newReg))
      {
        SapiWebView.a(a, paramString);
        SapiWebView.b(a, paramString);
        return;
      }
      if ((errorCode == 0) || (errorCode == 110000))
      {
        SapiWebView.c(a, paramString);
        return;
      }
    } while (SapiWebView.m(a) == null);
    a.post(new SapiWebView.SapiWebViewShell.7(this, paramString));
  }
  
  @JavascriptInterface
  public void back()
  {
    a.post(new SapiWebView.SapiWebViewShell.2(this));
  }
  
  @JavascriptInterface
  public String config_canshare_accounts()
  {
    JSONArray localJSONArray = SapiAccount.toJSONArray(SapiAccountManager.getInstance().getShareAccounts());
    if (localJSONArray == null) {
      return null;
    }
    return localJSONArray.toString();
  }
  
  @JavascriptInterface
  public String config_fastlogin_features()
  {
    List localList = la).fastLoginFeatureList;
    if (localList == null) {
      return null;
    }
    if ((!c.a(a.getContext()).b()) && (localList.contains(FastLoginFeature.DEVICE_LOGIN))) {
      localList.remove(FastLoginFeature.DEVICE_LOGIN);
    }
    StringBuilder localStringBuilder = new StringBuilder();
    if (c.a(a.getContext()).c()) {
      return localStringBuilder.toString();
    }
    int i = 0;
    if (i < localList.size())
    {
      FastLoginFeature localFastLoginFeature = (FastLoginFeature)localList.get(i);
      if (i == 0) {
        localStringBuilder.append(localFastLoginFeature.getStrValue());
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append(",").append(localFastLoginFeature.getStrValue());
      }
    }
    return localStringBuilder.toString();
  }
  
  @JavascriptInterface
  public String config_login_share_strategy()
  {
    return SapiWebView.l(a).loginShareStrategy().getStrValue();
  }
  
  @JavascriptInterface
  public void finish()
  {
    a.post(new SapiWebView.SapiWebViewShell.1(this));
  }
  
  @JavascriptInterface
  public String get_preset_phone_number()
  {
    if (SapiUtils.isValidPhoneNumber(la).presetPhoneNumber)) {
      return la).presetPhoneNumber;
    }
    return "";
  }
  
  @JavascriptInterface
  public void loginWithDeviceId()
  {
    if (SapiWebView.y(a) != null) {
      SapiWebView.y(a).sendMessage(new Message());
    }
  }
  
  @JavascriptInterface
  public void loginWithQRCode()
  {
    if (SapiWebView.x(a) != null) {
      SapiWebView.x(a).sendMessage(new Message());
    }
  }
  
  @JavascriptInterface
  public void sapi_cloud_log_op(String paramString1, String paramString2, long paramLong1, long paramLong2) {}
  
  @JavascriptInterface
  public void sapi_cloud_log_op_net(String paramString1, String paramString2, long paramLong1, long paramLong2) {}
  
  @JavascriptInterface
  public void set_pass_canceled()
  {
    SapiWebView.c(a, SapiWebView.r(a));
  }
  
  @JavascriptInterface
  public void unite_verify_result(String paramString)
  {
    a.post(new SapiWebView.SapiWebViewShell.8(this, paramString));
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.SapiWebViewShell
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */