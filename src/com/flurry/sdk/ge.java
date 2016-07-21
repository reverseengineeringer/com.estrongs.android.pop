package com.flurry.sdk;

import android.content.Context;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public abstract class ge
  extends gh
{
  private static final String c = ge.class.getSimpleName();
  public boolean a = false;
  
  protected ge(Context paramContext, s params, gt.a parama)
  {
    super(paramContext, params, parama);
  }
  
  private boolean getValueForAutoplayMacro()
  {
    if (getVideoReplayCount() == 0) {
      return h();
    }
    return false;
  }
  
  protected void a(float paramFloat1, float paramFloat2)
  {
    if (b == null) {}
    long l;
    gk localgk;
    do
    {
      return;
      l = getAdControlleral;
      localgk = getAdController().m();
    } while ((paramFloat2 < (float)l) || ((!a) && (!f())) || (localgk.c()));
    a(bb.L, Collections.emptyMap());
    localgk.b(true);
    kg.a(3, c, "BeaconTest: Video view event fired, adObj: " + getAdObject());
  }
  
  public abstract void a(ge.a parama, int paramInt);
  
  public void a(boolean paramBoolean)
  {
    gk localgk = getAdController().m();
    localgk.k(paramBoolean);
    getAdController().a(localgk);
  }
  
  protected void b(float paramFloat1, float paramFloat2)
  {
    getAdController().m().a(true);
    HashMap localHashMap = new HashMap();
    localHashMap.put(fg.c, String.valueOf(getValueForAutoplayMacro()));
    if (f()) {
      localHashMap.put(fg.a, String.valueOf(b.h()));
    }
    for (;;)
    {
      a(bb.i, localHashMap);
      kg.a(3, c, "BeaconTest: Video start event fired, adObj: " + getAdObject() + " muted: " + b.h());
      return;
      localHashMap.put(fg.a, String.valueOf(true));
    }
  }
  
  public abstract boolean e();
  
  public abstract boolean f();
  
  public abstract void g();
  
  public int getVideoReplayCount()
  {
    return getAdController().m().n();
  }
  
  public abstract String getVideoUrl();
  
  protected int getViewParams()
  {
    return 0;
  }
  
  public abstract boolean h();
  
  public abstract boolean i();
  
  public abstract void j();
  
  public abstract void n();
  
  public void o() {}
  
  public void p() {}
  
  public boolean q()
  {
    return getAdController().m().l();
  }
  
  public boolean r()
  {
    return false;
  }
  
  protected void s() {}
  
  public abstract void setVideoUrl(String paramString);
  
  public void t()
  {
    i.a().l().a(getAdObject(), getVideoUrl());
    i.a().l().g();
    kg.a(3, c, "ClearCache: Video cache cleared.");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */