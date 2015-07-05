package com.baidu.sapi2.shell;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.sapi2.SapiAccount.ReloginCredentials;
import com.baidu.sapi2.SapiAccountManager;
import com.baidu.sapi2.SapiConfiguration;
import com.baidu.sapi2.SapiConfiguration.SmsLoginConfig;
import com.baidu.sapi2.c;
import com.baidu.sapi2.shell.callback.FillUserProfileCallBack;
import com.baidu.sapi2.shell.callback.FillUsernameCallBack;
import com.baidu.sapi2.shell.callback.GetUserInfoCallBack;
import com.baidu.sapi2.shell.callback.OAuthCallBack;
import com.baidu.sapi2.shell.callback.QrAppLoginCallBack;
import com.baidu.sapi2.shell.callback.QrPCLoginCallBack;
import com.baidu.sapi2.shell.callback.SapiCallBack;
import com.baidu.sapi2.shell.callback.VoiceCheckCallBack;
import com.baidu.sapi2.shell.callback.VoiceLoginCallBack;
import com.baidu.sapi2.shell.callback.VoiceRegCallBack;
import com.baidu.sapi2.shell.response.GetHistoryPortraitsResponse;
import com.baidu.sapi2.shell.response.GetPopularPortraitsInfoResponse;
import com.baidu.sapi2.shell.response.GetPortraitResponse;
import com.baidu.sapi2.shell.response.SapiAccountResponse;
import com.baidu.sapi2.shell.response.SapiResponse;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.SapiUtils;
import com.baidu.sapi2.utils.enums.BindType;
import com.baidu.sapi2.utils.enums.BindWidgetAction;
import com.baidu.sapi2.utils.enums.LoginShareStrategy;
import com.baidu.sapi2.utils.enums.RegistMode;
import com.baidu.sapi2.utils.enums.SocialType;
import com.baidu.sapi2.utils.enums.Switch;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;

public final class SapiAccountService
{
  private static final String a = "native";
  private SapiConfiguration b = SapiAccountManager.getInstance().getSapiConfiguration();
  private a c;
  
  public SapiAccountService(Context paramContext)
  {
    c = new a(paramContext);
  }
  
  public String a()
  {
    return c.d() + "?" + j();
  }
  
  public String a(BindWidgetAction paramBindWidgetAction)
  {
    if (paramBindWidgetAction == null) {
      throw new IllegalArgumentException("BindWidgetAction can't be null");
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("adapter", "3"));
    return c.a(paramBindWidgetAction) + "?" + j() + "&" + SapiUtils.createRequestParams(localArrayList);
  }
  
  public String a(SocialType paramSocialType)
  {
    if (b == null) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("tpl", b.tpl));
    localArrayList.add(new BasicNameValuePair("display", "native"));
    localArrayList.add(new BasicNameValuePair("type", paramSocialType.getType() + ""));
    localArrayList.add(new BasicNameValuePair("act", b.socialBindType.getName()));
    return c.x() + "?" + SapiUtils.createRequestParams(localArrayList);
  }
  
  public String a(SocialType paramSocialType, String paramString1, String paramString2)
  {
    if (b == null) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("tpl", b.tpl));
    localArrayList.add(new BasicNameValuePair("display", "native"));
    localArrayList.add(new BasicNameValuePair("type", paramSocialType.getType() + ""));
    localArrayList.add(new BasicNameValuePair("act", b.socialBindType.getName()));
    localArrayList.add(new BasicNameValuePair("access_token", paramString1));
    localArrayList.add(new BasicNameValuePair("osuid", paramString2));
    return c.v() + "?" + SapiUtils.createRequestParams(localArrayList);
  }
  
  public String a(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList(4);
    localArrayList.add(new BasicNameValuePair("mkey", paramString2));
    localArrayList.add(new BasicNameValuePair("code", paramString1));
    localArrayList.add(new BasicNameValuePair("appid", b.wxAppID));
    localArrayList.add(new BasicNameValuePair("display", "native"));
    return c.y() + "?" + SapiUtils.createRequestParams(localArrayList);
  }
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    c.a(paramString1, paramString2, paramString3);
  }
  
  public boolean a(SapiCallBack<SapiAccountResponse> paramSapiCallBack, String paramString)
  {
    return c.c(paramSapiCallBack, paramString);
  }
  
  public boolean a(SapiCallBack<SapiAccountResponse> paramSapiCallBack, String paramString1, String paramString2)
  {
    return c.a(paramSapiCallBack, paramString1, paramString2, false);
  }
  
  public String b()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("adapter", "3"));
    localArrayList.add(new BasicNameValuePair("banner", "1"));
    localArrayList.add(new BasicNameValuePair("t", String.valueOf(System.currentTimeMillis())));
    return c.e() + "?" + SapiUtils.createRequestParams(localArrayList);
  }
  
  public int blockingRelogin(SapiAccount.ReloginCredentials paramReloginCredentials)
  {
    return c.a(paramReloginCredentials);
  }
  
  public String c()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("adapter", "3"));
    localArrayList.add(new BasicNameValuePair("banner", "1"));
    localArrayList.add(new BasicNameValuePair("t", String.valueOf(System.currentTimeMillis())));
    return c.f() + "?" + SapiUtils.createRequestParams(localArrayList);
  }
  
  public void cancelRequest()
  {
    c.a();
  }
  
  public String d()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("adapter", "3"));
    localArrayList.add(new BasicNameValuePair("banner", "1"));
    return c.g() + "?" + j() + "&" + SapiUtils.createRequestParams(localArrayList);
  }
  
  public boolean deviceLogin(SapiCallBack<SapiResponse> paramSapiCallBack)
  {
    if (!c.a(b.context).b()) {
      return false;
    }
    String str = c.a(b.context).a();
    if ((TextUtils.isEmpty(str)) || ("null".equalsIgnoreCase(str))) {
      return c.b(paramSapiCallBack);
    }
    return c.e(paramSapiCallBack, str);
  }
  
  public boolean dynamicPwdLogin(SapiCallBack<SapiAccountResponse> paramSapiCallBack, String paramString1, String paramString2)
  {
    return c.a(paramSapiCallBack, paramString1, paramString2, true);
  }
  
  public String e()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("adapter", "3"));
    return c.j() + "?" + j() + "&" + SapiUtils.createRequestParams(localArrayList);
  }
  
  public String f()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("adapter", "3"));
    return c.k() + "?" + j() + "&" + SapiUtils.createRequestParams(localArrayList);
  }
  
  public void fillUserProfile(FillUserProfileCallBack paramFillUserProfileCallBack, String paramString)
  {
    c.a(paramFillUserProfileCallBack, paramString);
  }
  
  public void fillUsername(FillUsernameCallBack paramFillUsernameCallBack, String paramString1, String paramString2, String paramString3)
  {
    c.a(paramFillUsernameCallBack, paramString1, paramString2, paramString3);
  }
  
  public String g()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("adapter", "3"));
    return c.l() + "?" + j() + "&" + SapiUtils.createRequestParams(localArrayList);
  }
  
  public boolean getDynamicPwd(SapiCallBack<SapiResponse> paramSapiCallBack, String paramString)
  {
    return c.b(paramSapiCallBack, paramString);
  }
  
  public void getHistoryPortraits(SapiCallBack<GetHistoryPortraitsResponse> paramSapiCallBack, int paramInt, String paramString1, String paramString2, String paramString3)
  {
    c.a(paramSapiCallBack, paramInt, paramString1, paramString2, paramString3);
  }
  
  public void getPopularPortraitsInfo(SapiCallBack<GetPopularPortraitsInfoResponse> paramSapiCallBack, String paramString)
  {
    c.a(paramSapiCallBack, paramString);
  }
  
  @Deprecated
  public void getPortrait(SapiCallBack<GetPortraitResponse> paramSapiCallBack, String paramString1, String paramString2, String paramString3)
  {
    c.a(paramSapiCallBack, paramString1, paramString2, paramString3);
  }
  
  public void getUserInfo(GetUserInfoCallBack paramGetUserInfoCallBack, String paramString)
  {
    c.a(paramGetUserInfoCallBack, paramString);
  }
  
  public String h()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("tpl", getInstancegetSapiConfigurationtpl));
    localArrayList.add(new BasicNameValuePair("showtype", "phone"));
    localArrayList.add(new BasicNameValuePair("device", "wap"));
    localArrayList.add(new BasicNameValuePair("adapter", "apps"));
    return c.h() + j() + "&" + SapiUtils.createRequestParams(localArrayList);
  }
  
  public String i()
  {
    if (b == null) {
      return null;
    }
    return c.i();
  }
  
  public boolean isDeviceLoginAvailable()
  {
    return c.a(b.context).b();
  }
  
  String j()
  {
    if (b == null) {
      throw new IllegalStateException(SapiAccountManager.class.getSimpleName() + " have not been initialized");
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("clientfrom", "native"));
    localArrayList.add(new BasicNameValuePair("tpl", b.tpl));
    localArrayList.add(new BasicNameValuePair("login_share_strategy", b.loginShareStrategy().getStrValue()));
    localArrayList.add(new BasicNameValuePair("client", "android"));
    String str;
    if (b.customActionBarEnabled) {
      str = "3";
    }
    for (;;)
    {
      localArrayList.add(new BasicNameValuePair("adapter", str));
      localArrayList.add(new BasicNameValuePair("t", String.valueOf(System.currentTimeMillis())));
      localArrayList.add(new BasicNameValuePair("act", b.socialBindType.getName()));
      localArrayList.add(new BasicNameValuePair("loginLink", String.valueOf(b.smsLoginConfig.flagShowLoginLink.ordinal())));
      localArrayList.add(new BasicNameValuePair("smsLoginLink", String.valueOf(b.smsLoginConfig.flagShowSmsLoginLink.ordinal())));
      localArrayList.add(new BasicNameValuePair("lPFastRegLink", String.valueOf(b.smsLoginConfig.flagShowFastRegLink.ordinal())));
      if (b.registMode == RegistMode.FAST) {
        localArrayList.add(new BasicNameValuePair("fastRegLink", "1"));
      }
      if (b.quickUserEnabled)
      {
        localArrayList.add(new BasicNameValuePair("quick_user", "1"));
        if (b.registMode == RegistMode.QUICK_USER) {
          localArrayList.add(new BasicNameValuePair("regtype", "2"));
        }
      }
      if (b.collapseFastLoginArea) {
        localArrayList.add(new BasicNameValuePair("otherLoginStyle", "1"));
      }
      localArrayList.add(new BasicNameValuePair("lPlayout", String.valueOf(b.configurableViewLayout.ordinal())));
      if (!b.showRegLink) {
        localArrayList.add(new BasicNameValuePair("regLink", "0"));
      }
      if (!TextUtils.isEmpty(b.fastRegTitleText)) {}
      try
      {
        localArrayList.add(new BasicNameValuePair("fastRegText", URLEncoder.encode(b.fastRegTitleText, "UTF-8")));
        if (b.uniteVerify) {
          localArrayList.add(new BasicNameValuePair("connect", "1"));
        }
        if ("lecai".equals(b.tpl)) {
          localArrayList.add(new BasicNameValuePair("lecaiLogin", "1"));
        }
        return SapiUtils.createRequestParams(localArrayList);
        str = "";
      }
      catch (Throwable localThrowable)
      {
        for (;;)
        {
          L.e(localThrowable);
        }
      }
    }
  }
  
  public String k()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("type", SocialType.WEIXIN.getType() + ""));
    localArrayList.add(new BasicNameValuePair("tpl", b.tpl));
    localArrayList.add(new BasicNameValuePair("display", "native"));
    localArrayList.add(new BasicNameValuePair("act", b.socialBindType.getName()));
    localArrayList.add(new BasicNameValuePair("app_key", b.wxAppID));
    localArrayList.add(new BasicNameValuePair("scope", "snsapi_login"));
    return c.x() + "?" + SapiUtils.createRequestParams(localArrayList);
  }
  
  public String l()
  {
    if (b == null) {
      return null;
    }
    return c.w();
  }
  
  public String m()
  {
    if (b == null) {
      return null;
    }
    return c.y();
  }
  
  public String n()
  {
    if (b == null) {
      return null;
    }
    return c.z();
  }
  
  public void o()
  {
    c.b();
  }
  
  public void oauth(OAuthCallBack paramOAuthCallBack, String paramString)
  {
    c.a(paramOAuthCallBack, paramString);
  }
  
  public void p()
  {
    c.c();
  }
  
  public void qrAppLogin(QrAppLoginCallBack paramQrAppLoginCallBack, String paramString1, String paramString2)
  {
    c.a(paramQrAppLoginCallBack, paramString1, paramString2);
  }
  
  public void qrPCLogin(QrPCLoginCallBack paramQrPCLoginCallBack, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    c.a(paramQrPCLoginCallBack, paramString1, paramString2, paramString3, paramString4, paramString5);
  }
  
  public void relogin(SapiCallBack<SapiResponse> paramSapiCallBack, SapiAccount.ReloginCredentials paramReloginCredentials)
  {
    c.a(paramSapiCallBack, paramReloginCredentials);
  }
  
  public void setPopularPortrait(SapiCallBack<SapiResponse> paramSapiCallBack, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt)
  {
    c.a(paramSapiCallBack, paramString1, paramString2, paramString3, paramString4, paramInt);
  }
  
  public void setPortrait(SapiCallBack<SapiResponse> paramSapiCallBack, String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte, String paramString4)
  {
    c.a(paramSapiCallBack, paramString1, paramString2, paramString3, paramArrayOfByte, paramString4);
  }
  
  public void voiceCheck(VoiceCheckCallBack paramVoiceCheckCallBack, String paramString)
  {
    c.a(paramVoiceCheckCallBack, paramString);
  }
  
  public void voiceCheck(VoiceCheckCallBack paramVoiceCheckCallBack, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    c.a(paramVoiceCheckCallBack, paramString, paramBoolean1, paramBoolean2);
  }
  
  public void voiceLogin(VoiceLoginCallBack paramVoiceLoginCallBack, String paramString1, String paramString2)
  {
    c.a(paramVoiceLoginCallBack, paramString1, paramString2);
  }
  
  public void voiceReg(VoiceRegCallBack paramVoiceRegCallBack, String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    c.a(paramVoiceRegCallBack, paramString1, paramString2, paramString3, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.SapiAccountService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */