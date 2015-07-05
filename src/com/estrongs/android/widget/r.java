package com.estrongs.android.widget;

import android.app.Activity;
import android.os.Handler;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;
import com.estrongs.android.view.cb;
import com.estrongs.android.view.dp;
import com.estrongs.fs.h;
import com.estrongs.fs.util.a.a;

class r
  extends dp
{
  r(g paramg, Activity paramActivity, a parama, cb paramcb)
  {
    super(paramActivity, parama, paramcb);
  }
  
  private void b(h paramh)
  {
    super.a(paramh);
  }
  
  public boolean H()
  {
    return !V();
  }
  
  protected int a()
  {
    return 2130903125;
  }
  
  protected void a(h paramh, TypedMap paramTypedMap)
  {
    if ((g.c(b) != null) && (g.c(b).a(paramh))) {
      return;
    }
    if ((am.bb(paramh.getAbsolutePath())) && (!am.bg(paramh.getAbsolutePath()))) {}
    for (int i = 1; (FexApplication.a().h()) && (i != 0); i = 0)
    {
      new Handler().postDelayed(new s(this, paramh), 50L);
      return;
    }
    super.a(paramh, paramTypedMap);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */