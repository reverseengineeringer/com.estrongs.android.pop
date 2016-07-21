package com.estrongs.android.pop.app;

import android.content.Context;
import android.view.WindowManager.LayoutParams;
import com.estrongs.android.ui.e.ju;

class jx
  extends ju
{
  jx(PopVideoPlayer paramPopVideoPlayer, Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramContext, paramBoolean1, paramBoolean2);
  }
  
  protected void a()
  {
    super.a();
    WindowManager.LayoutParams localLayoutParams = b;
    flags |= 0x400;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.jx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */