package com.estrongs.android.ui.b;

import android.app.Activity;
import android.view.View;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.fs.h;

public class d
{
  private q a = null;
  
  public d(Activity paramActivity, h paramh)
  {
    a = new q(paramActivity, paramh);
  }
  
  public void a()
  {
    Object localObject = a.aE();
    cv localcv = new cv(((View)localObject).getContext()).a(2131232219);
    localcv.a((View)localObject);
    localcv.a(2131231265, new e(this));
    localObject = localcv.b();
    a.a = ((ci)localObject);
    ((ci)localObject).show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */