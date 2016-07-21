package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.view.View;
import com.estrongs.android.util.m;
import com.estrongs.fs.d;
import com.estrongs.fs.h;

class hg
  extends m
{
  hg(hf paramhf, String paramString, ci paramci, View paramView)
  {
    super(paramString);
  }
  
  public void run()
  {
    h localh = d.a().j(hf.a(c));
    if (g)
    {
      hf.b(c).runOnUiThread(new hh(this));
      return;
    }
    hf.b(c).runOnUiThread(new hi(this, localh));
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.hg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */