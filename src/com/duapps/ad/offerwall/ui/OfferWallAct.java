package com.duapps.ad.offerwall.ui;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.duapps.ad.base.ag;
import com.duapps.ad.base.ap;
import com.duapps.ad.base.k;
import com.duapps.ad.entity.AdData;
import com.facebook.ads.NativeAd;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@SuppressLint({"NewApi"})
public class OfferWallAct
  extends Activity
  implements View.OnClickListener, a
{
  private com.duapps.ad.offerwall.a a;
  private boolean b;
  private String c;
  private String d;
  private String e;
  private boolean f;
  private boolean g;
  private boolean h = false;
  private k i;
  private ListView j;
  private PullUpForMore k;
  private View l;
  private TextView m;
  private Button n;
  private LinearLayout o;
  private g p;
  private ArrayList<Object> q = new ArrayList();
  private int r = 0;
  private int s = 0;
  private int t;
  private String u;
  private com.duapps.ad.stats.c v;
  private BroadcastReceiver w = new f(this);
  
  private void a(String paramString)
  {
    j.setBackgroundColor(b(c));
  }
  
  static boolean a(Context paramContext)
  {
    paramContext = (WifiManager)paramContext.getSystemService("wifi");
    if (paramContext == null) {
      return false;
    }
    if ((paramContext.getWifiState() == 2) || (paramContext.getWifiState() == 3)) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  private int b(String paramString)
  {
    return Color.parseColor(paramString);
  }
  
  static boolean b(Context paramContext)
  {
    paramContext = (TelephonyManager)paramContext.getSystemService("phone");
    if (paramContext == null) {
      return false;
    }
    if ((paramContext.getDataState() == 2) || (paramContext.getDataState() == 1)) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  private void d()
  {
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null)
    {
      t = localBundle.getInt("pid");
      ap.a(t);
      b = localBundle.getBoolean("display_home_as_up", true);
      c = localBundle.getString("background_color");
      d = localBundle.getString("title_color");
      e = localBundle.getString("desc_color");
      f = localBundle.getBoolean("show_feedback", true);
      g = localBundle.getBoolean("enable_facebook", true);
      return;
    }
    throw new IllegalArgumentException("Must be put pid in bundle data, Otherwise OfferWall cannot be work.");
  }
  
  private void e()
  {
    o = ((LinearLayout)findViewById(com.dianxinos.a.a.d.duapps_ad_container));
    j = ((ListView)findViewById(com.dianxinos.a.a.d.duapps_ad_offer_wall_lv));
    k = ((PullUpForMore)LayoutInflater.from(this).inflate(com.dianxinos.a.a.e.duapps_ad_offer_wall_load_more_footer, j, false));
    u = ag.a(getApplicationContext()).b(t);
    p = new g(this, q, t);
    j.addFooterView(k);
    j.setAdapter(p);
    l = findViewById(com.dianxinos.a.a.d.duapps_ad_empty);
    m = ((TextView)l.findViewById(com.dianxinos.a.a.d.v2_toolbox_emptyview_tips));
    n = ((Button)l.findViewById(com.dianxinos.a.a.d.v2_empty_refresh));
    new Handler().post(new b(this));
    j.setOnItemClickListener(new c(this));
    j.setOnScrollListener(new d(this));
    n.setOnClickListener(this);
    f();
  }
  
  private void f()
  {
    Pattern localPattern = Pattern.compile("^#?([a-f]|[A-F]|[0-9]){3}(([a-f]|[A-F]|[0-9]){3})?$");
    if ((!TextUtils.isEmpty(c)) && (localPattern.matcher(c).matches())) {
      a(c);
    }
    if (((TextUtils.isEmpty(d)) || (!localPattern.matcher(d).matches())) || ((!TextUtils.isEmpty(e)) && (localPattern.matcher(e).matches()))) {}
  }
  
  private void g()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.PACKAGE_ADDED");
    localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    localIntentFilter.addDataScheme("package");
    registerReceiver(w, localIntentFilter);
  }
  
  private void h()
  {
    unregisterReceiver(w);
  }
  
  public void a()
  {
    k.setFooterViewOptions(3);
  }
  
  protected void a(int paramInt)
  {
    l.setVisibility(8);
    if (i == null)
    {
      i = new k(this, 1);
      i.setOnKeyListener(new e(this));
    }
    i.a(paramInt);
    i.show();
  }
  
  public void a(List<NativeAd> paramList)
  {
    p.a(paramList);
    s = p.getCount();
  }
  
  public void a(boolean paramBoolean)
  {
    if ((paramBoolean) && (!h))
    {
      if (isFinishing()) {
        return;
      }
      h = true;
      a(com.dianxinos.a.a.f.duapps_ad_loading);
      return;
    }
    k.setFooterViewOptions(2);
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1)
    {
      a.b();
      j.setVisibility(0);
      b();
      com.duapps.ad.stats.b.f(getApplicationContext(), t);
    }
    if (paramBoolean2)
    {
      k.setFooterViewOptions(3);
      return;
    }
    k.setFooterViewOptions(0);
  }
  
  protected void b()
  {
    h = false;
    if (isFinishing()) {}
    while ((i == null) || (!i.isShowing())) {
      return;
    }
    i.dismiss();
  }
  
  public void b(List<AdData> paramList)
  {
    p.b(paramList);
    s = p.getCount();
  }
  
  public void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      a.b();
      b();
      j.setEmptyView(l);
      com.duapps.ad.stats.b.g(getApplicationContext(), t);
      return;
    }
    k.setFooterViewOptions(3);
  }
  
  protected int c()
  {
    boolean bool1 = a(getApplicationContext());
    boolean bool2 = b(getApplicationContext());
    int i1 = 0;
    if ((bool1) && (bool2)) {
      i1 = 4;
    }
    do
    {
      return i1;
      if (bool1) {
        return 2;
      }
    } while (!bool2);
    return 1;
  }
  
  public void onBackPressed()
  {
    if (h) {
      com.duapps.ad.stats.b.d(getApplicationContext(), t);
    }
    super.onBackPressed();
  }
  
  public void onClick(View paramView)
  {
    if ((paramView == n) && (!h)) {
      a.a();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRequestedOrientation(1);
    setContentView(com.dianxinos.a.a.e.duapps_ad_offer_wall_layout);
    d();
    e();
    a = new com.duapps.ad.offerwall.a(t, this, this);
    a.a();
    g();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (i != null) {
      i.dismiss();
    }
    a.c();
    p.a();
    h();
    ap.a(this);
  }
  
  protected void onResume()
  {
    super.onResume();
    com.duapps.ad.stats.b.e(getApplicationContext(), t);
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.offerwall.ui.OfferWallAct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */