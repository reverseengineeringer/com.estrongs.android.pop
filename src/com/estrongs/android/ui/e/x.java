package com.estrongs.android.ui.e;

import com.estrongs.android.ui.preference.q;

class x
  implements q
{
  x(w paramw) {}
  
  public void a(String paramString, Object paramObject)
  {
    if ("show_select_button".equals(paramString))
    {
      w.a(a, Boolean.valueOf(paramObject.toString()).booleanValue());
      a.k();
      a.d(w.a(a));
    }
    do
    {
      return;
      if ("show_windows_button".equals(paramString))
      {
        w.b(a, Boolean.valueOf(paramObject.toString()).booleanValue());
        a.k();
        a.d(w.a(a));
        return;
      }
    } while (!"toolbar_setting_show_name".equals(paramString));
    a.d(w.a(a));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */