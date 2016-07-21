package com.estrongs.android.pop.app.network;

import android.net.wifi.WifiConfiguration;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import com.estrongs.android.l.a;
import com.estrongs.android.l.k;
import com.estrongs.android.pop.ad;
import java.util.BitSet;
import java.util.Random;

class d
  implements View.OnClickListener
{
  d(EsNetworkActivity paramEsNetworkActivity) {}
  
  public void onClick(View paramView)
  {
    String str;
    int i;
    if (EsNetworkActivity.c(a).isEnabled())
    {
      boolean bool = ad.a(a).ak();
      paramView = ad.a(a).ai();
      str = ad.a(a).aj();
      Random localRandom = new Random(System.currentTimeMillis());
      int j = localRandom.nextInt(10000);
      i = j;
      if (j <= 999) {
        i = j + 1000;
      }
      a.a = new WifiConfiguration();
      if ((!bool) || (paramView == null) || (str == null)) {
        break label217;
      }
      a.a.SSID = paramView;
      a.a.allowedKeyManagement.set(1);
      a.a.allowedAuthAlgorithms.set(0);
      j = localRandom.nextInt(1000);
      i = j;
      if (j <= 99) {
        i = j + 100;
      }
      if ((!bool) || (paramView == null) || (str == null)) {
        break label250;
      }
    }
    label217:
    label250:
    for (a.a.preSharedKey = str;; a.a.preSharedKey = ("" + i + "00000"))
    {
      EsNetworkActivity.a(a).a(a.a);
      return;
      a.a.SSID = (k.a + i);
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.network.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */