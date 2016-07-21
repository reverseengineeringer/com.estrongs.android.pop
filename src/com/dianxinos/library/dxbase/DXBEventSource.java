package com.dianxinos.library.dxbase;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

public class DXBEventSource
{
  static WeakHashMap<h, g> a = new WeakHashMap();
  private static final boolean b;
  private static final String[] c = { "android.net.conn.CONNECTIVITY_CHANGE", "android.net.wifi.WIFI_STATE_CHANGED", "android.intent.action.TIME_TICK", "android.intent.action.TIME_SET", "android.intent.action.LOCALE_CHANGED", "android.intent.action.TIMEZONE_CHANGED", "android.intent.action.BATTERY_CHANGED", "android.intent.action.BATTERY_LOW", "android.intent.action.BATTERY_OKAY", "android.intent.action.USER_PRESENT", "android.intent.action.ACTION_POWER_CONNECTED", "android.intent.action.ACTION_POWER_DISCONNECTED", "android.intent.action.HEADSET_PLUG", "android.intent.action.AIRPLANE_MODE", "android.intent.action.SCREEN_ON", "android.intent.action.SCREEN_OFF", "android.intent.action.ACTION_SHUTDOWN", "android.intent.action.WALLPAPER_CHANGED" };
  private static final String[] d = { "android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_CHANGED", "android.intent.action.PACKAGE_DATA_CLEARED", "android.intent.action.PACKAGE_REMOVED", "android.intent.action.PACKAGE_REPLACED", "android.intent.action.PACKAGE_RESTARTED" };
  private static final String[] e = { "android.intent.action.MEDIA_MOUNTED", "android.intent.action.MEDIA_EJECT", "android.intent.action.MEDIA_UNMOUNTED", "android.intent.action.MEDIA_BAD_REMOVAL" };
  private static final String[] f = { "android.intent.action.ACTION_SHUTDOWN", "android.intent.action.MEDIA_EJECT" };
  private static DXBEventSource.GeneralReceiver g = new DXBEventSource.GeneralReceiver();
  private static DXBEventSource.GeneralReceiver h = new DXBEventSource.GeneralReceiver();
  private static DXBEventSource.GeneralReceiver i = new DXBEventSource.GeneralReceiver();
  private static HashMap<String, DXBEventSource.GeneralReceiver> j = new HashMap();
  private static Context k;
  private static final HashMap<String, WeakHashMap<h, g>> l = new HashMap();
  private static final HashSet<String> m = new HashSet();
  
  static
  {
    if (e.c) {}
    b = false;
  }
  
  public static void a(Context paramContext, String[] paramArrayOfString)
  {
    int i1 = 0;
    paramContext = paramContext.getApplicationContext();
    k = paramContext;
    Object localObject1 = f;
    int i2 = localObject1.length;
    int n = 0;
    while (n < i2)
    {
      localObject2 = localObject1[n];
      m.add(localObject2);
      n += 1;
    }
    localObject1 = new HashSet();
    if (paramArrayOfString != null)
    {
      i2 = paramArrayOfString.length;
      n = 0;
      while (n < i2)
      {
        ((HashSet)localObject1).add(paramArrayOfString[n]);
        n += 1;
      }
    }
    paramArrayOfString = new IntentFilter();
    Object localObject2 = c;
    i2 = localObject2.length;
    n = 0;
    Object localObject3;
    while (n < i2)
    {
      localObject3 = localObject2[n];
      if (!((HashSet)localObject1).contains(localObject3)) {
        paramArrayOfString.addAction((String)localObject3);
      }
      n += 1;
    }
    paramContext.registerReceiver(g, paramArrayOfString);
    paramArrayOfString = new IntentFilter();
    localObject2 = d;
    i2 = localObject2.length;
    n = 0;
    while (n < i2)
    {
      localObject3 = localObject2[n];
      if (!((HashSet)localObject1).contains(localObject3)) {
        paramArrayOfString.addAction((String)localObject3);
      }
      n += 1;
    }
    paramArrayOfString.addDataScheme("package");
    paramContext.registerReceiver(h, paramArrayOfString);
    paramArrayOfString = new IntentFilter();
    localObject2 = e;
    i2 = localObject2.length;
    n = i1;
    while (n < i2)
    {
      localObject3 = localObject2[n];
      if (!((HashSet)localObject1).contains(localObject3)) {
        paramArrayOfString.addAction((String)localObject3);
      }
      n += 1;
    }
    paramArrayOfString.addDataScheme("file");
    paramContext.registerReceiver(i, paramArrayOfString);
    k.a(k);
  }
  
  public static void a(Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if (b) {
      j.a("action=" + str + ", " + paramIntent);
    }
    boolean bool = m.contains(str);
    for (;;)
    {
      h localh;
      synchronized (a)
      {
        Object localObject = (WeakHashMap)l.get(str);
        if (localObject == null) {
          break;
        }
        localObject = ((WeakHashMap)localObject).keySet().iterator();
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
        localh = (h)((Iterator)localObject).next();
        if (b) {
          j.a("dispatch " + str + " to: " + localh);
        }
        if (bool) {
          localh.a(paramIntent);
        }
      }
      o.c(new f(localh, paramIntent));
    }
  }
  
  public static boolean a(h paramh, String paramString)
  {
    return a(paramh, paramString, null);
  }
  
  public static boolean a(h paramh, String paramString1, String paramString2)
  {
    return a(paramh, paramString1, paramString2, null);
  }
  
  public static boolean a(h paramh, String paramString1, String paramString2, String paramString3)
  {
    boolean bool2 = false;
    if ((paramh == null) || (paramString1 == null) || (paramString1.length() == 0))
    {
      j.c("bad parameter found");
      return false;
    }
    boolean bool1 = bool2;
    Object localObject1;
    IntentFilter localIntentFilter;
    if (paramString2 == null)
    {
      if (paramString3 != null) {
        bool1 = bool2;
      }
    }
    else if (!bool1)
    {
      localObject1 = "[" + paramString1 + "]_[" + paramString2 + "]_[" + paramString3 + "]";
      if (!j.containsKey(localObject1))
      {
        ??? = new DXBEventSource.GeneralReceiver();
        localIntentFilter = new IntentFilter();
        localIntentFilter.addAction(paramString1);
        if (paramString2 != null) {
          localIntentFilter.addCategory(paramString2);
        }
        if (paramString3 != null) {
          break label473;
        }
        k.registerReceiver((BroadcastReceiver)???, localIntentFilter);
        label154:
        j.put(localObject1, ???);
        j.a("register dynamic receiver[" + j.size() + "]: " + (String)localObject1);
      }
    }
    label473:
    label489:
    for (;;)
    {
      synchronized (a)
      {
        paramString2 = (g)a.get(paramh);
        if (paramString2 != null) {
          break label489;
        }
        paramString2 = new g();
        a.put(paramh, paramString2);
        a = new WeakReference(paramh);
        if (!b.contains(paramString1)) {
          b.add(paramString1);
        }
        localObject1 = (WeakHashMap)l.get(paramString1);
        paramString3 = (String)localObject1;
        if (localObject1 == null)
        {
          localObject1 = new WeakHashMap();
          l.put(paramString1, localObject1);
          paramString3 = (String)localObject1;
          if (b)
          {
            j.a("register target: " + paramString1 + " , " + localObject1);
            paramString3 = (String)localObject1;
          }
        }
        if (!paramString3.containsKey(paramh)) {
          paramString3.put(paramh, paramString2);
        }
        if (b) {
          j.a("register listener: " + paramh + " to target data: " + paramString2);
        }
        return true;
      }
      bool2 = a(paramString1, c);
      if (bool2) {}
      for (;;)
      {
        bool1 = bool2;
        if (bool2) {
          break;
        }
        bool1 = a(paramString1, e);
        break;
        bool2 = a(paramString1, d);
      }
      k.registerReceiver((BroadcastReceiver)???, localIntentFilter, paramString3, null);
      break label154;
    }
  }
  
  private static boolean a(String paramString, String[] paramArrayOfString)
  {
    if ((paramString == null) || (paramArrayOfString == null)) {}
    for (;;)
    {
      return false;
      int i1 = paramArrayOfString.length;
      int n = 0;
      while (n < i1)
      {
        if (paramString.equals(paramArrayOfString[n])) {
          return true;
        }
        n += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.dxbase.DXBEventSource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */