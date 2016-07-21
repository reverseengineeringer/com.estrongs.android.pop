package com.flurry.sdk;

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

class jj$a
  implements LocationListener
{
  public jj$a(jj paramjj) {}
  
  public void onLocationChanged(Location paramLocation)
  {
    if (paramLocation != null) {
      jj.a(a, paramLocation);
    }
    if (jj.c(a) >= 3)
    {
      kg.a(4, jj.f(), "Max location reports reached, stopping");
      jj.b(a);
    }
  }
  
  public void onProviderDisabled(String paramString) {}
  
  public void onProviderEnabled(String paramString) {}
  
  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle) {}
}

/* Location:
 * Qualified Name:     com.flurry.sdk.jj.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */