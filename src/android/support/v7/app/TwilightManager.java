package android.support.v7.app;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.support.v4.content.x;
import android.util.Log;
import java.util.Calendar;

class TwilightManager
{
  private static final int SUNRISE = 6;
  private static final int SUNSET = 22;
  private static final String TAG = "TwilightManager";
  private static final TwilightManager.TwilightState sTwilightState = new TwilightManager.TwilightState(null);
  private final Context mContext;
  private final LocationManager mLocationManager;
  
  TwilightManager(Context paramContext)
  {
    mContext = paramContext;
    mLocationManager = ((LocationManager)paramContext.getSystemService("location"));
  }
  
  private Location getLastKnownLocation()
  {
    Object localObject1 = null;
    if (x.a(mContext, "android.permission.ACCESS_COARSE_LOCATION") == 0) {}
    for (Location localLocation = getLastKnownLocationForProvider("network");; localLocation = null)
    {
      if (x.a(mContext, "android.permission.ACCESS_FINE_LOCATION") == 0) {
        localObject1 = getLastKnownLocationForProvider("gps");
      }
      if ((localObject1 != null) && (localLocation != null))
      {
        Object localObject2 = localLocation;
        if (((Location)localObject1).getTime() > localLocation.getTime()) {
          localObject2 = localObject1;
        }
        return (Location)localObject2;
      }
      if (localObject1 != null) {}
      for (;;)
      {
        return (Location)localObject1;
        localObject1 = localLocation;
      }
    }
  }
  
  private Location getLastKnownLocationForProvider(String paramString)
  {
    if (mLocationManager != null) {
      try
      {
        if (mLocationManager.isProviderEnabled(paramString))
        {
          paramString = mLocationManager.getLastKnownLocation(paramString);
          return paramString;
        }
      }
      catch (Exception paramString)
      {
        Log.d("TwilightManager", "Failed to get last known location", paramString);
      }
    }
    return null;
  }
  
  private boolean isStateValid(TwilightManager.TwilightState paramTwilightState)
  {
    return (paramTwilightState != null) && (nextUpdate > System.currentTimeMillis());
  }
  
  private void updateState(Location paramLocation)
  {
    TwilightManager.TwilightState localTwilightState = sTwilightState;
    long l1 = System.currentTimeMillis();
    TwilightCalculator localTwilightCalculator = TwilightCalculator.getInstance();
    localTwilightCalculator.calculateTwilight(l1 - 86400000L, paramLocation.getLatitude(), paramLocation.getLongitude());
    long l2 = sunset;
    localTwilightCalculator.calculateTwilight(l1, paramLocation.getLatitude(), paramLocation.getLongitude());
    if (state == 1) {}
    long l3;
    long l4;
    long l5;
    for (boolean bool = true;; bool = false)
    {
      l3 = sunrise;
      l4 = sunset;
      localTwilightCalculator.calculateTwilight(86400000L + l1, paramLocation.getLatitude(), paramLocation.getLongitude());
      l5 = sunrise;
      if ((l3 != -1L) && (l4 != -1L)) {
        break;
      }
      l1 = 43200000L + l1;
      isNight = bool;
      yesterdaySunset = l2;
      todaySunrise = l3;
      todaySunset = l4;
      tomorrowSunrise = l5;
      nextUpdate = l1;
      return;
    }
    if (l1 > l4) {
      l1 = 0L + l5;
    }
    for (;;)
    {
      l1 += 60000L;
      break;
      if (l1 > l3) {
        l1 = 0L + l4;
      } else {
        l1 = 0L + l3;
      }
    }
  }
  
  boolean isNight()
  {
    TwilightManager.TwilightState localTwilightState = sTwilightState;
    if (isStateValid(localTwilightState)) {
      return isNight;
    }
    Location localLocation = getLastKnownLocation();
    if (localLocation != null)
    {
      updateState(localLocation);
      return isNight;
    }
    Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
    int i = Calendar.getInstance().get(11);
    return (i < 6) || (i >= 22);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.TwilightManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */