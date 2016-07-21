package com.estrongs.android.ui.controller;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.f.l;

class ax
  extends l
{
  ax(aj paramaj, Context paramContext, View paramView1, View paramView2, String paramString, ImageView paramImageView)
  {
    super(paramContext, paramView1, paramView2, paramString);
  }
  
  protected void a()
  {
    b.a.j(b.q());
  }
  
  protected void a(String paramString)
  {
    a.setImageDrawable(b.l.c(paramString));
    b.a.k(paramString);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.controller.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */