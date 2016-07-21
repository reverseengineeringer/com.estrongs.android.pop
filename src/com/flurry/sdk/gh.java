package com.flurry.sdk;

import android.content.Context;
import android.content.res.Configuration;
import android.net.Uri;
import android.widget.RelativeLayout.LayoutParams;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public abstract class gh
  extends gt
  implements go.a
{
  private static final String a = gh.class.getSimpleName();
  protected go b;
  private boolean c = true;
  private boolean d = false;
  
  protected gh(Context paramContext, s params, gt.a parama)
  {
    super(paramContext, params, parama);
    x();
  }
  
  private boolean d()
  {
    return getAdFrameIndex() == getAdUnitd.size() - 1;
  }
  
  private void e()
  {
    gk localgk = getAdController().m();
    int i = b.d();
    if (i > 0)
    {
      localgk.a(i);
      getAdController().a(localgk);
    }
  }
  
  private void f()
  {
    getAdController().m().b(getViewParams());
  }
  
  public void A()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (getAdController() != null)
    {
      bool1 = bool2;
      if (getAdController().m() != null) {
        bool1 = getAdController().m().b();
      }
    }
    if (bool1)
    {
      kg.a(a, "VideoClose: Firing video close.");
      a(bb.w, Collections.emptyMap());
    }
  }
  
  public void a()
  {
    kg.a(3, a, "Video Close clicked: ");
    a(bb.u, Collections.emptyMap());
    onViewClose();
  }
  
  protected void a(float paramFloat1, float paramFloat2)
  {
    if (b == null) {}
    long l;
    gk localgk;
    do
    {
      return;
      l = getAdControlleraz;
      localgk = getAdController().m();
    } while ((paramFloat2 < (float)l) || (localgk.c()));
    a(bb.L, Collections.emptyMap());
    localgk.b(true);
  }
  
  public void a(int paramInt)
  {
    if (b != null)
    {
      if (!b.a()) {
        break label46;
      }
      dismissProgressDialog();
      b.a(paramInt);
    }
    for (;;)
    {
      b.c(getViewParams());
      d = false;
      return;
      label46:
      showProgressDialog();
    }
  }
  
  protected void a(bb parambb, Map<String, String> paramMap)
  {
    fa.a(parambb, paramMap, getContext(), getAdObject(), getAdController(), 0);
  }
  
  public void a(String paramString)
  {
    kg.a(3, a, "Video Prepared: " + paramString);
    if (b != null) {
      b.c(getViewParams());
    }
    if (d)
    {
      dismissProgressDialog();
      return;
    }
    int i = getAdController().m().a();
    if ((b != null) && ((c) || (i > 3))) {
      a(i);
    }
    if (getAdController().e(bb.f.a()))
    {
      a(bb.f, Collections.emptyMap());
      getAdController().f(bb.f.a());
    }
    dismissProgressDialog();
  }
  
  public void a(String paramString, float paramFloat1, float paramFloat2)
  {
    a(paramFloat1, paramFloat2);
    c(paramFloat1, paramFloat2);
    if (b != null) {
      b.c(getViewParams());
    }
  }
  
  public void a(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    kg.a(3, a, "Video Error: " + paramString);
    if (b != null) {
      b.e();
    }
    onViewError();
    paramString = new HashMap();
    paramString.put("errorCode", Integer.toString(ba.q.a()));
    paramString.put("frameworkError", Integer.toString(paramInt2));
    paramString.put("implError", Integer.toString(paramInt3));
    a(bb.g, paramString);
    dismissProgressDialog();
    y();
  }
  
  public void b()
  {
    kg.a(3, a, "Video Play clicked: ");
    a(0);
  }
  
  protected void b(float paramFloat1, float paramFloat2)
  {
    getAdController().m().a(true);
    a(bb.i, Collections.emptyMap());
    kg.a(3, a, "BeaconTest: Video start event fired, adObj: " + getAdObject());
  }
  
  public void b(String paramString)
  {
    kg.a(3, a, "Video Completed: " + paramString);
    boolean bool = d();
    a(bb.j, Collections.emptyMap());
    kg.a(3, a, "BeaconTest: Video completed event fired, adObj: " + getAdObject());
    y();
    if (bool) {
      v();
    }
  }
  
  protected Uri c(String paramString)
  {
    localObject3 = null;
    try
    {
      kg.a(3, a, "Precaching: Getting video from cache: " + paramString);
      File localFile = i.a().l().b(getAdObject(), paramString);
      localObject1 = localObject3;
      if (localFile != null) {
        localObject1 = Uri.parse("file://" + localFile.getAbsolutePath());
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Object localObject1;
        kg.a(3, a, "Precaching: Error accessing cached file.", localException);
        Object localObject2 = localObject3;
      }
    }
    localObject3 = localObject1;
    if (localObject1 == null)
    {
      kg.a(3, a, "Precaching: Error using cached file. Loading with url: " + paramString);
      localObject3 = Uri.parse(paramString);
    }
    return (Uri)localObject3;
  }
  
  public void c()
  {
    if (b != null)
    {
      kg.a(3, a, "Video suspend: ");
      u();
      b.e();
    }
  }
  
  protected void c(float paramFloat1, float paramFloat2)
  {
    if (b == null) {}
    gk localgk;
    do
    {
      return;
      localgk = getAdController().m();
      if ((paramFloat2 >= 0.0F) && (!localgk.b()))
      {
        localgk.a(true);
        b(paramFloat1, paramFloat2);
      }
      paramFloat1 = paramFloat2 / paramFloat1;
      if ((paramFloat1 >= 0.25F) && (!localgk.e()))
      {
        localgk.d(true);
        a(bb.H, Collections.emptyMap());
        kg.a(3, a, "BeaconTest: Video 1st quartile event fired, adObj: " + getAdObject());
      }
      if ((paramFloat1 >= 0.5F) && (!localgk.f()))
      {
        localgk.e(true);
        a(bb.I, Collections.emptyMap());
        kg.a(3, a, "BeaconTest: Video 2nd quartile event fired, adObj: " + getAdObject());
      }
    } while ((paramFloat1 < 0.75F) || (localgk.g()));
    localgk.f(true);
    a(bb.J, Collections.emptyMap());
    kg.a(3, a, "BeaconTest: Video 3rd quartile event fired, adObj: " + getAdObject());
  }
  
  public void c(int paramInt)
  {
    gk localgk = getAdController().m();
    if (paramInt != Integer.MIN_VALUE)
    {
      kg.a(3, a, "PlayPause: pauseVideo() Video paused position: " + paramInt + " adObject: " + getAdObject().e());
      localgk.a(paramInt);
      getAdController().a(localgk);
    }
  }
  
  public void cleanupLayout()
  {
    c();
    dismissProgressDialog();
    if (b != null)
    {
      b.z();
      b = null;
    }
  }
  
  public void d(int paramInt)
  {
    if (paramInt > 0) {
      getAdController().m().a(paramInt);
    }
  }
  
  public boolean getVideoCompletedFromStateOrVideo()
  {
    boolean bool2 = false;
    gk localgk = getAdController().m();
    boolean bool1 = bool2;
    if (b != null) {
      if (!localgk.h())
      {
        bool1 = bool2;
        if (!b.k().d()) {}
      }
      else
      {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public go getVideoController()
  {
    return b;
  }
  
  public int getVideoPosition()
  {
    return getAdController().m().a();
  }
  
  protected abstract int getViewParams();
  
  public void initLayout()
  {
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(13);
    addView(b.j(), localLayoutParams);
    showProgressDialog();
  }
  
  public void k() {}
  
  public void l() {}
  
  public void onActivityDestroy()
  {
    super.onActivityDestroy();
    s();
  }
  
  public void onActivityPause()
  {
    super.onActivityPause();
    u();
  }
  
  public void onActivityResume()
  {
    super.onActivityResume();
    if (d)
    {
      int i = getAdController().m().a();
      if ((b != null) && ((c) || (i > 3))) {
        a(i);
      }
    }
  }
  
  public void onActivityStop()
  {
    super.onActivityStop();
    c();
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    x();
  }
  
  protected void onViewLoadTimeout()
  {
    a(bb.u, Collections.emptyMap());
  }
  
  protected void s()
  {
    i.a().l().a(getAdObject());
    i.a().l().g();
  }
  
  public void setAutoPlay(boolean paramBoolean)
  {
    kg.a(3, a, "Video setAutoPlay: " + paramBoolean);
    c = paramBoolean;
  }
  
  public void setVideoUri(Uri paramUri)
  {
    kg.a(3, a, "Video set video uri: " + paramUri);
    gk localgk;
    if (b != null)
    {
      localgk = getAdController().m();
      if (localgk.a() <= b.l()) {
        break label71;
      }
    }
    label71:
    for (int i = localgk.a();; i = b.l())
    {
      b.a(paramUri, i);
      return;
    }
  }
  
  public void u()
  {
    if (b != null)
    {
      kg.a(3, a, "Video pause: ");
      e();
      f();
      b.c();
      d = true;
    }
  }
  
  protected void v()
  {
    gr localgr = new gr();
    e = gr.a.b;
    localgr.b();
  }
  
  public void w()
  {
    kg.a(3, a, "Video More Info clicked: ");
    a(bb.h, Collections.emptyMap());
  }
  
  protected void x()
  {
    if (ez.a(getContext()))
    {
      setOrientation(4);
      return;
    }
    setOrientation(6);
  }
  
  protected void y()
  {
    setOrientation(4);
  }
  
  public void z()
  {
    int i = getAdController().m().a();
    if ((b != null) && (!b.k().isPlaying()))
    {
      kg.a(3, a, "PlayPause: onResumeVideoWithState() Play video position: " + i + " adObject: " + getAdObject().e());
      b.a(i);
      b.c(getViewParams());
      d = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */