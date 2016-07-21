package com.estrongs.android.pop.app.network;

import android.app.Activity;
import android.content.Intent;
import android.net.NetworkInfo.DetailedState;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.l.j;
import com.estrongs.android.l.n;
import com.estrongs.android.l.q;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.LocalFileSharingActivity;
import com.estrongs.android.ui.base.HomeAsBackActivity;
import com.estrongs.android.ui.dialog.le;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.ak;
import java.util.ArrayList;
import java.util.List;

public class EsNetworkActivity
  extends HomeAsBackActivity
  implements com.estrongs.android.l.g, j, n, q
{
  WifiConfiguration a = null;
  ArrayList<String> b;
  private LayoutInflater c;
  private le d;
  private LinearLayout e;
  private LinearLayout f;
  private Button g;
  private Button h;
  private Button i;
  private TextView j;
  private TextView k;
  private TextView l;
  private TextView m;
  private com.estrongs.android.l.k n;
  private com.estrongs.android.l.a o;
  private ImageView p;
  private ImageView q;
  private ListView r;
  private BaseAdapter t;
  private boolean u = false;
  private boolean v = false;
  private boolean w;
  private at x;
  
  private View a(View paramView, i parami)
  {
    paramView = c.inflate(2130903459, null);
    b = ((TextView)paramView.findViewById(2131624200));
    b.setTextColor(x.i());
    c = ((TextView)paramView.findViewById(2131624538));
    c.setTextColor(x.i());
    d = ((ImageView)paramView.findViewById(2131624051));
    a = ((ImageView)paramView.findViewById(2131624054));
    return paramView;
  }
  
  public static void a(com.estrongs.android.pop.app.d.a parama, ArrayList<String> paramArrayList, boolean paramBoolean)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(parama.n(), EsNetworkActivity.class);
    localIntent.putExtra("play", paramBoolean);
    localIntent.putStringArrayListExtra("files_selected", paramArrayList);
    parama.G().startActivityForResult(localIntent, 1);
  }
  
  private void e()
  {
    View localView1 = c.inflate(2130903215, null);
    View localView2 = c.inflate(2130903101, null);
    setContentView(localView1);
    p = ((ImageView)localView2.findViewById(2131624313));
    q = ((ImageView)localView2.findViewById(2131624319));
    j = ((TextView)localView2.findViewById(2131624316));
    k = ((TextView)localView2.findViewById(2131624314));
    l = ((TextView)localView2.findViewById(2131624321));
    m = ((TextView)localView2.findViewById(2131624320));
    g = ((Button)localView2.findViewById(2131624317));
    g.setBackgroundDrawable(at.a(this).a(2130838338, 2130838340));
    g.setOnClickListener(new a(this));
    h = ((Button)localView2.findViewById(2131624322));
    h.setBackgroundDrawable(at.a(this).a(2130838338, 2130838340));
    h.setOnClickListener(new b(this));
    i = ((Button)localView2.findViewById(2131624315));
    i.setBackgroundDrawable(at.a(this).a(2130838338, 2130838340));
    i.setOnClickListener(new c(this));
    e = ((LinearLayout)localView2.findViewById(2131624312));
    e.setOnClickListener(new d(this));
    f = ((LinearLayout)localView2.findViewById(2131624318));
    f.setOnClickListener(new e(this));
    if (Build.VERSION.SDK_INT < 9) {
      e.setVisibility(8);
    }
    r = ((ListView)localView1.findViewById(2131624232));
    r.addHeaderView(localView2);
    t = new f(this);
    r.setAdapter(t);
    r.setOnItemClickListener(new g(this));
  }
  
  public void a(int paramInt)
  {
    if ((paramInt == 1) || (paramInt == 2))
    {
      e.setEnabled(false);
      f.setEnabled(false);
      k.setText(getString(2131232569));
      j.setText(2131232199);
      g.setVisibility(8);
      i.setVisibility(8);
      p.setImageResource(2130837880);
    }
    do
    {
      return;
      if (paramInt == 3)
      {
        v = true;
        e.setEnabled(false);
        f.setEnabled(false);
        WifiConfiguration localWifiConfiguration2 = o.d();
        WifiConfiguration localWifiConfiguration1;
        if (localWifiConfiguration2 != null)
        {
          localWifiConfiguration1 = localWifiConfiguration2;
          if (a != null)
          {
            localWifiConfiguration1 = localWifiConfiguration2;
            if (!a.SSID.equals(SSID)) {
              localWifiConfiguration1 = a;
            }
          }
          if (SSID.startsWith(com.estrongs.android.l.k.a))
          {
            k.setText(getString(2131232567) + SSID);
            j.setText(getString(2131232568) + preSharedKey);
          }
        }
        for (;;)
        {
          g.setVisibility(0);
          if (b != null) {
            finish();
          }
          p.setImageResource(2130837880);
          return;
          if (ad.a(this).ak())
          {
            k.setText(getString(2131232591) + " " + SSID);
            j.setText(getString(2131232581) + preSharedKey);
          }
          else
          {
            k.setText(getString(2131232591) + " " + SSID);
            j.setText(getString(2131232581) + preSharedKey);
            continue;
            if (ad.a(this).ak()) {
              ak.a(this, 2131232580, 1);
            }
            k.setText(2131232579);
            j.setText("");
            i.setVisibility(0);
          }
        }
      }
      if (paramInt == 4)
      {
        a = null;
        e.setEnabled(false);
        f.setEnabled(false);
        j.setText(2131232198);
        k.setText(2131232564);
        g.setVisibility(8);
        i.setVisibility(8);
        p.setImageResource(2130837880);
        return;
      }
    } while (paramInt != 5);
    a = null;
    v = false;
    if (!u)
    {
      e.setEnabled(true);
      f.setEnabled(true);
    }
    g.setVisibility(8);
    i.setVisibility(8);
    k.setText(2131231430);
    j.setText(2131231431);
    p.setImageResource(2130837881);
  }
  
  public void a(WifiInfo paramWifiInfo, NetworkInfo.DetailedState paramDetailedState)
  {
    String str = com.estrongs.android.l.k.a(paramWifiInfo.getSSID());
    if (paramDetailedState == NetworkInfo.DetailedState.CONNECTED) {
      if ((paramWifiInfo != null) && (paramWifiInfo.getSSID() != null))
      {
        if (paramWifiInfo.getSSID().startsWith(com.estrongs.android.l.k.a))
        {
          m.setText(getString(2131231435) + str);
          l.setText(2131232572);
        }
      }
      else if (b != null) {
        finish();
      }
    }
    for (;;)
    {
      if ((paramDetailedState != NetworkInfo.DetailedState.CONNECTED) && (paramDetailedState != null)) {}
      return;
      m.setText(getString(2131232577) + " " + paramWifiInfo.getSSID());
      l.setText(2131232572);
      break;
      if (paramDetailedState == NetworkInfo.DetailedState.CONNECTING)
      {
        l.setText(2131232592);
      }
      else if (paramDetailedState == NetworkInfo.DetailedState.DISCONNECTED)
      {
        m.setText(2131232574);
        l.setText(2131232592);
      }
      else if (paramDetailedState == NetworkInfo.DetailedState.OBTAINING_IPADDR)
      {
        l.setText(getString(2131232181));
      }
      else if (paramDetailedState == NetworkInfo.DetailedState.SCANNING)
      {
        l.setText(2131232592);
      }
      else if (paramDetailedState == NetworkInfo.DetailedState.AUTHENTICATING)
      {
        l.setText(getString(2131232201));
      }
      else if (paramDetailedState == NetworkInfo.DetailedState.FAILED)
      {
        l.setText(2131232592);
      }
      else if (paramDetailedState == NetworkInfo.DetailedState.IDLE)
      {
        l.setText(2131232592);
      }
      else if (paramDetailedState == NetworkInfo.DetailedState.DISCONNECTING)
      {
        l.setText(2131232592);
      }
    }
  }
  
  protected void a(List<com.estrongs.android.view.a.a> paramList)
  {
    if (Build.VERSION.SDK_INT >= 9) {
      paramList.add(new com.estrongs.android.view.a.a(2130838603, 2131231617).a(new h(this)));
    }
  }
  
  public void b(int paramInt)
  {
    if ((paramInt == 1) || (paramInt == 2))
    {
      f.setEnabled(false);
      e.setEnabled(false);
      m.setText(2131232588);
      l.setText(2131232589);
      h.setVisibility(8);
      q.setImageResource(2130837883);
    }
    do
    {
      return;
      if (paramInt == 3)
      {
        u = true;
        f.setEnabled(false);
        e.setEnabled(false);
        m.setText(2131232574);
        l.setText(2131232583);
        h.setVisibility(0);
        q.setImageResource(2130837883);
        return;
      }
      if (paramInt == 4)
      {
        f.setEnabled(false);
        e.setEnabled(false);
        m.setText(2131232570);
        l.setText(2131232571);
        h.setVisibility(8);
        q.setImageResource(2130837883);
        return;
      }
    } while (paramInt != 5);
    u = false;
    if (!v)
    {
      f.setEnabled(true);
      e.setEnabled(true);
    }
    m.setText(2131232574);
    l.setText(2131232575);
    h.setVisibility(8);
    q.setImageResource(2130837882);
  }
  
  public void d()
  {
    t.notifyDataSetChanged();
  }
  
  public void finish()
  {
    super.finish();
    if ((b != null) && ((k.getText().toString().startsWith(getString(2131232566))) || (m.getText().toString().startsWith(getString(2131232576))))) {
      LocalFileSharingActivity.a(this, b, w);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    x = at.a(this);
    w = getIntent().getBooleanExtra("play", false);
    b = getIntent().getStringArrayListExtra("files_selected");
    c = com.estrongs.android.pop.esclasses.k.a(this);
    try
    {
      n = new com.estrongs.android.l.k(this, this, this, this);
      n.a();
      o = new com.estrongs.android.l.a(this, this);
      o.a();
      setTitle(2131231439);
      e();
      return;
    }
    catch (Exception paramBundle)
    {
      if (b == null) {
        break label129;
      }
    }
    LocalFileSharingActivity.a(this, b, w);
    for (;;)
    {
      super.finish();
      break;
      label129:
      ak.a(this, 2131232584, 1);
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    try
    {
      n.b();
      try
      {
        o.b();
        return;
      }
      catch (Exception localException1) {}
    }
    catch (Exception localException2)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.network.EsNetworkActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */