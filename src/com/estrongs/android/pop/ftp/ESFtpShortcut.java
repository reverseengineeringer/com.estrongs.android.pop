package com.estrongs.android.pop.ftp;

import android.content.Intent;
import android.os.Bundle;
import com.estrongs.android.ftp.k;
import com.estrongs.android.pop.esclasses.ESActivity;

public class ESFtpShortcut
  extends ESActivity
{
  protected void onCreate(Bundle paramBundle)
  {
    boolean bool = true;
    super.onCreate(paramBundle);
    paramBundle = getIntent().getExtras();
    int i;
    if (paramBundle != null)
    {
      i = paramBundle.getInt("mode");
      if (paramBundle.getString("adbControl") == null) {}
    }
    for (;;)
    {
      try
      {
        paramBundle = k.a();
        paramBundle.a(this, new a(this, i, paramBundle, bool));
        finish();
        return;
        bool = false;
        continue;
      }
      catch (Exception paramBundle)
      {
        paramBundle.printStackTrace();
        continue;
      }
      i = 1;
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.ftp.ESFtpShortcut
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */