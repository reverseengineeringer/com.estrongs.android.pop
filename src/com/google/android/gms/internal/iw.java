package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.a.c;
import com.google.android.gms.ads.a.d;
import com.google.android.gms.ads.a.e;
import com.google.android.gms.ads.a.f;
import com.google.android.gms.ads.a.g;
import com.google.android.gms.ads.a.k;
import com.google.android.gms.ads.a.l;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.bn;

@me
public final class iw
  implements d, f, l
{
  private final il a;
  private g b;
  
  public iw(il paramil)
  {
    a = paramil;
  }
  
  public g a()
  {
    return b;
  }
  
  public void a(c paramc)
  {
    bn.b("onAdLoaded must be called on the main UI thread.");
    b.a("Adapter called onAdLoaded.");
    try
    {
      a.e();
      return;
    }
    catch (RemoteException paramc)
    {
      b.d("Could not call onAdLoaded.", paramc);
    }
  }
  
  public void a(c paramc, int paramInt)
  {
    bn.b("onAdFailedToLoad must be called on the main UI thread.");
    b.a("Adapter called onAdFailedToLoad with error. " + paramInt);
    try
    {
      a.a(paramInt);
      return;
    }
    catch (RemoteException paramc)
    {
      b.d("Could not call onAdFailedToLoad.", paramc);
    }
  }
  
  public void a(e parame)
  {
    bn.b("onAdLoaded must be called on the main UI thread.");
    b.a("Adapter called onAdLoaded.");
    try
    {
      a.e();
      return;
    }
    catch (RemoteException parame)
    {
      b.d("Could not call onAdLoaded.", parame);
    }
  }
  
  public void a(e parame, int paramInt)
  {
    bn.b("onAdFailedToLoad must be called on the main UI thread.");
    b.a("Adapter called onAdFailedToLoad with error " + paramInt + ".");
    try
    {
      a.a(paramInt);
      return;
    }
    catch (RemoteException parame)
    {
      b.d("Could not call onAdFailedToLoad.", parame);
    }
  }
  
  public void a(k paramk)
  {
    bn.b("onAdOpened must be called on the main UI thread.");
    b.a("Adapter called onAdOpened.");
    try
    {
      a.d();
      return;
    }
    catch (RemoteException paramk)
    {
      b.d("Could not call onAdOpened.", paramk);
    }
  }
  
  public void a(k paramk, int paramInt)
  {
    bn.b("onAdFailedToLoad must be called on the main UI thread.");
    b.a("Adapter called onAdFailedToLoad with error " + paramInt + ".");
    try
    {
      a.a(paramInt);
      return;
    }
    catch (RemoteException paramk)
    {
      b.d("Could not call onAdFailedToLoad.", paramk);
    }
  }
  
  public void a(k paramk, g paramg)
  {
    bn.b("onAdLoaded must be called on the main UI thread.");
    b.a("Adapter called onAdLoaded.");
    b = paramg;
    try
    {
      a.e();
      return;
    }
    catch (RemoteException paramk)
    {
      b.d("Could not call onAdLoaded.", paramk);
    }
  }
  
  public void b(c paramc)
  {
    bn.b("onAdOpened must be called on the main UI thread.");
    b.a("Adapter called onAdOpened.");
    try
    {
      a.d();
      return;
    }
    catch (RemoteException paramc)
    {
      b.d("Could not call onAdOpened.", paramc);
    }
  }
  
  public void b(e parame)
  {
    bn.b("onAdOpened must be called on the main UI thread.");
    b.a("Adapter called onAdOpened.");
    try
    {
      a.d();
      return;
    }
    catch (RemoteException parame)
    {
      b.d("Could not call onAdOpened.", parame);
    }
  }
  
  public void b(k paramk)
  {
    bn.b("onAdClosed must be called on the main UI thread.");
    b.a("Adapter called onAdClosed.");
    try
    {
      a.b();
      return;
    }
    catch (RemoteException paramk)
    {
      b.d("Could not call onAdClosed.", paramk);
    }
  }
  
  public void c(c paramc)
  {
    bn.b("onAdClosed must be called on the main UI thread.");
    b.a("Adapter called onAdClosed.");
    try
    {
      a.b();
      return;
    }
    catch (RemoteException paramc)
    {
      b.d("Could not call onAdClosed.", paramc);
    }
  }
  
  public void c(e parame)
  {
    bn.b("onAdClosed must be called on the main UI thread.");
    b.a("Adapter called onAdClosed.");
    try
    {
      a.b();
      return;
    }
    catch (RemoteException parame)
    {
      b.d("Could not call onAdClosed.", parame);
    }
  }
  
  public void c(k paramk)
  {
    bn.b("onAdLeftApplication must be called on the main UI thread.");
    b.a("Adapter called onAdLeftApplication.");
    try
    {
      a.c();
      return;
    }
    catch (RemoteException paramk)
    {
      b.d("Could not call onAdLeftApplication.", paramk);
    }
  }
  
  public void d(c paramc)
  {
    bn.b("onAdLeftApplication must be called on the main UI thread.");
    b.a("Adapter called onAdLeftApplication.");
    try
    {
      a.c();
      return;
    }
    catch (RemoteException paramc)
    {
      b.d("Could not call onAdLeftApplication.", paramc);
    }
  }
  
  public void d(e parame)
  {
    bn.b("onAdLeftApplication must be called on the main UI thread.");
    b.a("Adapter called onAdLeftApplication.");
    try
    {
      a.c();
      return;
    }
    catch (RemoteException parame)
    {
      b.d("Could not call onAdLeftApplication.", parame);
    }
  }
  
  public void d(k paramk)
  {
    bn.b("onAdClicked must be called on the main UI thread.");
    b.a("Adapter called onAdClicked.");
    try
    {
      a.a();
      return;
    }
    catch (RemoteException paramk)
    {
      b.d("Could not call onAdClicked.", paramk);
    }
  }
  
  public void e(c paramc)
  {
    bn.b("onAdClicked must be called on the main UI thread.");
    b.a("Adapter called onAdClicked.");
    try
    {
      a.a();
      return;
    }
    catch (RemoteException paramc)
    {
      b.d("Could not call onAdClicked.", paramc);
    }
  }
  
  public void e(e parame)
  {
    bn.b("onAdClicked must be called on the main UI thread.");
    b.a("Adapter called onAdClicked.");
    try
    {
      a.a();
      return;
    }
    catch (RemoteException parame)
    {
      b.d("Could not call onAdClicked.", parame);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.iw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */