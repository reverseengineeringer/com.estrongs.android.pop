package com.estrongs.android.pop.view;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.EditText;
import com.estrongs.android.pop.app.b.an;
import com.estrongs.android.view.aw;

class es
  implements an
{
  es(FileExplorerActivity paramFileExplorerActivity) {}
  
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
      paramIntent = FileExplorerActivity.B(a).getText().toString();
      if ((paramIntent != null) && (paramIntent.trim().length() > 0)) {
        localStringBuffer.append("&&").append("keyword").append("=").append(Uri.encode(paramIntent));
      }
      try
      {
        paramIntent = a.y().ab();
        if ((paramIntent != null) && (paramIntent.length() > 0)) {
          localStringBuffer.append("&&").append("category").append("=").append(paramIntent);
        }
        FileExplorerActivity.b(a, localStringBuffer.toString());
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
 * Qualified Name:     com.estrongs.android.pop.view.es
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */