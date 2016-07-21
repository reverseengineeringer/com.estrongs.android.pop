package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.h;
import com.google.ads.mediation.n;
import com.google.android.gms.ads.a.a.a;
import java.util.Map;

@me
public final class ie
  extends ig
{
  private Map<Class<? extends Object>, Object> a;
  
  private <NETWORK_EXTRAS extends n, SERVER_PARAMETERS extends MediationServerParameters> ii c(String paramString)
  {
    try
    {
      Object localObject = Class.forName(paramString, false, ie.class.getClassLoader());
      if (h.class.isAssignableFrom((Class)localObject))
      {
        localObject = (h)((Class)localObject).newInstance();
        return new ja((h)localObject, (n)a.get(((h)localObject).b()));
      }
      if (com.google.android.gms.ads.a.b.class.isAssignableFrom((Class)localObject)) {
        return new iv((com.google.android.gms.ads.a.b)((Class)localObject).newInstance());
      }
      com.google.android.gms.ads.internal.util.client.b.e("Could not instantiate mediation adapter: " + paramString + " (not a valid adapter).");
      throw new RemoteException();
    }
    catch (Throwable localThrowable)
    {
      com.google.android.gms.ads.internal.util.client.b.e("Could not instantiate mediation adapter: " + paramString + ". " + localThrowable.getMessage());
      throw new RemoteException();
    }
  }
  
  public ii a(String paramString)
  {
    return c(paramString);
  }
  
  public void a(Map<Class<? extends Object>, Object> paramMap)
  {
    a = paramMap;
  }
  
  public boolean b(String paramString)
  {
    try
    {
      boolean bool = a.class.isAssignableFrom(Class.forName(paramString, false, ie.class.getClassLoader()));
      return bool;
    }
    catch (Throwable localThrowable)
    {
      com.google.android.gms.ads.internal.util.client.b.e("Could not load custom event implementation class: " + paramString + ", assuming old implementation.");
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ie
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */