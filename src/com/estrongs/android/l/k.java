package com.estrongs.android.l;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.NetworkInfo;
import android.net.NetworkInfo.DetailedState;
import android.net.wifi.ScanResult;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class k
{
  public static String a = "ES_";
  private final IntentFilter b;
  private final BroadcastReceiver c;
  private final o d;
  private WifiManager e;
  private h f;
  private List<m> g;
  private WifiInfo h;
  private boolean i = false;
  private Context j;
  private q k;
  private n l;
  
  public k(Context paramContext, n paramn, j paramj, q paramq)
  {
    j = paramContext;
    l = paramn;
    k = paramq;
    b = new IntentFilter();
    b.addAction("android.net.wifi.WIFI_STATE_CHANGED");
    b.addAction("android.net.wifi.SCAN_RESULTS");
    b.addAction("android.net.wifi.NETWORK_IDS_CHANGED");
    b.addAction("android.net.wifi.supplicant.STATE_CHANGE");
    b.addAction("android.net.wifi.STATE_CHANGE");
    b.addAction("android.net.wifi.RSSI_CHANGED");
    c = new l(this);
    d = new o(this, null);
    e = ((WifiManager)j.getSystemService("wifi"));
    f = new h(j, paramj);
    f.a();
    g = new ArrayList();
  }
  
  public static String a(String paramString)
  {
    if (paramString != null) {
      return paramString;
    }
    return "";
  }
  
  private void a(Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if ("android.net.wifi.WIFI_STATE_CHANGED".equals(str)) {
      c(paramIntent.getIntExtra("wifi_state", 4));
    }
    do
    {
      return;
      if ("android.net.wifi.SCAN_RESULTS".equals(str))
      {
        f();
        return;
      }
      if ("android.net.wifi.NETWORK_IDS_CHANGED".equals(str))
      {
        f();
        return;
      }
      if ("android.net.wifi.supplicant.STATE_CHANGE".equals(str))
      {
        a(WifiInfo.getDetailedStateOf((SupplicantState)paramIntent.getParcelableExtra("newState")));
        return;
      }
      if ("android.net.wifi.STATE_CHANGE".equals(str))
      {
        a(((NetworkInfo)paramIntent.getParcelableExtra("networkInfo")).getDetailedState());
        return;
      }
    } while (!"android.net.wifi.RSSI_CHANGED".equals(str));
    a(null);
  }
  
  private void a(NetworkInfo.DetailedState paramDetailedState)
  {
    if (!e.isWifiEnabled())
    {
      d.b();
      return;
    }
    if (paramDetailedState == NetworkInfo.DetailedState.OBTAINING_IPADDR) {
      d.b();
    }
    for (;;)
    {
      h = e.getConnectionInfo();
      k.a(h, paramDetailedState);
      int m = g.size() - 1;
      while (m >= 0)
      {
        ((m)g.get(m)).a(h, paramDetailedState);
        m -= 1;
      }
      d.a();
    }
    if ((i) && ((paramDetailedState == NetworkInfo.DetailedState.CONNECTED) || (paramDetailedState == NetworkInfo.DetailedState.DISCONNECTED) || (paramDetailedState == NetworkInfo.DetailedState.FAILED))) {
      i = false;
    }
    f();
  }
  
  private void c(int paramInt)
  {
    if (paramInt == 3)
    {
      d.a();
      f();
    }
    do
    {
      return;
      d.b();
      g.clear();
    } while (l == null);
    l.d();
  }
  
  private void f()
  {
    if (l == null) {
      return;
    }
    Object localObject1 = g.iterator();
    while (((Iterator)localObject1).hasNext()) {
      nexta = true;
    }
    localObject1 = e.getScanResults();
    if (localObject1 != null) {
      localObject1 = ((List)localObject1).iterator();
    }
    label136:
    label313:
    label314:
    for (;;)
    {
      Object localObject2;
      int m;
      if (((Iterator)localObject1).hasNext())
      {
        localObject2 = (ScanResult)((Iterator)localObject1).next();
        if ((SSID == null) || (SSID.length() == 0) || (capabilities.contains("[IBSS]")) || (capabilities.contains("EAP"))) {
          continue;
        }
        Iterator localIterator = g.iterator();
        m = 0;
        if (localIterator.hasNext())
        {
          m localm = (m)localIterator.next();
          if (!localm.a((ScanResult)localObject2)) {
            break label313;
          }
          a = false;
          m = 1;
        }
      }
      for (;;)
      {
        break label136;
        if (m != 0) {
          break label314;
        }
        localObject2 = new m(j, this, (ScanResult)localObject2);
        if ((((m)localObject2).a() != null) && (((m)localObject2).a().startsWith(a))) {
          g.add(0, localObject2);
        }
        for (;;)
        {
          a = false;
          break;
          g.add(localObject2);
        }
        m = g.size() - 1;
        while (m >= 0)
        {
          if (g.get(m)).a == true) {
            g.remove(m);
          }
          m -= 1;
        }
        l.d();
        return;
      }
    }
  }
  
  public void a()
  {
    f.a();
    j.registerReceiver(c, b);
  }
  
  public boolean a(WifiConfiguration paramWifiConfiguration)
  {
    boolean bool = false;
    List localList = e.getConfiguredNetworks();
    WifiConfiguration localWifiConfiguration = paramWifiConfiguration;
    int m;
    if (localList != null)
    {
      m = 0;
      localWifiConfiguration = paramWifiConfiguration;
      if (m < localList.size())
      {
        localWifiConfiguration = (WifiConfiguration)localList.get(m);
        if ((SSID == null) || (!SSID.equals(SSID))) {
          break label197;
        }
        allowedKeyManagement = allowedKeyManagement;
        preSharedKey = preSharedKey;
      }
      if (m != localList.size()) {
        break label204;
      }
      localWifiConfiguration = paramWifiConfiguration;
    }
    label197:
    label204:
    for (;;)
    {
      int n = e.updateNetwork(localWifiConfiguration);
      m = n;
      if (n == -1) {
        m = e.addNetwork(localWifiConfiguration);
      }
      if (m != -1)
      {
        e.enableNetwork(m, false);
        networkId = m;
        priority = 1;
        e.updateNetwork(localWifiConfiguration);
        e.enableNetwork(m, true);
        e.reconnect();
        i = true;
        bool = true;
      }
      return bool;
      m += 1;
      break;
    }
  }
  
  public String[] a(int paramInt)
  {
    return ((m)g.get(paramInt)).b();
  }
  
  public m b(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt <= g.size() - 1)) {
      return (m)g.get(paramInt);
    }
    return null;
  }
  
  public void b()
  {
    f.b();
    j.unregisterReceiver(c);
    d.b();
  }
  
  public void c()
  {
    f.a(true);
    d.a();
  }
  
  public void d()
  {
    d.b();
    f.a(false);
  }
  
  public int e()
  {
    return g.size();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.l.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */