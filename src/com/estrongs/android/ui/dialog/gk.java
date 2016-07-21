package com.estrongs.android.ui.dialog;

import android.content.Context;

class gk
{
  public boolean a = true;
  public int[] b = null;
  public String[] c = null;
  private Context d;
  private gm e;
  private int f = 0;
  private int g = 0;
  
  public gk(Context paramContext, int paramInt, gm paramgm)
  {
    d = paramContext;
    f = paramInt;
    e = paramgm;
    b = new int[] { 1, 2, 3, 4 };
    c = new String[] { "http(" + paramContext.getString(2131231608) + ")", "file(" + paramContext.getString(2131231659) + ")", "https(" + paramContext.getString(2131231608) + ")", "samba(" + paramContext.getString(2131231658) + ")" };
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
    new cv(d).a(2131230720).a(c, a(f), new gl(this)).c();
  }
  
  public String b(int paramInt)
  {
    return c[a(paramInt)];
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.gk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */