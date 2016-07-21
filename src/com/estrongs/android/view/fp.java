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
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.ftp.ESFtpService;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.l;
import com.estrongs.fs.h;
import com.estrongs.fs.util.a.a;
import java.lang.reflect.Field;

public class fp
  extends cr
{
  boolean a = false;
  private EditText al;
  private TextView am;
  private Button an;
  private TextView ao;
  private WifiManager ap;
  private ConnectivityManager aq;
  private IntentFilter ar;
  private IntentFilter as;
  private BroadcastReceiver at;
  private BroadcastReceiver au;
  private boolean av = false;
  private View b;
  private at c;
  private ImageView d;
  private TextView e;
  
  public fp(Activity paramActivity, a parama, dw paramdw)
  {
    super(paramActivity, parama, paramdw);
  }
  
  private void a(NetworkInfo.DetailedState paramDetailedState)
  {
    boolean bool = v();
    if ((bool) || (paramDetailedState == NetworkInfo.DetailedState.CONNECTED)) {
      if (bool)
      {
        b(j(2131232169));
        s();
        a = true;
      }
    }
    while (paramDetailedState != NetworkInfo.DetailedState.DISCONNECTED) {
      for (;;)
      {
        return;
        b(u());
      }
    }
    if (!av)
    {
      c(false);
      t();
    }
    a = false;
  }
  
  private void a(String paramString1, String paramString2)
  {
    ao.setText(paramString1);
    d.setImageDrawable(c.a(2130838342));
    an.setTextColor(-1);
    an.setEnabled(true);
    an.setText(2131231526);
    am.setText(j(2131231521));
    al.setText(paramString2);
    al.setVisibility(0);
  }
  
  private void b(Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if ("android.net.wifi.supplicant.STATE_CHANGE".equals(str)) {
      a(WifiInfo.getDetailedStateOf((SupplicantState)paramIntent.getParcelableExtra("newState")));
    }
    do
    {
      do
      {
        return;
        if ("android.net.wifi.STATE_CHANGE".equals(str))
        {
          a(((NetworkInfo)paramIntent.getParcelableExtra("networkInfo")).getDetailedState());
          return;
        }
        if ("android.net.wifi.RSSI_CHANGED".equals(str))
        {
          a(null);
          return;
        }
      } while (!"android.net.conn.CONNECTIVITY_CHANGE".equals(str));
      if (aq == null) {
        aq = ((ConnectivityManager)ag.getSystemService("connectivity"));
      }
      paramIntent = aq.getActiveNetworkInfo();
      if (paramIntent == null) {
        break;
      }
    } while (paramIntent.getType() != 9);
    a(paramIntent.getDetailedState());
    return;
    a(NetworkInfo.DetailedState.DISCONNECTED);
  }
  
  private void b(String paramString)
  {
    a = true;
    ao.setText(paramString);
    d.setImageDrawable(c.a(2130838342));
    an.setTextColor(-1);
    an.setEnabled(true);
    an.setText(2131231523);
    am.setText(2131231519);
    al.setVisibility(4);
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
      localObject = ad.a(ag);
      str1 = ((ad)localObject).T();
      str2 = ((ad)localObject).U();
      str3 = ((ad)localObject).V();
      i = ((ad)localObject).W();
    }
    try
    {
      localObject = com.estrongs.android.ftp.k.a();
      ((com.estrongs.android.ftp.k)localObject).a(ag, new fu(this, (com.estrongs.android.ftp.k)localObject, str2, str1, i, str3));
      return;
    }
    catch (Exception localException) {}
    a(ag);
    return;
  }
  
  private void d(int paramInt)
  {
    try
    {
      int i = ap.getClass().getField("WIFI_AP_STATE_ENABLED").getInt(ap);
      int j = ap.getClass().getField("WIFI_AP_STATE_DISABLED").getInt(ap);
      if (paramInt == i)
      {
        b(j(2131231645));
        s();
        av = true;
        return;
      }
      if (paramInt == j)
      {
        if (!a)
        {
          c(false);
          t();
        }
        av = false;
        return;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private void s()
  {
    try
    {
      com.estrongs.android.ftp.k localk = com.estrongs.android.ftp.k.a();
      localk.a(ag, new ft(this, localk));
      return;
    }
    catch (Exception localException) {}
  }
  
  private void t()
  {
    a = false;
    ao.setText(2131231522);
    d.setImageDrawable(c.a(2130838341));
    an.setEnabled(true);
    an.setText(2131231525);
    am.setText(2131231519);
    al.setVisibility(4);
  }
  
  private String u()
  {
    if (ap == null) {
      ap = ((WifiManager)ag.getSystemService("wifi"));
    }
    WifiInfo localWifiInfo = ap.getConnectionInfo();
    String str = j(2131232366);
    if (localWifiInfo != null) {
      str = localWifiInfo.getSSID();
    }
    return str;
  }
  
  private boolean v()
  {
    if (aq == null) {
      aq = ((ConnectivityManager)ag.getSystemService("connectivity"));
    }
    NetworkInfo localNetworkInfo = aq.getActiveNetworkInfo();
    if ((localNetworkInfo != null) && (localNetworkInfo.getType() == 9)) {
      return localNetworkInfo.getDetailedState() == NetworkInfo.DetailedState.CONNECTED;
    }
    return false;
  }
  
  public void a(Context paramContext)
  {
    if (paramContext == null) {
      l.e("ESFtpServer", "Failed to closeFtpServer - context is null.");
    }
    try
    {
      com.estrongs.android.ftp.k localk = com.estrongs.android.ftp.k.a();
      if (!localk.g()) {
        return;
      }
      localk.c();
      paramContext.stopService(new Intent(paramContext, ESFtpService.class));
      if (v())
      {
        b(j(2131232169));
        return;
      }
      if (av)
      {
        b(j(2131231645));
        return;
      }
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
      return;
    }
    b(u());
  }
  
  protected void a(h paramh, TypedMap paramTypedMap)
  {
    if (O != null) {
      O.a(this, true);
    }
  }
  
  public void b(boolean paramBoolean) {}
  
  public String c()
  {
    return "remote://";
  }
  
  protected void i()
  {
    c = at.a(ag);
    h.setVisibility(8);
    b = com.estrongs.android.pop.esclasses.k.a(ag).inflate(2130903242, null);
    Object localObject1 = (ViewGroup)h.getParent();
    Object localObject2 = new ViewGroup.LayoutParams(-1, -1);
    ((ViewGroup)localObject1).addView(b, (ViewGroup.LayoutParams)localObject2);
    ((ViewGroup)localObject1).removeView(h);
    ((ViewGroup)m.getParent()).removeView(m);
    d = ((ImageView)b.findViewById(2131624051));
    d.setImageDrawable(c.a(2130838341));
    e = ((TextView)b.findViewById(2131624946));
    e.setTextColor(c.i());
    ao = ((TextView)b.findViewById(2131624635));
    ao.setTextColor(c.i());
    am = ((TextView)b.findViewById(2131624947));
    am.setTextColor(c.i());
    an = ((Button)b.findViewById(2131624949));
    an.setOnClickListener(new fq(this));
    al = ((EditText)b.findViewById(2131624948));
    al.setVisibility(4);
    ap = ((WifiManager)ag.getSystemService("wifi"));
    ar = new IntentFilter();
    ar.addAction("android.net.wifi.supplicant.STATE_CHANGE");
    ar.addAction("android.net.wifi.STATE_CHANGE");
    ar.addAction("android.net.wifi.RSSI_CHANGED");
    ar.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    at = new fr(this);
    ag.registerReceiver(at, ar);
    try
    {
      au = new fs(this);
      localObject2 = (ConnectivityManager)ag.getSystemService("connectivity");
      localObject1 = (String)ap.getClass().getField("WIFI_AP_STATE_CHANGED_ACTION").get(ap);
      localObject2 = (String)localObject2.getClass().getField("ACTION_TETHER_STATE_CHANGED").get(localObject2);
      as = new IntentFilter((String)localObject1);
      as.addAction((String)localObject2);
      ag.registerReceiver(au, as);
      s();
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
  
  public void i_()
  {
    super.i_();
    ag.unregisterReceiver(at);
    try
    {
      ag.unregisterReceiver(au);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void l()
  {
    super.l();
    s();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.fp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */