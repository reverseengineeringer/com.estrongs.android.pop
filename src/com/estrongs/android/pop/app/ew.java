package com.estrongs.android.pop.app;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.pop.view.FileExplorerActivity;

class ew
  implements View.OnClickListener
{
  ew(PopAudioPlayer paramPopAudioPlayer) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent(a, FileExplorerActivity.class);
    paramView.setData(Uri.parse("music://"));
    paramView.setFlags(603979776);
    a.startActivity(paramView);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ew
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */