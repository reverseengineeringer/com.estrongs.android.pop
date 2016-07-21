package com.estrongs.android.b.a.b;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;

class c
  implements View.OnClickListener
{
  String a;
  Context b;
  
  c(a parama, String paramString, Context paramContext)
  {
    a = paramString;
    b = paramContext;
  }
  
  public void onClick(View paramView)
  {
    com.estrongs.android.e.a.a(a, b);
    if (a.equals("intent@com.estrongs.android.SHOW_DISK_USAGE")) {
      a.a(c, b);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.b.a.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */