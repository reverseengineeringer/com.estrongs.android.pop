package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.dynamic.h;

@me
public class du
  implements com.google.android.gms.ads.formats.b
{
  private final dr a;
  private final Drawable b;
  private final Uri c;
  
  public du(dr paramdr)
  {
    a = paramdr;
    try
    {
      paramdr = a.a();
      if (paramdr == null) {
        break label61;
      }
      paramdr = (Drawable)h.a(paramdr);
    }
    catch (RemoteException paramdr)
    {
      try
      {
        paramdr = a.b();
        c = paramdr;
        return;
        paramdr = paramdr;
        com.google.android.gms.ads.internal.util.client.b.b("Failed to get drawable.", paramdr);
        paramdr = null;
      }
      catch (RemoteException paramdr)
      {
        for (;;)
        {
          com.google.android.gms.ads.internal.util.client.b.b("Failed to get uri.", paramdr);
          paramdr = (dr)localObject;
        }
      }
    }
    b = paramdr;
  }
  
  public Drawable a()
  {
    return b;
  }
  
  public Uri b()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.du
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */