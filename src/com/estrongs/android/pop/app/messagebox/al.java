package com.estrongs.android.pop.app.messagebox;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import java.util.HashSet;

class al
  extends AsyncTask<Void, Void, Bitmap>
{
  private final String a;
  
  al(String paramString)
  {
    a = paramString;
  }
  
  protected Bitmap a(Void... paramVarArgs)
  {
    return ai.c(a);
  }
  
  protected void a(Bitmap paramBitmap)
  {
    synchronized ()
    {
      ai.b().remove(a);
      if (isCancelled())
      {
        if (paramBitmap != null) {
          paramBitmap.recycle();
        }
        return;
      }
    }
    ai.a(a, paramBitmap);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */