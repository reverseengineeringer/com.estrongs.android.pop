package com.facebook.ads.internal.util;

import android.hardware.Sensor;
import android.hardware.SensorManager;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class a
{
  private static SensorManager a = null;
  private static Sensor b = null;
  private static Sensor c = null;
  private static volatile float[] d;
  private static volatile float[] e;
  private static Map<String, Object> f = new ConcurrentHashMap();
  private static String[] g = { "x", "y", "z" };
  
  public static Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.putAll(f);
    a(localHashMap);
    return localHashMap;
  }
  
  private static void a(Map<String, Object> paramMap)
  {
    int j = 0;
    float[] arrayOfFloat1 = d;
    float[] arrayOfFloat2 = e;
    int k;
    int i;
    if (arrayOfFloat1 != null)
    {
      k = Math.min(g.length, arrayOfFloat1.length);
      i = 0;
      while (i < k)
      {
        paramMap.put("accelerometer_" + g[i], Float.valueOf(arrayOfFloat1[i]));
        i += 1;
      }
    }
    if (arrayOfFloat2 != null)
    {
      k = Math.min(g.length, arrayOfFloat2.length);
      i = j;
      while (i < k)
      {
        paramMap.put("rotation_" + g[i], Float.valueOf(arrayOfFloat2[i]));
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.util.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */