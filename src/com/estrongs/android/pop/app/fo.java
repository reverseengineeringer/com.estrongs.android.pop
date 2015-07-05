package com.estrongs.android.pop.app;

import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.utils.cv;
import com.estrongs.android.pop.utils.cy;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.kv;

class fo
  implements kv
{
  fo(PopAudioPlayer paramPopAudioPlayer) {}
  
  public void a(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = cv.a(a, paramString1, paramString2);
      if (paramString1 == null) {
        return;
      }
      if (cv.a(b))
      {
        a.finish();
        return;
      }
      paramString2 = new Intent(a, FileExplorerActivity.class);
      paramString2.setFlags(603979776);
      paramString2.setData(Uri.parse(a));
      a.startActivity(paramString2);
      return;
    }
    catch (Exception paramString1) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.fo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */