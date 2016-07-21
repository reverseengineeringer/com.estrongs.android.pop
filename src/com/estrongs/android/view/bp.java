package com.estrongs.android.view;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;

class bp
  implements View.OnClickListener
{
  bp(bo parambo) {}
  
  public void onClick(View paramView)
  {
    if (a.c != null) {
      a.c.cancel();
    }
    if ((a.ag instanceof FileExplorerActivity))
    {
      ((FileExplorerActivity)a.ag).d("clean://");
      return;
    }
    paramView = new Intent(a.ag, FileExplorerActivity.class);
    paramView.setData(Uri.parse("clean://"));
    paramView.addFlags(268435456);
    paramView.addFlags(67108864);
    a.ag.startActivity(paramView);
    a.ag.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */