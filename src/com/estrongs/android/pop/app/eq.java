package com.estrongs.android.pop.app;

import android.content.Context;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import com.estrongs.android.ui.d.b;
import com.estrongs.android.widget.RealViewSwitcher;
import com.estrongs.android.widget.bc;

class eq
  extends b
{
  eq(PopAudioPlayer paramPopAudioPlayer, LinearLayout paramLinearLayout1, Context paramContext, LinearLayout paramLinearLayout2)
  {
    super(paramLinearLayout1, paramContext);
  }
  
  protected void a()
  {
    c = new er(this, b);
    a.removeAllViews();
    a.addView(c, new ViewGroup.LayoutParams(-1, -1));
    a(new es(this, null));
    a(new et(this, null));
    e(0);
  }
  
  public void a(int paramInt)
  {
    PopAudioPlayer.g(b).a(paramInt);
    b.f.c(paramInt);
  }
  
  protected int b()
  {
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.eq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */