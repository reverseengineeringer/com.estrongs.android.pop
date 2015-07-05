package com.estrongs.android.pop.utils;

import android.os.AsyncTask;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.ay;
import java.util.List;

class r
  extends AsyncTask<Void, Void, Void>
{
  r(c paramc, int paramInt, List paramList) {}
  
  protected Void a(Void... paramVarArgs)
  {
    int i = 0;
    while (i < a)
    {
      paramVarArgs = ((com.estrongs.fs.impl.b.c)b.get(i)).c();
      ay.a(c.a, paramVarArgs);
      i += 1;
    }
    return null;
  }
  
  protected void a(Void paramVoid)
  {
    ag.a(c.a, c.a.getString(2131427795), 1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */