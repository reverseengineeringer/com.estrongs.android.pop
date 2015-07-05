package com.estrongs.android.ui.navigation;

import android.content.Intent;
import android.view.View;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.theme.ThemeActivity;

class aa
  implements r
{
  aa(z paramz) {}
  
  public void a(View paramView)
  {
    a.a.k();
    if (!FexApplication.e())
    {
      paramView = new Intent(a.a, ThemeActivity.class);
      a.a.startActivityForResult(paramView, 268439584);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.navigation.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */