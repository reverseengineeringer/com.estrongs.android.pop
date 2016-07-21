package com.estrongs.android.ui.dialog;

import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.ui.view.CreateOAuthNetDisk;
import com.estrongs.android.util.bk;
import java.util.Map;

class bi
  implements AdapterView.OnItemClickListener
{
  bi(bh parambh) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramView = (com.estrongs.android.ui.adapter.b)paramAdapterView.getAdapter();
    paramAdapterView = paramView.a(paramInt);
    int i = paramView.b(paramInt);
    paramView = paramView.c(paramInt);
    if (paramView.equals("pcs"))
    {
      paramView = cl.c();
      if ((cl.a()) || ("TW".equalsIgnoreCase(paramView)) || ("HK".equalsIgnoreCase(paramView))) {
        bh.a(a, i, paramAdapterView);
      }
    }
    for (;;)
    {
      a.a.dismiss();
      return;
      bh.b(a, i, paramAdapterView);
      continue;
      if (paramView.equals("megacloud"))
      {
        new ip(bh.a(a)).a();
        try
        {
          c.a(bh.a(a)).a("cloud_mega");
        }
        catch (Exception paramAdapterView)
        {
          paramAdapterView.printStackTrace();
        }
      }
      else
      {
        if ((!paramView.equals("box")) && (!paramView.equals("onedrive")) && (!paramView.equals("gdrive")) && (!paramView.equals("dropbox")) && (!paramView.equals("kuaipan")) && (!paramView.equals("megacloud")) && (!paramView.equals("vdisk"))) {
          break;
        }
        paramAdapterView = new Intent(bh.a(a), CreateOAuthNetDisk.class);
        paramAdapterView.putExtra("nettype", paramView);
        bh.a(a).startActivity(paramAdapterView);
      }
    }
    if (paramView.equals("pcs"))
    {
      paramAdapterView = (WifiManager)bh.a(a).getSystemService("wifi");
      paramView = (TelephonyManager)bh.a(a).getSystemService("phone");
      if (paramAdapterView == null) {
        break label492;
      }
    }
    label492:
    for (paramAdapterView = paramView.getDeviceId();; paramAdapterView = null)
    {
      Map localMap = (Map)com.estrongs.fs.impl.o.b.b(paramAdapterView, "pcs");
      if (localMap == null) {
        break;
      }
      paramView = localMap;
      if (localMap.get("force_reg_token") != null) {
        paramView = (Map)com.estrongs.fs.impl.o.b.b(paramAdapterView, (String)localMap.get("force_reg_token"), "pcs");
      }
      paramAdapterView = paramView.get("bduss") + "\n" + paramView.get("device_token") + "\n" + paramView.get("uid") + "\n" + paramView.get("device_token");
      if (paramAdapterView == null) {
        break;
      }
      bh.a(a, "pcs", "quikreg:" + bk.c(paramAdapterView));
      break;
      new fk(bh.a(a)).b(paramAdapterView, paramView).a();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */