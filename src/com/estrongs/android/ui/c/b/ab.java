package com.estrongs.android.ui.c.b;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.app.GestureManageActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.a;

class ab
  implements View.OnClickListener
{
  ab(u paramu) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent(a.a, GestureManageActivity.class);
    a.a.startActivityForResult(paramView, 16781342);
    a.a("Home_Gesture", "Home_Gesture");
    a.b("Home_Gesture_UV", "Home_Gesture_UV");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */