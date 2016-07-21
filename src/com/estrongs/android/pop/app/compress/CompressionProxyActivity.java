package com.estrongs.android.pop.app.compress;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import com.estrongs.android.pop.esclasses.ESResourceActivity;
import com.estrongs.android.pop.z;

public class CompressionProxyActivity
  extends ESResourceActivity
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (!z.t)
    {
      paramBundle = new Intent(this, CompressionActivity.class);
      paramBundle.fillIn(getIntent(), 3);
    }
    try
    {
      startActivity(paramBundle);
      finish();
      return;
    }
    catch (ActivityNotFoundException paramBundle)
    {
      for (;;)
      {
        paramBundle.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.CompressionProxyActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */