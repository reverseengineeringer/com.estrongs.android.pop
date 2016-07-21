package com.facebook.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build;
import android.util.Log;
import com.facebook.ads.internal.util.g;
import com.facebook.ads.internal.util.g.a;
import com.facebook.ads.internal.util.s;
import java.util.Collection;
import java.util.HashSet;
import java.util.UUID;

public class AdSettings
{
  public static final String TAG = AdSettings.class.getSimpleName();
  static volatile boolean a = false;
  private static final Collection<String> b;
  private static final Collection<String> c;
  private static String d = null;
  private static boolean e = false;
  private static String f = null;
  
  static
  {
    b = new HashSet();
    c = new HashSet();
    c.add("sdk");
    c.add("google_sdk");
    c.add("vbox86p");
    c.add("vbox86tp");
  }
  
  private static void a(String paramString)
  {
    if (a) {
      return;
    }
    a = true;
    Log.d(TAG, "Test mode device hash: " + paramString);
    Log.d(TAG, "When testing your app with Facebook's ad units you must specify the device hashed ID to ensure the delivery of test ads, add the following code before loading an ad: AdSettings.addTestDevice(\"" + paramString + "\");");
  }
  
  public static void addTestDevice(String paramString)
  {
    b.add(paramString);
  }
  
  public static void addTestDevices(Collection<String> paramCollection)
  {
    b.addAll(paramCollection);
  }
  
  public static void clearTestDevices()
  {
    b.clear();
  }
  
  public static String getUrlPrefix()
  {
    return d;
  }
  
  public static boolean isChildDirected()
  {
    return e;
  }
  
  public static boolean isTestMode(Context paramContext)
  {
    if (c.contains(Build.PRODUCT)) {
      return true;
    }
    SharedPreferences localSharedPreferences;
    if (f == null)
    {
      localSharedPreferences = paramContext.getSharedPreferences("FBAdPrefs", 0);
      f = localSharedPreferences.getString("deviceIdHash", null);
      if (s.a(f))
      {
        paramContext = g.a(paramContext.getContentResolver());
        if (s.a(b)) {
          break label122;
        }
        f = s.b(b);
      }
    }
    for (;;)
    {
      localSharedPreferences.edit().putString("deviceIdHash", f).apply();
      if (b.contains(f)) {
        break;
      }
      a(f);
      return false;
      label122:
      if (!s.a(a)) {
        f = s.b(a);
      } else {
        f = s.b(UUID.randomUUID().toString());
      }
    }
  }
  
  public static void setIsChildDirected(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public static void setUrlPrefix(String paramString)
  {
    d = paramString;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.AdSettings
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */