package com.baidu.sapi2;

import android.content.Context;
import com.baidu.sapi2.utils.enums.BindType;
import com.baidu.sapi2.utils.enums.Domain;
import com.baidu.sapi2.utils.enums.FastLoginFeature;
import com.baidu.sapi2.utils.enums.LoginShareStrategy;
import com.baidu.sapi2.utils.enums.RegistMode;
import com.baidu.sapi2.utils.enums.Switch;
import java.util.List;
import java.util.Map;

public final class SapiConfiguration
{
  public static final int QUICK_LOGIN_VIEW_BTN_ACTION_FAST_REG = 2;
  public static final int QUICK_LOGIN_VIEW_BTN_ACTION_LOGIN = 0;
  public static final int QUICK_LOGIN_VIEW_BTN_ACTION_SMS_LOGIN = 1;
  private final LoginShareStrategy a;
  public final String appId;
  public final String appSignKey;
  private boolean b;
  public String clientId;
  public String clientIp;
  public final boolean collapseFastLoginArea;
  public final Switch configurableViewLayout;
  public final Context context;
  public final boolean customActionBarEnabled;
  public final boolean debug;
  public final String deviceLoginSignKey;
  public final Domain environment;
  public final List<FastLoginFeature> fastLoginFeatureList;
  public final boolean fastRegConfirm;
  public final String fastRegConfirmMsg;
  public final String fastRegTitleText;
  public String presetPhoneNumber;
  public final boolean quickUserEnabled;
  public final RegistMode registMode;
  public final boolean showRegLink;
  public String skin;
  public final SapiConfiguration.SmsLoginConfig smsLoginConfig;
  public final BindType socialBindType;
  public final boolean syncCacheOnInit;
  public final String tpl;
  public final boolean uniteVerify;
  public final String voicePid = "2048";
  public final boolean voiceUserEnabled;
  public final String wxAppID;
  
  private SapiConfiguration(SapiConfiguration.Builder paramBuilder)
  {
    context = SapiConfiguration.Builder.a(paramBuilder);
    tpl = SapiConfiguration.Builder.b(paramBuilder);
    appId = SapiConfiguration.Builder.c(paramBuilder);
    appSignKey = SapiConfiguration.Builder.d(paramBuilder);
    deviceLoginSignKey = SapiConfiguration.Builder.e(paramBuilder);
    environment = SapiConfiguration.Builder.f(paramBuilder);
    socialBindType = SapiConfiguration.Builder.g(paramBuilder);
    registMode = SapiConfiguration.Builder.h(paramBuilder);
    a = SapiConfiguration.Builder.i(paramBuilder);
    fastLoginFeatureList = SapiConfiguration.Builder.j(paramBuilder);
    wxAppID = SapiConfiguration.Builder.k(paramBuilder);
    fastRegConfirm = SapiConfiguration.Builder.l(paramBuilder);
    fastRegConfirmMsg = SapiConfiguration.Builder.m(paramBuilder);
    skin = SapiConfiguration.Builder.n(paramBuilder);
    presetPhoneNumber = SapiConfiguration.Builder.o(paramBuilder);
    collapseFastLoginArea = SapiConfiguration.Builder.p(paramBuilder);
    customActionBarEnabled = SapiConfiguration.Builder.q(paramBuilder);
    showRegLink = SapiConfiguration.Builder.r(paramBuilder);
    configurableViewLayout = SapiConfiguration.Builder.s(paramBuilder);
    fastRegTitleText = SapiConfiguration.Builder.t(paramBuilder);
    debug = SapiConfiguration.Builder.u(paramBuilder);
    smsLoginConfig = SapiConfiguration.Builder.v(paramBuilder);
    uniteVerify = SapiConfiguration.Builder.w(paramBuilder);
    syncCacheOnInit = SapiConfiguration.Builder.x(paramBuilder);
    quickUserEnabled = SapiConfiguration.Builder.y(paramBuilder);
    voiceUserEnabled = SapiConfiguration.Builder.z(paramBuilder);
    b = SapiConfiguration.Builder.A(paramBuilder);
  }
  
  public boolean b2cSyncEnabled()
  {
    return (b) && (c.a(context).k().b()) && ((context.getPackageName().matches("com.baidu.searchbox(.*)")) || (context.getPackageName().matches("com.baidu.sapi2.(.*)")));
  }
  
  public LoginShareStrategy loginShareStrategy()
  {
    if ((quickUserEnabled) || (voiceUserEnabled)) {
      return LoginShareStrategy.DISABLED;
    }
    b localb = c.a(context).k();
    if ((localb.f().containsKey(tpl)) && (localb.f().get(tpl) != null)) {
      return (LoginShareStrategy)localb.f().get(tpl);
    }
    if (localb.e() != null) {
      return localb.e();
    }
    return a;
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiConfiguration
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */