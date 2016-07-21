package com.flurry.sdk;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;
import android.widget.RelativeLayout;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class gt
  extends RelativeLayout
  implements DialogInterface.OnKeyListener
{
  private static final String a = gt.class.getSimpleName();
  private final s b;
  private final gt.a c;
  private ProgressDialog d;
  private AtomicBoolean e = new AtomicBoolean(false);
  private long f = Long.MIN_VALUE;
  private final kb<ln> g = new gt.1(this);
  
  public gt(Context paramContext, s params, gt.a parama)
  {
    super(paramContext);
    b = params;
    c = parama;
  }
  
  public void addTimerListener()
  {
    f = System.currentTimeMillis();
    lo.a().a(g);
  }
  
  public void cleanupLayout()
  {
    removeTimerListener();
  }
  
  protected void dismissProgressDialog()
  {
    if ((d != null) && (d.isShowing()))
    {
      d.dismiss();
      d = null;
    }
    kg.a(3, a, "Dismiss progress bar.");
    f = Long.MIN_VALUE;
    removeTimerListener();
  }
  
  public au getAdController()
  {
    return b.l();
  }
  
  public int getAdFrameIndex()
  {
    return b.l().c();
  }
  
  public ay getAdLog()
  {
    return b.l().b();
  }
  
  public ay getAdLog(String paramString)
  {
    return b.l().a(paramString);
  }
  
  public s getAdObject()
  {
    return b;
  }
  
  public co getAdUnit()
  {
    return b.l().a();
  }
  
  public void initLayout() {}
  
  protected boolean isViewAttachedToActivity()
  {
    kg.a(3, a, "fViewAttachedToWindow " + e.get());
    return e.get();
  }
  
  public void onActivityDestroy() {}
  
  public void onActivityPause() {}
  
  public void onActivityResume() {}
  
  public void onActivityStart() {}
  
  public void onActivityStop()
  {
    dismissProgressDialog();
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    e.set(true);
  }
  
  public boolean onBackKey()
  {
    return false;
  }
  
  public void onConfigurationChanged() {}
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    e.set(false);
  }
  
  public void onEvent(bb parambb, Map<String, String> paramMap)
  {
    fa.a(parambb, paramMap, getContext(), b, b.l(), 0);
  }
  
  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    kg.a(3, a, "onkey,keycode=" + paramInt + ",event=" + paramKeyEvent.getAction());
    if ((paramDialogInterface == d) && (paramInt == 4) && (paramKeyEvent.getAction() == 1))
    {
      onEvent(bb.u, Collections.emptyMap());
      paramDialogInterface.dismiss();
      return true;
    }
    return false;
  }
  
  protected void onViewBack()
  {
    if (c != null) {
      c.a();
    }
  }
  
  protected void onViewClose()
  {
    if (c != null) {
      c.b();
    }
  }
  
  protected void onViewError()
  {
    if (c != null) {
      c.c();
    }
  }
  
  protected void onViewLoadTimeout() {}
  
  public void removeTimerListener()
  {
    f = Long.MIN_VALUE;
    lo.a().b(g);
  }
  
  public void setAdFrameIndex(int paramInt)
  {
    b.l().a(paramInt);
  }
  
  protected void setOrientation(int paramInt)
  {
    if (!(getContext() instanceof Activity)) {}
    Activity localActivity;
    do
    {
      return;
      localActivity = (Activity)getContext();
    } while (!getAdController().l());
    ez.a(localActivity, paramInt, true);
  }
  
  protected void showProgressDialog()
  {
    if (!getAdController().l()) {}
    do
    {
      return;
      Context localContext = getContext();
      if (d == null)
      {
        if (localContext != null)
        {
          kg.a(3, a, "Create and show progress bar");
          d = new ProgressDialog(localContext);
          d.setProgressStyle(0);
          d.setMessage("Loading...");
          d.setCancelable(true);
          d.setCanceledOnTouchOutside(false);
          d.setOnKeyListener(this);
          d.show();
          addTimerListener();
          return;
        }
        kg.a(3, a, "Context is null, cannot create progress dialog.");
        return;
      }
    } while (d.isShowing());
    kg.a(3, a, "Show progress bar.");
    d.show();
    addTimerListener();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */