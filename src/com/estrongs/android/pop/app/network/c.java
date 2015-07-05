package com.estrongs.android.pop.app.network;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class c
  implements View.OnClickListener
{
  c(EsNetworkActivity paramEsNetworkActivity) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent("android.settings.WIRELESS_SETTINGS");
    paramView.setFlags(268435456);
    a.startActivity(paramView);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.network.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */