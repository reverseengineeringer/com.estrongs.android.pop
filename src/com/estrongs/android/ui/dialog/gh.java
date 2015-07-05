package com.estrongs.android.ui.dialog;

import android.content.Context;

class gh
{
  public boolean a = true;
  public int[] b = null;
  public String[] c = null;
  private Context d;
  private gj e;
  private int f = 0;
  private int g = 0;
  
  public gh(Context paramContext, int paramInt, gj paramgj)
  {
    d = paramContext;
    f = paramInt;
    e = paramgj;
    b = new int[] { 1, 2, 3, 4 };
    c = new String[] { "http(" + paramContext.getString(2131428368) + ")", "file(" + paramContext.getString(2131427414) + ")", "https(" + paramContext.getString(2131428368) + ")", "samba(" + paramContext.getString(2131427410) + ")" };
  }
  
  public int a(int paramInt)
  {
    int i = 0;
    while (i < b.length)
    {
      if (paramInt == b[i]) {
        return i;
      }
      i += 1;
    }
    return 0;
  }
  
  public void a()
  {
    new ct(d).a(2131427370).a(c, a(f), new gi(this)).c();
  }
  
  public String b(int paramInt)
  {
    return c[a(paramInt)];
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.gh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */