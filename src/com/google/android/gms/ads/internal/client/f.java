package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.a;
import com.google.android.gms.internal.me;

@me
public final class f
  extends s
{
  private final a a;
  
  public f(a parama)
  {
    a = parama;
  }
  
  public void a()
  {
    a.onAdClosed();
  }
  
  public void a(int paramInt)
  {
    a.onAdFailedToLoad(paramInt);
  }
  
  public void b()
  {
    a.onAdLeftApplication();
  }
  
  public void c()
  {
    a.onAdLoaded();
  }
  
  public void d()
  {
    a.onAdOpened();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */