package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.m;
import com.google.android.gms.ads.internal.j;
import com.google.android.gms.ads.internal.overlay.p;
import com.google.android.gms.ads.internal.overlay.w;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import org.json.JSONObject;

@me
public class bm
  implements bh
{
  private final qa a;
  
  public bm(Context paramContext, VersionInfoParcel paramVersionInfoParcel, aj paramaj)
  {
    a = ae.f().a(paramContext, new AdSizeParcel(), false, false, paramaj, paramVersionInfoParcel);
    a.setWillNotDraw(true);
  }
  
  private void a(Runnable paramRunnable)
  {
    if (m.a().b())
    {
      paramRunnable.run();
      return;
    }
    oe.a.post(paramRunnable);
  }
  
  public void a()
  {
    a.destroy();
  }
  
  public void a(com.google.android.gms.ads.internal.client.a parama, p paramp, fd paramfd, w paramw, boolean paramBoolean, fy paramfy, ga paramga, j paramj, js paramjs)
  {
    a.i().a(parama, paramp, paramfd, paramw, paramBoolean, paramfy, paramga, new j(false), paramjs);
  }
  
  public void a(bi parambi)
  {
    a.i().a(new bs(this, parambi));
  }
  
  public void a(String paramString)
  {
    a(new bp(this, String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", new Object[] { paramString })));
  }
  
  public void a(String paramString, fq paramfq)
  {
    a.i().a(paramString, paramfq);
  }
  
  public void a(String paramString1, String paramString2)
  {
    a(new bo(this, paramString1, paramString2));
  }
  
  public void a(String paramString, JSONObject paramJSONObject)
  {
    a(new bn(this, paramString, paramJSONObject));
  }
  
  public bu b()
  {
    return new bv(this);
  }
  
  public void b(String paramString)
  {
    a(new br(this, paramString));
  }
  
  public void b(String paramString, fq paramfq)
  {
    a.i().b(paramString, paramfq);
  }
  
  public void b(String paramString, JSONObject paramJSONObject)
  {
    a.a(paramString, paramJSONObject);
  }
  
  public void c(String paramString)
  {
    a(new bq(this, paramString));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */