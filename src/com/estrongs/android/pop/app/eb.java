package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.estrongs.android.pop.app.network.EsNetworkActivity;

class eb
  implements DialogInterface.OnClickListener
{
  eb(LocalFileSharingActivity paramLocalFileSharingActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = new Intent(a, EsNetworkActivity.class);
    a.startActivity(paramDialogInterface);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.eb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */