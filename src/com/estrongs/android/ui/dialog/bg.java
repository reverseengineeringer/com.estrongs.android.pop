package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.estrongs.android.pop.utils.cc;
import com.estrongs.android.ui.view.CreateOAuthNetDisk;
import com.estrongs.android.util.bd;
import java.util.Map;

class bg
  implements AdapterView.OnItemClickListener
{
  bg(bf parambf) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramView = (com.estrongs.android.ui.a.b)paramAdapterView.getAdapter();
    paramAdapterView = paramView.a(paramInt);
    int i = paramView.b(paramInt);
    paramView = paramView.c(paramInt);
    if (paramView.equals("pcs"))
    {
      paramView = cc.e();
      if ((cc.a()) || ("TW".equalsIgnoreCase(paramView)) || ("HK".equalsIgnoreCase(paramView))) {
        bf.a(a, i, paramAdapterView);
      }
    }
    for (;;)
    {
      a.a.dismiss();
      return;
      bf.b(a, i, paramAdapterView);
      continue;
      if ((!paramView.equals("box")) && (!paramView.equals("onedrive")) && (!paramView.equals("gdrive")) && (!paramView.equals("dropbox")) && (!paramView.equals("kuaipan")) && (!paramView.equals("megacloud")) && (!paramView.equals("kanbox")) && (!paramView.equals("vdisk"))) {
        break;
      }
      paramAdapterView = new Intent(bf.a(a), CreateOAuthNetDisk.class);
      paramAdapterView.putExtra("nettype", paramView);
      bf.a(a).startActivity(paramAdapterView);
    }
    if (paramView.equals("pcs"))
    {
      paramAdapterView = (WifiManager)bf.a(a).getSystemService("wifi");
      paramView = (TelephonyManager)bf.a(a).getSystemService("phone");
      if (paramAdapterView == null) {
        break label449;
      }
    }
    label449:
    for (paramAdapterView = paramView.getDeviceId();; paramAdapterView = null)
    {
      Map localMap = (Map)com.estrongs.fs.impl.j.b.b(paramAdapterView, "pcs");
      if (localMap == null) {
        break;
      }
      paramView = localMap;
      if (localMap.get("force_reg_token") != null) {
        paramView = (Map)com.estrongs.fs.impl.j.b.b(paramAdapterView, (String)localMap.get("force_reg_token"), "pcs");
      }
      paramAdapterView = paramView.get("bduss") + "\n" + paramView.get("device_token") + "\n" + paramView.get("uid") + "\n" + paramView.get("device_token");
      if (paramAdapterView == null) {
        break;
      }
      bf.a(a, "pcs", "quikreg:" + bd.c(paramAdapterView));
      break;
      new fh(bf.a(a)).b(paramAdapterView, paramView).a();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */