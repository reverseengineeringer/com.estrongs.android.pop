package com.dianxinos.dxservice.stat;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.dianxinos.DXStatService.a.a;
import com.dianxinos.dxservice.a.c;
import com.dianxinos.dxservice.a.e;
import com.dianxinos.dxservice.a.h;

final class af
{
  private final Context a;
  private final Runnable b = new ag(this);
  private IntentFilter c = null;
  private BroadcastReceiver d = null;
  private int e = 0;
  private PhoneStateListener f = null;
  
  public af(Context paramContext)
  {
    a = paramContext;
  }
  
  private boolean a(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return paramString2 == null;
    }
    return paramString1.equals(paramString2);
  }
  
  private String b(String paramString1, String paramString2)
  {
    if (!TextUtils.isEmpty(paramString2)) {
      paramString1 = c.a(paramString2);
    }
    return paramString1;
  }
  
  private void c()
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)a.getSystemService("phone");
    f = new ah(this);
    localTelephonyManager.listen(f, 1);
  }
  
  private void d()
  {
    String str = a.getSharedPreferences("h", 1).getString("d", "");
    if (c == null)
    {
      c = new IntentFilter();
      if (TextUtils.isEmpty(str)) {
        c.addAction("android.net.wifi.WIFI_STATE_CHANGED");
      }
    }
    if (d == null) {
      d = new ai(this);
    }
    a.registerReceiver(d, c);
  }
  
  private void e()
  {
    if (d != null) {
      a.unregisterReceiver(d);
    }
  }
  
  private void f()
  {
    if (f != null) {
      ((TelephonyManager)a.getSystemService("phone")).listen(f, 0);
    }
  }
  
  private void g()
  {
    if (c.c) {
      Log.d("stat.HwInfoService", "Update CarrierInfo!");
    }
    SharedPreferences localSharedPreferences = a.getSharedPreferences("h", 1);
    String str1 = localSharedPreferences.getString("mn", "");
    String str2 = a.o(a);
    if (!a(str1, str2)) {
      new Thread(new aj(this, localSharedPreferences, str2)).start();
    }
  }
  
  private void h()
  {
    if (c.c) {
      Log.d("stat.HwInfoService", "updateWifiInfo()");
    }
    Object localObject = a.getSharedPreferences("h", 1);
    String str2 = ((SharedPreferences)localObject).getString("d", "");
    String str1 = b(str2, a.b(a));
    if (!a(str2, str1))
    {
      localObject = ((SharedPreferences)localObject).edit();
      ((SharedPreferences.Editor)localObject).putString("d", str1);
      c.a((SharedPreferences.Editor)localObject);
      if (c.d) {
        Log.i("stat.HwInfoService", "Retrieved hw info for Phone: WifiMac[" + str1 + "]");
      }
      h.a(a).c();
    }
  }
  
  private void i()
  {
    if (c.c) {
      Log.d("stat.HwInfoService", "Update Preferences!");
    }
    Object localObject = a.getSharedPreferences("h", 1);
    String str21 = ((SharedPreferences)localObject).getString("b", "");
    String str22 = ((SharedPreferences)localObject).getString("c", "");
    String str1 = ((SharedPreferences)localObject).getString("m", "");
    String str2 = ((SharedPreferences)localObject).getString("a", "");
    String str3 = ((SharedPreferences)localObject).getString("d", "");
    String str4 = ((SharedPreferences)localObject).getString("f", "");
    String str5 = ((SharedPreferences)localObject).getString("k", "");
    String str6 = ((SharedPreferences)localObject).getString("g", "");
    String str7 = ((SharedPreferences)localObject).getString("h", "");
    String str8 = ((SharedPreferences)localObject).getString("i", "");
    String str9 = ((SharedPreferences)localObject).getString("j", "");
    String str10 = b(str21, a.c(a));
    String str11 = b(str22, a.m(a));
    String str12 = b(str1, a.o(a));
    String str13 = b(str2, a.d(a));
    String str14 = b(str3, a.b(a));
    String str15 = b(str4, a.n(a));
    String str16 = b(str5, a.p(a));
    String str17 = b(str6, a.e(a));
    String str18 = b(str7, a.q(a));
    String str19 = b(str8, a.f(a));
    String str20 = b(str9, a.k(a));
    if (c.d) {
      Log.i("stat.HwInfoService", "Retrieved hw info for Phone: [" + str13 + "]" + ", SN[" + str10 + "], IMEI[" + str11 + "]" + ", WifiMac[" + str14 + "], IMSI[" + str15 + "], AndroidVersion[" + str16 + "], carrier[" + str12 + "], ram[" + str17 + "], DPI[" + str18 + "], resolution[" + str19 + "], manufacturer[" + str20 + "]");
    }
    if ((!a(str21, str10)) || (!a(str22, str11)) || (!a(str1, str12)) || (!a(str2, str13)) || (!a(str3, str14)) || (!a(str4, str15)) || (!a(str5, str16)) || (!a(str6, str17)) || (!a(str7, str18)) || (!a(str8, str19)) || (!a(str9, str20)))
    {
      localObject = ((SharedPreferences)localObject).edit();
      ((SharedPreferences.Editor)localObject).putString("a", str13);
      ((SharedPreferences.Editor)localObject).putString("b", str10);
      ((SharedPreferences.Editor)localObject).putString("c", str11);
      ((SharedPreferences.Editor)localObject).putString("d", str14);
      ((SharedPreferences.Editor)localObject).putString("f", str15);
      ((SharedPreferences.Editor)localObject).putString("k", str16);
      ((SharedPreferences.Editor)localObject).putString("m", str12);
      ((SharedPreferences.Editor)localObject).putString("g", str17);
      ((SharedPreferences.Editor)localObject).putString("h", str18);
      ((SharedPreferences.Editor)localObject).putString("i", str19);
      ((SharedPreferences.Editor)localObject).putString("j", str20);
      c.a((SharedPreferences.Editor)localObject);
      if ((!a(str1, str12)) || (!a(str2, str13)) || (!a(str3, str14)) || (!a(str4, str15)) || (!a(str5, str16)) || (!a(str6, str17)) || (!a(str7, str18)) || (!a(str8, str19)) || (!a(str9, str20))) {
        h.a(a).c();
      }
    }
  }
  
  public void a()
  {
    if (c.c) {
      Log.d("stat.HwInfoService", "Start!");
    }
    e.a(b);
    c();
    d();
  }
  
  public void b()
  {
    if (c.c) {
      Log.d("stat.HwInfoService", "Shutdown!");
    }
    e();
    f();
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */