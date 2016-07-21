package com.estrongs.android.ui.navigation;

import android.content.Intent;
import android.view.View;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.theme.ThemeActivity;

class z
  implements q
{
  z(y paramy) {}
  
  public void a(View paramView)
  {
    a.a.o();
    if (!FexApplication.e())
    {
      paramView = new Intent(a.a, ThemeActivity.class);
      a.a.startActivityForResult(paramView, 4128);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.navigation.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */