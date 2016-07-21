package com.estrongs.android.pop.app;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.utils.ad;
import com.estrongs.android.pop.utils.aj;

class cx
  implements View.OnClickListener
{
  cx(HideListActivity paramHideListActivity) {}
  
  public void onClick(View paramView)
  {
    int i = ((Integer)paramView.getTag()).intValue();
    if (i == -1) {
      return;
    }
    HideListActivity.a(a, HideListActivity.b(a)[i]);
    paramView = ad.d(da).b);
    if (paramView != null)
    {
      Intent localIntent = new Intent();
      Bundle localBundle = new Bundle();
      localBundle.putString("path", paramView);
      localBundle.putBoolean("isDir", da).a);
      localIntent.putExtras(localBundle);
      a.setResult(-1, localIntent);
    }
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.cx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */