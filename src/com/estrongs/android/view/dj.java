package com.estrongs.android.view;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.DetailedState;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.ftp.ESFtpService;
import com.estrongs.android.ftp.k;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.widget.HeaderGridView;
import com.estrongs.fs.h;
import com.estrongs.fs.util.a.a;
import java.lang.reflect.Field;

public class dj
  extends aw
{
  boolean a = false;
  private TextView ai;
  private EditText aj;
  private TextView ak;
  private Button al;
  private TextView am;
  private WifiManager an;
  private IntentFilter ao;
  private IntentFilter ap;
  private BroadcastReceiver aq;
  private BroadcastReceiver ar;
  private boolean as = false;
  private boolean at = false;
  private View b;
  private al c;
  private ImageView d;
  
  public dj(Activity paramActivity, a parama, cb paramcb)
  {
    super(paramActivity, parama, paramcb);
  }
  
  private void a(NetworkInfo.DetailedState paramDetailedState)
  {
    if (paramDetailedState == NetworkInfo.DetailedState.DISCONNECTED)
    {
      if (!at)
      {
        c(false);
        q();
      }
      as = false;
    }
    while (paramDetailedState != NetworkInfo.DetailedState.CONNECTED) {
      return;
    }
    a(r());
    p();
    as = true;
  }
  
  private void a(String paramString)
  {
    a = true;
    am.setText(paramString);
    d.setImageDrawable(c.a(2130838005));
    al.setTextColor(-16777216);
    al.setEnabled(true);
    al.setText(2131427673);
    ak.setText(2131427676);
    aj.setVisibility(4);
  }
  
  private void a(String paramString1, String paramString2)
  {
    am.setText(paramString1);
    d.setImageDrawable(c.a(2130838005));
    al.setTextColor(-16777216);
    al.setEnabled(true);
    al.setText(2131427674);
    ak.setText(l(2131427677));
    aj.setText(paramString2);
    aj.setVisibility(0);
  }
  
  private void b(int paramInt)
  {
    try
    {
      int i = an.getClass().getField("WIFI_AP_STATE_ENABLED").getInt(an);
      int j = an.getClass().getField("WIFI_AP_STATE_DISABLED").getInt(an);
      if (paramInt == i)
      {
        a(l(2131428291));
        p();
        at = true;
        return;
      }
      if (paramInt == j)
      {
        if (!a)
        {
          c(false);
          q();
        }
        at = false;
        return;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private void b(Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if ("android.net.wifi.supplicant.STATE_CHANGE".equals(str)) {
      a(WifiInfo.getDetailedStateOf((SupplicantState)paramIntent.getParcelableExtra("newState")));
    }
    do
    {
      return;
      if ("android.net.wifi.STATE_CHANGE".equals(str))
      {
        a(((NetworkInfo)paramIntent.getParcelableExtra("networkInfo")).getDetailedState());
        return;
      }
    } while (!"android.net.wifi.RSSI_CHANGED".equals(str));
    a(null);
  }
  
  private void c(boolean paramBoolean)
  {
    Object localObject;
    String str1;
    String str2;
    String str3;
    int i;
    if (paramBoolean)
    {
      localObject = ad.a(ad);
      str1 = ((ad)localObject).S();
      str2 = ((ad)localObject).T();
      str3 = ((ad)localObject).U();
      i = ((ad)localObject).V();
    }
    try
    {
      localObject = k.a();
      ((k)localObject).a(ad, new do(this, (k)localObject, str2, str1, i, str3));
      return;
    }
    catch (Exception localException) {}
    a(ad);
    return;
  }
  
  private void p()
  {
    try
    {
      k localk = k.a();
      localk.a(ad, new dn(this, localk));
      return;
    }
    catch (Exception localException) {}
  }
  
  private void q()
  {
    a = false;
    am.setText(2131427675);
    d.setImageDrawable(c.a(2130838004));
    al.setEnabled(true);
    al.setText(2131427672);
    ak.setText(2131427676);
    aj.setVisibility(4);
  }
  
  private String r()
  {
    if (an == null) {
      an = ((WifiManager)ad.getSystemService("wifi"));
    }
    WifiInfo localWifiInfo = an.getConnectionInfo();
    String str = l(2131427484);
    if (localWifiInfo != null) {
      str = localWifiInfo.getSSID();
    }
    return str;
  }
  
  public void a(Context paramContext)
  {
    if (paramContext == null) {
      Log.e("ESFtpServer", "Failed to closeFtpServer - context is null.");
    }
    try
    {
      k localk = k.a();
      if (localk.g())
      {
        localk.c();
        paramContext.stopService(new Intent(paramContext, ESFtpService.class));
        if (at)
        {
          a(l(2131428291));
          return;
        }
        a(r());
        return;
      }
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  protected void a(h paramh, TypedMap paramTypedMap)
  {
    if (H != null) {
      H.a(this, true);
    }
  }
  
  public void a_()
  {
    super.a_();
    ad.unregisterReceiver(aq);
    try
    {
      ad.unregisterReceiver(ar);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void b(boolean paramBoolean) {}
  
  public String c()
  {
    return "remote://";
  }
  
  protected void i()
  {
    c = al.a(ad);
    g.setVisibility(8);
    b = g.a(ad).inflate(2130903134, null);
    Object localObject1 = (ViewGroup)g.getParent();
    Object localObject2 = new ViewGroup.LayoutParams(-1, -1);
    ((ViewGroup)localObject1).addView(b, (ViewGroup.LayoutParams)localObject2);
    ((ViewGroup)localObject1).removeView(g);
    d = ((ImageView)b.findViewById(2131362092));
    d.setImageDrawable(c.a(2130838004));
    ai = ((TextView)b.findViewById(2131362338));
    ai.setTextColor(c.i());
    am = ((TextView)b.findViewById(2131362071));
    am.setTextColor(c.i());
    ak = ((TextView)b.findViewById(2131362339));
    ak.setTextColor(c.i());
    al = ((Button)b.findViewById(2131362341));
    al.setOnClickListener(new dk(this));
    aj = ((EditText)b.findViewById(2131362340));
    aj.setVisibility(4);
    an = ((WifiManager)ad.getSystemService("wifi"));
    ao = new IntentFilter();
    ao.addAction("android.net.wifi.supplicant.STATE_CHANGE");
    ao.addAction("android.net.wifi.STATE_CHANGE");
    ao.addAction("android.net.wifi.RSSI_CHANGED");
    aq = new dl(this);
    ad.registerReceiver(aq, ao);
    try
    {
      ar = new dm(this);
      localObject2 = (ConnectivityManager)ad.getSystemService("connectivity");
      localObject1 = (String)an.getClass().getField("WIFI_AP_STATE_CHANGED_ACTION").get(an);
      localObject2 = (String)localObject2.getClass().getField("ACTION_TETHER_STATE_CHANGED").get(localObject2);
      ap = new IntentFilter((String)localObject1);
      ap.addAction((String)localObject2);
      ad.registerReceiver(ar, ap);
      p();
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
  
  public void l()
  {
    super.l();
    p();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.dj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */