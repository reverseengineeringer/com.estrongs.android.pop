package com.estrongs.android.ui.d;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.app.messagebox.MessageBoxActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;

class b
  implements View.OnClickListener
{
  b(a parama, Activity paramActivity) {}
  
  public void onClick(View paramView)
  {
    if (!a.a(b))
    {
      a.a(b, true);
      a.b(b).setVisibility(4);
      MessageBoxActivity.a(a);
      c.a(a).a("mbx", "bell_clk");
    }
    while (!(a.c(b) instanceof FileExplorerActivity)) {
      return;
    }
    ((FileExplorerActivity)a.c(b)).N();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.d.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */