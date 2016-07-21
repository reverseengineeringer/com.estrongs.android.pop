package com.estrongs.android.widget;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.support.v7.widget.GridLayoutManager;
import com.estrongs.android.view.dw;
import com.estrongs.android.view.eb;
import com.estrongs.fs.util.a.a;

class at
  extends eb
{
  at(ap paramap, Activity paramActivity, a parama, dw paramdw)
  {
    super(paramActivity, parama, paramdw);
  }
  
  public void a(int paramInt)
  {
    int i = 1;
    p = paramInt;
    if (ag.getResources().getConfiguration().orientation == 1) {}
    for (paramInt = i; paramInt != 0; paramInt = 0)
    {
      g.setSpanCount(3);
      return;
    }
    g.setSpanCount(4);
  }
  
  protected int x()
  {
    return 2130903275;
  }
  
  protected int y()
  {
    return 2130903274;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */