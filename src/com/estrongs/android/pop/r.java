package com.estrongs.android.pop;

import android.content.Context;
import com.estrongs.a.a;
import com.estrongs.a.a.e;
import com.estrongs.android.ui.dialog.dn;

class r
  extends dn
{
  r(n paramn, Context paramContext, boolean paramBoolean, e parame)
  {
    super(paramContext, paramBoolean);
  }
  
  protected void a()
  {
    a.a = c();
    a.b = f();
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
 * Qualified Name:     com.estrongs.android.pop.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */