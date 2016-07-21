package com.estrongs.android.pop.utils;

import android.os.AsyncTask;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.bc;
import com.estrongs.fs.impl.b.d;
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
      paramVarArgs = ((d)b.get(i)).h();
      bc.a(c.a, paramVarArgs);
      i += 1;
    }
    return null;
  }
  
  protected void a(Void paramVoid)
  {
    ak.a(c.a, c.a.getString(2131231904), 1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */