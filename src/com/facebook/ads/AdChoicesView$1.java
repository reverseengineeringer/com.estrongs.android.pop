package com.facebook.ads;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class AdChoicesView$1
  implements View.OnTouchListener
{
  AdChoicesView$1(AdChoicesView paramAdChoicesView) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
    {
      if (AdChoicesView.a(a))
      {
        paramView = new Intent();
        paramView.setAction("android.intent.action.VIEW");
        paramView.addCategory("android.intent.category.BROWSABLE");
        paramView.setData(Uri.parse(AdChoicesView.b(a).getAdChoicesLinkUrl()));
        AdChoicesView.c(a).startActivity(paramView);
      }
      for (;;)
      {
        return true;
        AdChoicesView.d(a);
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.AdChoicesView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */