package com.estrongs.android.pop;

import android.content.Context;
import com.estrongs.a.a;
import com.estrongs.a.a.f;
import com.estrongs.android.ui.dialog.dp;

class q
  extends dp
{
  q(n paramn, Context paramContext, boolean paramBoolean, f paramf)
  {
    super(paramContext, paramBoolean);
  }
  
  protected void a()
  {
    a.a = c();
    a.b = e();
    a.c = g();
    b.b.sendMessage(5, new Object[] { b.a });
    dismiss();
  }
  
  protected void b()
  {
    a.a = null;
    b.b.sendMessage(5, new Object[] { b.a });
    dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */