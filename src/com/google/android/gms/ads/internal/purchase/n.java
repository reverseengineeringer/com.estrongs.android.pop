package com.google.android.gms.ads.internal.purchase;

import android.content.Intent;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.oe;

@me
public class n
{
  private final String a;
  
  public n(String paramString)
  {
    a = paramString;
  }
  
  public String a()
  {
    return ae.e().c();
  }
  
  public boolean a(String paramString, int paramInt, Intent paramIntent)
  {
    if ((paramString == null) || (paramIntent == null)) {}
    String str;
    do
    {
      return false;
      str = ae.o().b(paramIntent);
      paramIntent = ae.o().c(paramIntent);
    } while ((str == null) || (paramIntent == null));
    if (!paramString.equals(ae.o().a(str)))
    {
      b.e("Developer payload not match.");
      return false;
    }
    if ((a != null) && (!o.a(a, str, paramIntent)))
    {
      b.e("Fail to verify signature.");
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.purchase.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */