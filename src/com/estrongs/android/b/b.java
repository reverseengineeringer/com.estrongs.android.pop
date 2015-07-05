package com.estrongs.android.b;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.estrongs.android.nativetool.c;

class b
  extends AsyncTask<Void, Bitmap, Void>
{
  private boolean b = false;
  private Bitmap c;
  
  public b(a parama) {}
  
  protected Void a(Void... paramVarArgs)
  {
    try
    {
      paramVarArgs = c.a(a.a(a));
      if (paramVarArgs != null)
      {
        long l = System.currentTimeMillis();
        for (;;)
        {
          if (!b)
          {
            com.estrongs.android.nativetool.b localb = paramVarArgs.a(c);
            if (c == null) {
              c = a;
            }
            publishProgress(new Bitmap[] { c });
            int j = b;
            int i = j;
            if (j == 0) {
              i = 100;
            }
            l = i - (System.currentTimeMillis() - l);
            if ((l > 0L) && (!b)) {}
            try
            {
              Thread.sleep(l);
              l = System.currentTimeMillis();
            }
            catch (InterruptedException localInterruptedException)
            {
              for (;;)
              {
                localInterruptedException.printStackTrace();
              }
            }
          }
        }
        paramVarArgs.a();
      }
      return null;
    }
    catch (Exception paramVarArgs) {}
    return null;
  }
  
  public void a()
  {
    b = true;
  }
  
  protected void a(Bitmap... paramVarArgs)
  {
    super.onProgressUpdate(paramVarArgs);
    a.a(a, paramVarArgs[0]);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */