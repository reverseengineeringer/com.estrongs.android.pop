package com.estrongs.android.pop.app.analysis;

import android.content.Context;
import android.content.Intent;
import java.util.TimerTask;

final class t
  extends TimerTask
{
  private String b;
  private Context c;
  
  public t(p paramp, Context paramContext, String paramString)
  {
    c = paramContext;
    b = paramString;
  }
  
  public void run()
  {
    Intent localIntent = new Intent(c, AnalysisInstallAppService.class);
    localIntent.putExtra(p.b, b);
    c.startService(localIntent);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */