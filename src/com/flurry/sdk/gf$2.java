package com.flurry.sdk;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;

class gf$2
  implements View.OnClickListener
{
  gf$2(gf paramgf) {}
  
  public void onClick(View paramView)
  {
    a.b.j().setVisibility(0);
    gf.b(a).setVisibility(0);
    gf.c(a).setVisibility(4);
    gf.d(a).setVisibility(8);
    a.o();
    a.requestLayout();
    if ((a.getVideoPosition() > 0) || (gf.e(a)))
    {
      a.b(a.getVideoPosition());
      gf.a(a, false);
      return;
    }
    gf.b(a, true);
    a.b();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gf.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */