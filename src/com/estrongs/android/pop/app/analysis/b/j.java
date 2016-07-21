package com.estrongs.android.pop.app.analysis.b;

import android.annotation.SuppressLint;
import android.os.AsyncTask;
import android.os.Build.VERSION;

class j
  extends AsyncTask<Void, Void, Void>
{
  private j(h paramh) {}
  
  protected Void a(Void... paramVarArgs)
  {
    a.r();
    return null;
  }
  
  @SuppressLint({"InlinedApi"})
  protected void a()
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      super.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
      return;
    }
    super.execute(new Void[0]);
  }
  
  protected void a(Void paramVoid)
  {
    a.s();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.analysis.b.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */