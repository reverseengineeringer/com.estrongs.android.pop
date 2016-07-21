package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import java.util.List;

public class dx
{
  private ee a = null;
  
  public dx(Activity paramActivity, List<h> paramList, String paramString)
  {
    a = new ee(paramActivity, paramList, paramString);
  }
  
  public void a()
  {
    Object localObject = a.aE();
    cv localcv = new cv(((View)localObject).getContext()).a(2131232219);
    localcv.a((View)localObject);
    if (!ap.cg(a.g)) {
      localcv.a(2131231265, new dy(this));
    }
    for (;;)
    {
      localcv.a(new ed(this));
      localObject = localcv.b();
      a.h = ((Dialog)localObject);
      ((ci)localObject).show();
      a.c();
      return;
      localcv.c(2131231265, new dz(this));
      localcv.b(2131230882, new ea(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.dx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */