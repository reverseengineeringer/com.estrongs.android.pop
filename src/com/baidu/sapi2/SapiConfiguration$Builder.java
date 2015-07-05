package com.baidu.sapi2;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.enums.BindType;
import com.baidu.sapi2.utils.enums.Domain;
import com.baidu.sapi2.utils.enums.FastLoginFeature;
import com.baidu.sapi2.utils.enums.LoginShareStrategy;
import com.baidu.sapi2.utils.enums.RegistMode;
import com.baidu.sapi2.utils.enums.Switch;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class SapiConfiguration$Builder
{
  private boolean A = false;
  private Context a;
  private String b;
  private String c;
  private String d;
  private String e;
  private Domain f;
  private BindType g;
  private RegistMode h;
  private LoginShareStrategy i;
  private List<FastLoginFeature> j;
  private String k;
  private boolean l = false;
  private String m;
  private String n;
  private String o;
  private boolean p = false;
  private boolean q = false;
  private boolean r = true;
  private Switch s = Switch.OFF;
  private String t;
  private boolean u = false;
  private SapiConfiguration.SmsLoginConfig v;
  private boolean w = false;
  private boolean x = true;
  private boolean y = false;
  private boolean z = false;
  
  public SapiConfiguration$Builder(Context paramContext)
  {
    a = paramContext.getApplicationContext();
  }
  
  public SapiConfiguration build()
  {
    if ((TextUtils.isEmpty(b)) || (TextUtils.isEmpty(c)) || (TextUtils.isEmpty(d))) {
      throw new IllegalArgumentException("tpl, appId, appsignkey can not be null, please use setProductLineInfo(String tpl, String appId, String appSignKey)to initialize them.");
    }
    if (f == null) {
      f = Domain.DOMAIN_ONLINE;
    }
    if (g == null) {
      g = BindType.IMPLICIT;
    }
    if (h == null) {
      h = RegistMode.NORMAL;
    }
    if (i == null) {
      i = LoginShareStrategy.getDefault();
    }
    if (j == null) {
      j = new ArrayList();
    }
    if (v == null) {
      v = new SapiConfiguration.SmsLoginConfig(Switch.OFF, Switch.OFF, Switch.OFF);
    }
    if (s == null) {
      s = Switch.OFF;
    }
    L.enable(u);
    return new SapiConfiguration(this, null);
  }
  
  public Builder collapseFastLoginArea(boolean paramBoolean)
  {
    p = paramBoolean;
    return this;
  }
  
  public Builder configurableViewLayout(Switch paramSwitch)
  {
    s = paramSwitch;
    return this;
  }
  
  public Builder customActionBar(boolean paramBoolean)
  {
    q = paramBoolean;
    return this;
  }
  
  public Builder debug(boolean paramBoolean)
  {
    u = paramBoolean;
    return this;
  }
  
  public Builder enableB2CSync(boolean paramBoolean)
  {
    A = paramBoolean;
    return this;
  }
  
  public Builder enableQuickUser(boolean paramBoolean)
  {
    y = paramBoolean;
    return this;
  }
  
  public Builder enableVoiceUser(boolean paramBoolean)
  {
    z = paramBoolean;
    return this;
  }
  
  public Builder fastLoginSupport(FastLoginFeature... paramVarArgs)
  {
    j = new ArrayList();
    if (paramVarArgs == null) {
      return this;
    }
    Collections.addAll(j, paramVarArgs);
    return this;
  }
  
  public Builder fastRegConfirm(boolean paramBoolean)
  {
    l = paramBoolean;
    return this;
  }
  
  public Builder fastRegConfirmMsg(String paramString)
  {
    m = paramString;
    return this;
  }
  
  public Builder fastRegTitleText(String paramString)
  {
    t = paramString;
    return this;
  }
  
  public Builder initialShareStrategy(LoginShareStrategy paramLoginShareStrategy)
  {
    i = paramLoginShareStrategy;
    return this;
  }
  
  public Builder presetPhoneNumber(String paramString)
  {
    o = paramString;
    return this;
  }
  
  public Builder registMode(RegistMode paramRegistMode)
  {
    h = paramRegistMode;
    return this;
  }
  
  public Builder setDeviceLoginSignKey(String paramString)
  {
    e = paramString;
    return this;
  }
  
  public Builder setProductLineInfo(String paramString1, String paramString2, String paramString3)
  {
    b = paramString1;
    c = paramString2;
    d = paramString3;
    return this;
  }
  
  public Builder setRuntimeEnvironment(Domain paramDomain)
  {
    f = paramDomain;
    return this;
  }
  
  public Builder setSocialBindType(BindType paramBindType)
  {
    g = paramBindType;
    return this;
  }
  
  public Builder showRegLink(boolean paramBoolean)
  {
    r = paramBoolean;
    return this;
  }
  
  public Builder skin(String paramString)
  {
    n = paramString;
    return this;
  }
  
  public Builder smsLoginConfig(SapiConfiguration.SmsLoginConfig paramSmsLoginConfig)
  {
    v = paramSmsLoginConfig;
    return this;
  }
  
  public Builder syncCacheOnInit(boolean paramBoolean)
  {
    x = paramBoolean;
    return this;
  }
  
  public Builder uniteVerify(boolean paramBoolean)
  {
    w = paramBoolean;
    return this;
  }
  
  public Builder wxAppID(String paramString)
  {
    k = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiConfiguration.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */