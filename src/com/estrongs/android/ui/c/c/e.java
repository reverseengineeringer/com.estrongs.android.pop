package com.estrongs.android.ui.c.c;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.app.messagebox.MessageBoxActivity;

class e
  implements View.OnClickListener
{
  e(d paramd) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent(a.a, MessageBoxActivity.class);
    a.a.startActivity(paramView);
    com.estrongs.android.j.d.d(a.a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.c.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */