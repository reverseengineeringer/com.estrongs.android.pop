package com.baidu.sapi2.utils.enums;

public enum BindWidgetAction
{
  private String a;
  private String b;
  
  static
  {
    BIND_EMAIL = new BindWidgetAction("BIND_EMAIL", 1, "/wp/bindwidget-bindemail", "绑定邮箱");
    REBIND_MOBILE = new BindWidgetAction("REBIND_MOBILE", 2, "/wp/bindwidget-rebindmobile", "换绑手机");
    REBIND_EMAIL = new BindWidgetAction("REBIND_EMAIL", 3, "/wp/bindwidget-rebindemail", "换绑邮箱");
    UNBIND_MOBILE = new BindWidgetAction("UNBIND_MOBILE", 4, "/wp/bindwidget-unbindmobile", "解绑手机");
  }
  
  private BindWidgetAction(String paramString1, String paramString2)
  {
    a = paramString1;
    b = paramString2;
  }
  
  public String getName()
  {
    return b;
  }
  
  public String getUri()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.utils.enums.BindWidgetAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */