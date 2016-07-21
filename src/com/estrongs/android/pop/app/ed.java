package com.estrongs.android.pop.app;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.app.network.EsNetworkActivity;
import com.estrongs.android.ui.dialog.ci;
import com.estrongs.android.ui.dialog.cv;

class ed
  implements View.OnClickListener
{
  ed(LocalFileSharingActivity paramLocalFileSharingActivity, cv paramcv) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent(b, EsNetworkActivity.class);
    b.startActivity(paramView);
    a.a.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ed
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */