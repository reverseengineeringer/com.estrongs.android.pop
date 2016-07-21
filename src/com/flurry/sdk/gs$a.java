package com.flurry.sdk;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

final class gs$a
  extends WebChromeClient
{
  private gs$a(gs paramgs) {}
  
  public void onHideCustomView()
  {
    kg.a(3, gs.c(a), "onHideCustomView()");
    if (!(a.getContext() instanceof Activity)) {
      kg.a(3, gs.c(a), "no activity present");
    }
    Activity localActivity;
    do
    {
      return;
      localActivity = (Activity)a.getContext();
    } while (gs.s(a) == null);
    if (gs.w(a) != null) {
      gs.w(a).show();
    }
    ((ViewGroup)localActivity.getWindow().getDecorView()).removeView(gs.u(a));
    gs.u(a).removeView(gs.s(a));
    if ((gs.v(a) != null) && (gs.v(a).isShowing()))
    {
      gs.v(a).hide();
      gs.v(a).setOnDismissListener(null);
      gs.v(a).dismiss();
    }
    gs.a(a, null);
    if (gs.e(a) != null) {
      gs.e(a).stopLoading();
    }
    ez.a(localActivity, gs.x(a));
    gs.y(a).onCustomViewHidden();
    gs.a(a, null);
    gs.a(a, null);
    gs.a(a, null);
  }
  
  public void onShowCustomView(View paramView, int paramInt, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    kg.a(3, gs.c(a), "onShowCustomView(14)");
    if (!(a.getContext() instanceof Activity))
    {
      kg.a(3, gs.c(a), "no activity present");
      return;
    }
    Activity localActivity = (Activity)a.getContext();
    if ((gs.s(a) != null) && (gs.t(a) != null))
    {
      gs.t(a).onHideCustomView();
      return;
    }
    gs.a(a, paramView);
    gs.a(a, localActivity.getRequestedOrientation());
    gs.a(a, paramCustomViewCallback);
    gs.a(a, new FrameLayout(localActivity));
    gs.u(a).setBackgroundColor(-16777216);
    gs.u(a).addView(gs.s(a), new FrameLayout.LayoutParams(-1, -1, 17));
    ((ViewGroup)localActivity.getWindow().getDecorView()).addView(gs.u(a), -1, -1);
    if (gs.v(a) == null)
    {
      gs.a(a, new gs.a.1(this, localActivity, 16973841, localActivity));
      gs.v(a).getWindow().setType(1000);
      gs.v(a).setOnShowListener(new gs.a.2(this));
      gs.v(a).setOnDismissListener(new gs.a.3(this));
      gs.v(a).setCancelable(true);
      gs.v(a).show();
    }
    ez.a(localActivity, paramInt, true);
  }
  
  public void onShowCustomView(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    kg.a(3, gs.c(a), "onShowCustomView(7)");
    if (!(a.getContext() instanceof Activity))
    {
      kg.a(3, gs.c(a), "no activity present");
      return;
    }
    onShowCustomView(paramView, ((Activity)a.getContext()).getRequestedOrientation(), paramCustomViewCallback);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gs.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */