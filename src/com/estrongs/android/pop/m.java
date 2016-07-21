package com.estrongs.android.pop;

import android.app.Activity;
import com.estrongs.a.a.d;
import com.estrongs.android.d.e;
import com.estrongs.android.d.i;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.util.ap;
import com.estrongs.fs.b.r;
import com.estrongs.fs.w;

public class m
  implements com.estrongs.a.a.a
{
  private Activity a;
  
  public m(Activity paramActivity)
  {
    a(paramActivity);
  }
  
  private ci a(com.estrongs.a.a parama, com.estrongs.a.a.h paramh)
  {
    if ((c.getFileType().a()) || ((ap.bm(d.getPath())) && (!ap.J(d.getPath())))) {
      return new e(a, new x(this, paramh, parama), true);
    }
    if ((parama instanceof r)) {}
    for (boolean bool = ((r)parama).e();; bool = true)
    {
      parama = new i(a, c, d, new y(this, paramh, parama), true, bool, b);
      parama.setCancelable(true);
      return parama;
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