package com.estrongs.android.pop;

import android.app.Activity;
import com.estrongs.a.a.d;
import com.estrongs.android.a.e;
import com.estrongs.android.a.i;
import com.estrongs.android.ui.dialog.cg;
import com.estrongs.android.util.am;
import com.estrongs.fs.b.r;

public class m
  implements com.estrongs.a.a.a
{
  private Activity a;
  
  public m(Activity paramActivity)
  {
    a(paramActivity);
  }
  
  private cg a(com.estrongs.a.a parama, com.estrongs.a.a.h paramh)
  {
    if ((c.getFileType().a()) || ((am.bb(d.getPath())) && (!am.H(d.getPath())))) {
      return new e(a, new x(this, paramh, parama), true);
    }
    if ((parama instanceof r)) {}
    for (boolean bool = ((r)parama).e();; bool = true) {
      return new i(a, c, d, new y(this, paramh, parama), true, bool, b);
    }
  }
  
  public void a(Activity paramActivity)
  {
    a = paramActivity;
  }
  
  public void a(com.estrongs.a.a parama, d paramd)
  {
    a.runOnUiThread(new n(this, paramd, parama));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */