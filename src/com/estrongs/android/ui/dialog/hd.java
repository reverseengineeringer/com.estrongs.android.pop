package com.estrongs.android.ui.dialog;

import android.view.View;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.util.m;
import com.estrongs.fs.d;
import com.estrongs.fs.h;

class hd
  extends m
{
  hd(hc paramhc, String paramString, cg paramcg, View paramView)
  {
    super(paramString);
  }
  
  public void run()
  {
    h localh = d.a().j(hc.a(c));
    if (g)
    {
      hc.b(c).runOnUiThread(new he(this));
      return;
    }
    hc.b(c).runOnUiThread(new hf(this, localh));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.hd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */