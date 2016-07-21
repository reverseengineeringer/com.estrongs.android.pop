package com.estrongs.android.ui.e;

import com.estrongs.android.ui.preference.q;

class ci
  implements q
{
  ci(ch paramch) {}
  
  public void a(String paramString, Object paramObject)
  {
    if ("show_select_button".equals(paramString))
    {
      ch.a(a, Boolean.valueOf(paramObject.toString()).booleanValue());
      a.k();
      a.f(ch.a(a));
    }
    do
    {
      return;
      if ("show_windows_button".equals(paramString))
      {
        ch.b(a, Boolean.valueOf(paramObject.toString()).booleanValue());
        a.k();
        a.f(ch.a(a));
        return;
      }
    } while (!"toolbar_setting_show_name".equals(paramString));
    a.f(ch.a(a));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */