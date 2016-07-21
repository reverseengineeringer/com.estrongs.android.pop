package com.facebook.ads.internal.adapters;

import android.content.Context;
import com.facebook.ads.NativeAd.Image;
import com.facebook.ads.NativeAd.Rating;
import com.facebook.ads.internal.server.AdPlacementType;
import java.util.Map;

public abstract class p
  implements AdAdapter
{
  public abstract void a(int paramInt);
  
  public abstract void a(Context paramContext, q paramq, Map<String, Object> paramMap);
  
  public abstract void a(Map<String, Object> paramMap);
  
  public abstract boolean a();
  
  public abstract void b(Map<String, Object> paramMap);
  
  public abstract boolean b();
  
  public abstract boolean c();
  
  public abstract int d();
  
  public abstract int e();
  
  public abstract int f();
  
  public abstract NativeAd.Image g();
  
  public final AdPlacementType getPlacementType()
  {
    return AdPlacementType.NATIVE;
  }
  
  public abstract NativeAd.Image h();
  
  public abstract String i();
  
  public abstract String j();
  
  public abstract String k();
  
  public abstract String l();
  
  public abstract String m();
  
  public abstract NativeAd.Rating n();
  
  public abstract String o();
  
  public abstract NativeAd.Image p();
  
  public abstract String q();
  
  public abstract String r();
  
  public abstract String s();
  
  public abstract String t();
  
  public abstract boolean u();
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.adapters.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */