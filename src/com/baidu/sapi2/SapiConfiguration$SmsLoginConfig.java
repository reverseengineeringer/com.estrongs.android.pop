package com.baidu.sapi2;

import com.baidu.sapi2.utils.enums.Switch;

public class SapiConfiguration$SmsLoginConfig
{
  public final Switch flagLoginBtnType;
  public final Switch flagShowFastRegLink;
  public final Switch flagShowLoginLink;
  public final Switch flagShowSmsLoginLink;
  
  public SapiConfiguration$SmsLoginConfig(Switch paramSwitch1, Switch paramSwitch2, @Deprecated Switch paramSwitch3)
  {
    Switch localSwitch = paramSwitch1;
    if (paramSwitch1 == null) {
      localSwitch = Switch.OFF;
    }
    paramSwitch1 = paramSwitch2;
    if (paramSwitch2 == null) {
      paramSwitch1 = Switch.OFF;
    }
    paramSwitch2 = paramSwitch3;
    if (paramSwitch3 == null) {
      paramSwitch2 = Switch.OFF;
    }
    flagShowLoginLink = localSwitch;
    flagShowSmsLoginLink = paramSwitch1;
    flagLoginBtnType = paramSwitch2;
    flagShowFastRegLink = Switch.OFF;
  }
  
  public SapiConfiguration$SmsLoginConfig(Switch paramSwitch1, Switch paramSwitch2, @Deprecated Switch paramSwitch3, Switch paramSwitch4)
  {
    Switch localSwitch = paramSwitch1;
    if (paramSwitch1 == null) {
      localSwitch = Switch.OFF;
    }
    paramSwitch1 = paramSwitch2;
    if (paramSwitch2 == null) {
      paramSwitch1 = Switch.OFF;
    }
    paramSwitch2 = paramSwitch3;
    if (paramSwitch3 == null) {
      paramSwitch2 = Switch.OFF;
    }
    paramSwitch3 = paramSwitch4;
    if (paramSwitch4 == null) {
      paramSwitch3 = Switch.OFF;
    }
    flagShowLoginLink = localSwitch;
    flagShowSmsLoginLink = paramSwitch1;
    flagLoginBtnType = paramSwitch2;
    flagShowFastRegLink = paramSwitch3;
  }
  
  public String toString()
  {
    return String.valueOf(flagShowLoginLink.ordinal()) + flagShowSmsLoginLink.ordinal() + flagLoginBtnType.ordinal();
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiConfiguration.SmsLoginConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */