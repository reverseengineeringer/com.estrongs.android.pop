package com.estrongs.android.ui.e;

import android.content.Intent;
import com.estrongs.android.pop.app.AudioPlayerService;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ProgressDialog;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.am;
import com.estrongs.fs.b.w;
import java.util.List;

class dl
  implements Runnable
{
  dl(dk paramdk) {}
  
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
        if (am.az((String)localList.get(i))) {
          arrayOfString[i] = am.bM((String)localList.get(i));
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
    ag.a(a.a, a.a.getText(2131428270), 0);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.dl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */