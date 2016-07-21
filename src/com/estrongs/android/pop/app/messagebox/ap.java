package com.estrongs.android.pop.app.messagebox;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;

class ap
  implements View.OnClickListener
{
  ap(WebActivity paramWebActivity) {}
  
  public void onClick(View paramView)
  {
    if (WebActivity.a(a)) {
      a.startActivity(new Intent(a, FileExplorerActivity.class));
    }
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */