package com.estrongs.android.pop.app.network;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
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
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.estrongs.android.e.k;
import com.estrongs.android.e.n;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.LocalFileSharingActivity;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.dialog.kw;
import com.estrongs.android.ui.e.u;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.ui.view.by;
import java.util.ArrayList;

public class EsNetworkActivity
  extends ESActivity
  implements com.estrongs.android.e.d, com.estrongs.android.e.g, k, n
{
  WifiConfiguration a = null;
  ArrayList<String> b;
  private LayoutInflater c;
  private kw d;
  private LinearLayout e;
  private LinearLayout f;
  private Button g;
  private Button h;
  private Button i;
  private TextView j;
  private TextView k;
  private TextView l;
  private TextView m;
  private com.estrongs.android.e.h n;
  private com.estrongs.android.e.a o;
  private ImageView p;
  private ImageView q;
  private ListView r;
  private BaseAdapter t;
  private boolean u = false;
  private boolean v = false;
  private boolean w;
  private al x;
  private u y;
  private boolean z;
  
  private View a(View paramView, i parami)
  {
    paramView = c.inflate(2130903267, null);
    b = ((TextView)paramView.findViewById(2131361822));
    b.setTextColor(x.i());
    c = ((TextView)paramView.findViewById(2131362014));
    c.setTextColor(x.i());
    d = ((ImageView)paramView.findViewById(2131362092));
    a = ((ImageView)paramView.findViewById(2131361853));
    return paramView;
  }
  
  public static void a(ESActivity paramESActivity, ArrayList<String> paramArrayList, boolean paramBoolean)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(paramESActivity, EsNetworkActivity.class);
    localIntent.putExtra("play", paramBoolean);
    localIntent.putStringArrayListExtra("files_selected", paramArrayList);
    paramESActivity.startActivityForResult(localIntent, 1);
  }
  
  private void b()
  {
    Object localObject1 = c.inflate(2130903118, null);
    Object localObject2 = c.inflate(2130903041, null);
    setContentView((View)localObject1);
    ((View)localObject1).findViewById(2131362208).setBackgroundDrawable(x.h());
    p = ((ImageView)((View)localObject2).findViewById(2131361812));
    q = ((ImageView)((View)localObject2).findViewById(2131361818));
    j = ((TextView)((View)localObject2).findViewById(2131361815));
    k = ((TextView)((View)localObject2).findViewById(2131361813));
    l = ((TextView)((View)localObject2).findViewById(2131361820));
    m = ((TextView)((View)localObject2).findViewById(2131361819));
    g = ((Button)((View)localObject2).findViewById(2131361816));
    g.setBackgroundDrawable(al.a(this).a(2130838001, 2130838003));
    g.setOnClickListener(new a(this));
    h = ((Button)((View)localObject2).findViewById(2131361821));
    h.setBackgroundDrawable(al.a(this).a(2130838001, 2130838003));
    h.setOnClickListener(new b(this));
    i = ((Button)((View)localObject2).findViewById(2131361814));
    i.setBackgroundDrawable(al.a(this).a(2130838001, 2130838003));
    i.setOnClickListener(new c(this));
    e = ((LinearLayout)((View)localObject2).findViewById(2131361811));
    e.setOnClickListener(new d(this));
    f = ((LinearLayout)((View)localObject2).findViewById(2131361817));
    f.setOnClickListener(new e(this));
    int i1 = Build.VERSION.SDK_INT;
    if (i1 < 9) {
      e.setVisibility(8);
    }
    r = ((ListView)((View)localObject1).findViewById(2131362074));
    r.addHeaderView((View)localObject2);
    t = new f(this);
    r.setAdapter(t);
    r.setOnItemClickListener(new g(this));
    al.a(this);
    ((View)localObject1).findViewById(2131362205).setOnClickListener(new h(this));
    if (getResourcesgetConfigurationorientation == 1) {}
    for (boolean bool = true;; bool = false)
    {
      z = bool;
      y = new u(this, z);
      localObject1 = (RelativeLayout)findViewById(2131362207);
      localObject2 = new by(this, (RelativeLayout)localObject1, 1);
      ((by)localObject2).a("normal_mode", y);
      ((by)localObject2).a("normal_mode", Boolean.valueOf(false));
      if (i1 < 9) {
        ((RelativeLayout)localObject1).setVisibility(8);
      }
      return;
    }
  }
  
  public void a()
  {
    t.notifyDataSetChanged();
  }
  
  public void a(int paramInt)
  {
    if ((paramInt == 1) || (paramInt == 2))
    {
      e.setEnabled(false);
      f.setEnabled(false);
      k.setText(getString(2131427512));
      j.setText(2131427444);
      g.setVisibility(8);
      i.setVisibility(8);
      p.setImageResource(2130837634);
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
          if (SSID.startsWith(com.estrongs.android.e.h.a))
          {
            k.setText(getString(2131427513) + SSID);
            j.setText(getString(2131427514) + preSharedKey);
          }
        }
        for (;;)
        {
          g.setVisibility(0);
          if (b != null) {
            finish();
          }
          p.setImageResource(2130837634);
          return;
          if (ad.a(this).aj())
          {
            k.setText(getString(2131427515) + " " + SSID);
            j.setText(getString(2131427516) + preSharedKey);
          }
          else
          {
            k.setText(getString(2131427515) + " " + SSID);
            j.setText(getString(2131427516) + preSharedKey);
            continue;
            if (ad.a(this).aj()) {
              ag.a(this, 2131428266, 1);
            }
            k.setText(2131427517);
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
        j.setText(2131427445);
        k.setText(2131427518);
        g.setVisibility(8);
        i.setVisibility(8);
        p.setImageResource(2130837634);
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
    k.setText(2131427531);
    j.setText(2131427532);
    p.setImageResource(2130837635);
  }
  
  public void a(WifiInfo paramWifiInfo, NetworkInfo.DetailedState paramDetailedState)
  {
    String str = com.estrongs.android.e.h.a(paramWifiInfo.getSSID());
    if (paramDetailedState == NetworkInfo.DetailedState.CONNECTED) {
      if ((paramWifiInfo != null) && (paramWifiInfo.getSSID() != null))
      {
        if (paramWifiInfo.getSSID().startsWith(com.estrongs.android.e.h.a))
        {
          m.setText(getString(2131427539) + str);
          l.setText(2131427526);
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
      m.setText(getString(2131427527) + " " + paramWifiInfo.getSSID());
      l.setText(2131427526);
      break;
      if (paramDetailedState == NetworkInfo.DetailedState.CONNECTING)
      {
        l.setText(2131427528);
      }
      else if (paramDetailedState == NetworkInfo.DetailedState.DISCONNECTED)
      {
        m.setText(2131427521);
        l.setText(2131427528);
      }
      else if (paramDetailedState == NetworkInfo.DetailedState.OBTAINING_IPADDR)
      {
        l.setText(getString(2131427450));
      }
      else if (paramDetailedState == NetworkInfo.DetailedState.SCANNING)
      {
        l.setText(2131427528);
      }
      else if (paramDetailedState == NetworkInfo.DetailedState.AUTHENTICATING)
      {
        l.setText(getString(2131427449));
      }
      else if (paramDetailedState == NetworkInfo.DetailedState.FAILED)
      {
        l.setText(2131427528);
      }
      else if (paramDetailedState == NetworkInfo.DetailedState.IDLE)
      {
        l.setText(2131427528);
      }
      else if (paramDetailedState == NetworkInfo.DetailedState.DISCONNECTING)
      {
        l.setText(2131427528);
      }
    }
  }
  
  public void b(int paramInt)
  {
    if ((paramInt == 1) || (paramInt == 2))
    {
      f.setEnabled(false);
      e.setEnabled(false);
      m.setText(2131427519);
      l.setText(2131427520);
      h.setVisibility(8);
      q.setImageResource(2130837637);
    }
    do
    {
      return;
      if (paramInt == 3)
      {
        u = true;
        f.setEnabled(false);
        e.setEnabled(false);
        m.setText(2131427521);
        l.setText(2131427522);
        h.setVisibility(0);
        q.setImageResource(2130837637);
        return;
      }
      if (paramInt == 4)
      {
        f.setEnabled(false);
        e.setEnabled(false);
        m.setText(2131427523);
        l.setText(2131427524);
        h.setVisibility(8);
        q.setImageResource(2130837637);
        return;
      }
    } while (paramInt != 5);
    u = false;
    if (!v)
    {
      f.setEnabled(true);
      e.setEnabled(true);
    }
    m.setText(2131427521);
    l.setText(2131427525);
    h.setVisibility(8);
    q.setImageResource(2130837636);
  }
  
  public void finish()
  {
    super.finish();
    if ((b != null) && ((k.getText().toString().startsWith(getString(2131427510))) || (m.getText().toString().startsWith(getString(2131427511))))) {
      LocalFileSharingActivity.a(this, b, w);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    x = al.a(this);
    w = getIntent().getBooleanExtra("play", false);
    b = getIntent().getStringArrayListExtra("files_selected");
    c = com.estrongs.android.pop.esclasses.g.a(this);
    try
    {
      n = new com.estrongs.android.e.h(this, this, this, this);
      n.a();
      o = new com.estrongs.android.e.a(this, this);
      o.a();
      b();
      return;
    }
    catch (Exception paramBundle)
    {
      if (b == null) {
        break label122;
      }
    }
    LocalFileSharingActivity.a(this, b, w);
    for (;;)
    {
      super.finish();
      break;
      label122:
      ag.a(this, 2131427509, 1);
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