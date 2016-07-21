package com.estrongs.android.ui.e;

import android.content.Intent;
import com.estrongs.android.pop.app.AudioPlayerService;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ProgressDialog;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.ap;
import com.estrongs.fs.b.w;
import java.util.List;

class dg
  implements Runnable
{
  dg(df paramdf) {}
  
  public void run()
  {
    a.b.dismiss();
    List localList = a.c.a();
    if ((localList != null) && (localList.size() > 0))
    {
      Intent localIntent = new Intent(a.a, PopAudioPlayer.class);
      String[] arrayOfString = new String[localList.size()];
      int i = 0;
      if (i < localList.size())
      {
        if (ap.aJ((String)localList.get(i))) {
          arrayOfString[i] = ap.cd((String)localList.get(i));
        }
        for (;;)
        {
          i += 1;
          break;
          arrayOfString[i] = ((String)localList.get(i));
        }
      }
      localIntent.putExtra("hasplaylist", true);
      PopAudioPlayer.b(arrayOfString);
      localIntent.putExtra("isadd", a.d);
      if (a.e) {
        localIntent.putExtra("Chromecast", a.e);
      }
      if (a.d)
      {
        if (AudioPlayerService.b == null)
        {
          a.a.startActivity(localIntent);
          return;
        }
        localIntent.setClass(a.a, AudioPlayerService.class);
        a.a.startService(localIntent);
        return;
      }
      a.a.startActivity(localIntent);
      return;
    }
    ak.a(a.a, a.a.getText(2131231851), 0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.dg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */