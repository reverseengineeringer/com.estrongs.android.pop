package com.estrongs.android.pop.view;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.estrongs.android.pop.app.f.an;
import com.estrongs.android.view.cr;

class cp
  implements an
{
  cp(FileExplorerActivity paramFileExplorerActivity, String paramString) {}
  
  public void a(Intent paramIntent)
  {
    Object localObject = null;
    if (paramIntent != null) {}
    for (paramIntent = paramIntent.getExtras();; paramIntent = null)
    {
      if (paramIntent == null) {
        return;
      }
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append(paramIntent.getString("SEARCH_PATTERN"));
      if ((a != null) && (a.trim().length() > 0)) {
        localStringBuffer.append("&&").append("keyword").append("=").append(Uri.encode(a));
      }
      try
      {
        paramIntent = b.O().aq();
        if ((paramIntent != null) && (paramIntent.length() > 0)) {
          localStringBuffer.append("&&").append("category").append("=").append(paramIntent);
        }
        FileExplorerActivity.a(b, localStringBuffer.toString());
        return;
      }
      catch (Exception paramIntent)
      {
        for (;;)
        {
          paramIntent = (Intent)localObject;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.view.cp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */