package com.estrongs.android.pop.app;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.utils.aa;
import com.estrongs.android.pop.utils.af;

class cu
  implements View.OnClickListener
{
  cu(HideListActivity paramHideListActivity) {}
  
  public void onClick(View paramView)
  {
    int i = ((Integer)paramView.getTag()).intValue();
    if (i == -1) {
      return;
    }
    HideListActivity.a(a, HideListActivity.b(a)[i]);
    paramView = aa.d(da).b);
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
 * Qualified Name:     com.estrongs.android.pop.app.cu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */