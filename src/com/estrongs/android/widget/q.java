package com.estrongs.android.widget;

import android.app.Activity;
import android.os.Handler;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.android.view.dw;
import com.estrongs.android.view.fv;
import com.estrongs.fs.h;
import com.estrongs.fs.util.a.a;

class q
  extends fv
{
  q(f paramf, Activity paramActivity, a parama, dw paramdw)
  {
    super(paramActivity, parama, paramdw);
  }
  
  private void a(h paramh)
  {
    super.c(paramh);
  }
  
  public boolean Y()
  {
    return !al();
  }
  
  protected int a()
  {
    return 2130903224;
  }
  
  protected void a(h paramh, TypedMap paramTypedMap)
  {
    if ((f.c(b) != null) && (f.c(b).a(paramh))) {
      return;
    }
    if ((ap.bm(paramh.getAbsolutePath())) && (!ap.br(paramh.getAbsolutePath()))) {}
    for (int i = 1; (FexApplication.a().h()) && (i != 0); i = 0)
    {
      new Handler().postDelayed(new r(this, paramh), 50L);
      return;
    }
    super.a(paramh, paramTypedMap);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */