package com.dianxinos.lockscreen.ad;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.dianxinos.lockscreen.ad.extra.ADCardController;
import com.dianxinos.lockscreen.ad.extra.ADCardController.ADCardType;
import com.dianxinos.lockscreen.c.g;
import com.dianxinos.lockscreen.c.h;
import com.dianxinos.lockscreen.c.j;
import com.dianxinos.lockscreen.x;
import java.util.Calendar;
import java.util.Locale;
import org.json.JSONObject;

public class AdvertDataMgr
{
  private static final boolean a = g.a;
  private static AdvertDataMgr b = null;
  private Context c;
  private SharedPreferences d;
  
  private AdvertDataMgr(Context paramContext)
  {
    c = paramContext.getApplicationContext();
  }
  
  public static AdvertDataMgr a(Context paramContext)
  {
    if (b == null) {}
    try
    {
      if (b == null) {
        b = new AdvertDataMgr(paramContext);
      }
      return b;
    }
    finally {}
  }
  
  private void a(AdvertDataMgr.NetworkClass paramNetworkClass, boolean paramBoolean)
  {
    SharedPreferences localSharedPreferences = m();
    paramNetworkClass = "ad_switch_for_" + paramNetworkClass.toString();
    localSharedPreferences.edit().putBoolean(paramNetworkClass, paramBoolean).apply();
  }
  
  private boolean a(AdvertDataMgr.NetworkClass paramNetworkClass)
  {
    SharedPreferences localSharedPreferences = m();
    String str = "ad_switch_for_" + paramNetworkClass;
    if (g.a) {
      g.a("AdvertDataMgr", "ad net type:" + AdvertDataMgr.NetworkClass.access$000(paramNetworkClass) + " is open:" + localSharedPreferences.getBoolean(str, false));
    }
    if (paramNetworkClass == AdvertDataMgr.NetworkClass.NetUnknown) {
      return localSharedPreferences.getBoolean(str, false);
    }
    return localSharedPreferences.getBoolean(str, true);
  }
  
  private static AdvertDataMgr.NetworkClass b(Context paramContext)
  {
    Object localObject = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (localObject != null) {}
    for (localObject = ((ConnectivityManager)localObject).getActiveNetworkInfo(); (localObject == null) || (!((NetworkInfo)localObject).isConnected()) || (!((NetworkInfo)localObject).isAvailable()); localObject = null) {
      return AdvertDataMgr.NetworkClass.NetUnknown;
    }
    int i = ((NetworkInfo)localObject).getType();
    if (i == 1) {
      return AdvertDataMgr.NetworkClass.NetWifi;
    }
    if (i != 0) {
      return AdvertDataMgr.NetworkClass.NetUnknown;
    }
    paramContext = (TelephonyManager)paramContext.getSystemService("phone");
    if (paramContext != null) {}
    for (i = paramContext.getNetworkType();; i = 0) {
      switch (i)
      {
      default: 
        return AdvertDataMgr.NetworkClass.NetUnknown;
      }
    }
    return AdvertDataMgr.NetworkClass.Net2G;
    return AdvertDataMgr.NetworkClass.Net3G;
    return AdvertDataMgr.NetworkClass.Net4G;
  }
  
  private void b(int paramInt)
  {
    m().edit().putInt("ad_show_times", paramInt).apply();
  }
  
  private void f(long paramLong)
  {
    m().edit().putLong("new_user_protect", paramLong).apply();
  }
  
  private void g(long paramLong)
  {
    m().edit().putLong("ad_close_protect", paramLong).apply();
  }
  
  private long j()
  {
    return m().getLong("new_user_protect", 0L);
  }
  
  private long k()
  {
    return m().getLong("ad_close_protect", 21600000L);
  }
  
  private int l()
  {
    return m().getInt("ad_show_times", 999);
  }
  
  private SharedPreferences m()
  {
    if (d == null) {}
    try
    {
      if (d == null) {
        d = c.getSharedPreferences("ls_sp_date", 0);
      }
      return d;
    }
    finally {}
  }
  
  private void n()
  {
    if (o() != -1) {
      return;
    }
    if (a) {
      Log.i("AdvertDataMgr", "do real ad pre refresh");
    }
    c.a(c).a().a();
  }
  
  private int o()
  {
    if (!a()) {
      return 6;
    }
    if (!h.c(c)) {
      return 3;
    }
    if (!b()) {
      return 4;
    }
    if (e()) {
      return 5;
    }
    if (c()) {
      return 1;
    }
    if (d()) {
      return 2;
    }
    return -1;
  }
  
  public void a(int paramInt)
  {
    SharedPreferences.Editor localEditor = m().edit();
    localEditor.putInt("recommend_show_times", paramInt);
    localEditor.apply();
  }
  
  public void a(long paramLong)
  {
    m().edit().putLong("start_screen_lock_time", paramLong).apply();
  }
  
  public void a(JSONObject paramJSONObject)
  {
    paramJSONObject = a.a(paramJSONObject);
    if (paramJSONObject == null) {
      return;
    }
    if (a) {
      Log.d("AdvertDataMgr", "configurtion after parse: " + paramJSONObject.toString());
    }
    a(AdvertDataMgr.NetworkClass.NetWifi, a);
    a(AdvertDataMgr.NetworkClass.Net2G, b);
    a(AdvertDataMgr.NetworkClass.Net3G, c);
    a(AdvertDataMgr.NetworkClass.Net4G, d);
    a(AdvertDataMgr.NetworkClass.NetUnknown, e);
    f(f);
    g(g);
    b(h);
    a(i);
    c(k);
    d(l);
    a(j);
    e(m);
  }
  
  public void a(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = m().edit();
    localEditor.putBoolean("recommend_switch", paramBoolean);
    localEditor.apply();
  }
  
  public boolean a()
  {
    return com.dianxinos.lockscreen.a.a(c).b() > 0L;
  }
  
  public void b(long paramLong)
  {
    m().edit().putLong("start_screen_ad_switch_time", paramLong).apply();
  }
  
  public boolean b()
  {
    AdvertDataMgr.NetworkClass localNetworkClass = b(c);
    if (g.a) {
      g.a("AdvertDataMgr", "ad net type:" + AdvertDataMgr.NetworkClass.access$000(localNetworkClass));
    }
    return (localNetworkClass != null) && (a(localNetworkClass));
  }
  
  public void c(long paramLong)
  {
    SharedPreferences.Editor localEditor = m().edit();
    localEditor.putLong("recommend_new_pro_time", paramLong);
    localEditor.apply();
  }
  
  public boolean c()
  {
    long l1 = m().getLong("start_screen_lock_time", -1L);
    if (l1 == -1L) {
      if (g.a) {
        g.a("AdvertDataMgr", "ad never open lockscreen, new user protect");
      }
    }
    long l2;
    do
    {
      return true;
      l2 = System.currentTimeMillis();
      if (l2 < l1)
      {
        if (g.a) {
          g.a("AdvertDataMgr", "ad user changed the time, new user protect");
        }
        a(l2 - j());
        return true;
      }
      if (g.a) {
        g.a("AdvertDataMgr", "ad new user protect, protect time:" + j() + ";span time:" + (l2 - l1));
      }
    } while (l2 - l1 < j());
    return false;
  }
  
  public void d(long paramLong)
  {
    SharedPreferences.Editor localEditor = m().edit();
    localEditor.putLong("recommend_int_time", paramLong);
    localEditor.apply();
  }
  
  public boolean d()
  {
    long l1 = m().getLong("start_screen_ad_switch_time", -1L);
    long l2 = System.currentTimeMillis();
    long l3 = k();
    if (g.a) {
      g.a("AdvertDataMgr", "ad close time, span time:" + (l2 - l1) + ";protect time:" + l3);
    }
    return l2 - l1 < l3;
  }
  
  public void e(long paramLong)
  {
    SharedPreferences.Editor localEditor = m().edit();
    localEditor.putLong("dlg_int_time", paramLong);
    localEditor.apply();
  }
  
  public boolean e()
  {
    int i = Calendar.getInstance(Locale.getDefault()).get(6);
    SharedPreferences localSharedPreferences = m();
    if (localSharedPreferences.getInt("show_ad_day_of_year", -1) != i)
    {
      if (g.a) {
        g.a("AdvertDataMgr", "ad is other day, count reset :" + i);
      }
      localSharedPreferences.edit().putInt("show_ad_day_of_year", i).apply();
      localSharedPreferences.edit().putInt("ad_showed_times", 0).apply();
    }
    int j;
    do
    {
      return false;
      i = localSharedPreferences.getInt("ad_showed_times", 0);
      j = l();
      if (g.a) {
        g.a("AdvertDataMgr", "ad current time:" + i + ";limit times:" + j);
      }
    } while (i < j);
    return true;
  }
  
  public void f()
  {
    int i = Calendar.getInstance(Locale.getDefault()).get(6);
    SharedPreferences localSharedPreferences = m();
    if (localSharedPreferences.getInt("show_ad_day_of_year", -1) != i)
    {
      localSharedPreferences.edit().putInt("show_ad_day_of_year", i).apply();
      localSharedPreferences.edit().putInt("ad_showed_times", 1).apply();
      return;
    }
    i = localSharedPreferences.getInt("ad_showed_times", 0);
    localSharedPreferences.edit().putInt("ad_showed_times", i + 1).apply();
  }
  
  public void g()
  {
    j.a().a(new b(this));
  }
  
  public void h()
  {
    int i = o();
    if (i != -1)
    {
      x.a(c.getApplicationContext(), "real", i);
      return;
    }
    if (a) {
      Log.i("AdvertDataMgr", "do real ad load");
    }
    c.a(c).a().a(ADCardController.ADCardType.SCREENLOCKBIGCARD);
  }
  
  public boolean i()
  {
    return (h.c(c)) && (b()) && (!e()) && (!c()) && (!d());
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ad.AdvertDataMgr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */