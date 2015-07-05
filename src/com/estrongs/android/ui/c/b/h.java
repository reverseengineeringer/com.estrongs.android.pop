package com.estrongs.android.ui.c.b;

import android.os.AsyncTask;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.ad;
import com.estrongs.fs.impl.d.c;
import java.io.File;
import java.util.List;

class h
  extends AsyncTask<Void, k, Void>
{
  h(f paramf) {}
  
  protected Void a(Void... paramVarArgs)
  {
    int i = 0;
    paramVarArgs = new k(a, null);
    a = "picture";
    b = com.estrongs.fs.impl.k.b.c().b();
    publishProgress(new k[] { paramVarArgs });
    paramVarArgs = new k(a, null);
    a = "music";
    b = com.estrongs.fs.impl.i.b.c().b();
    publishProgress(new k[] { paramVarArgs });
    paramVarArgs = new k(a, null);
    a = "video";
    b = com.estrongs.fs.impl.q.b.c().b();
    publishProgress(new k[] { paramVarArgs });
    paramVarArgs = new k(a, null);
    a = "application";
    for (;;)
    {
      try
      {
        b = ((com.estrongs.fs.impl.b.d)com.estrongs.fs.d.a().o("app")).a(com.estrongs.fs.d.a().j("app://user"), null, null).size();
        publishProgress(new k[] { paramVarArgs });
      }
      catch (Exception localException)
      {
        try
        {
          paramVarArgs = new k(a, null);
          a = "download";
          Object localObject1 = new File(ad.a(a.a).z());
          bool = ad.a(a.a).p();
          if ((((File)localObject1).exists()) && (((File)localObject1).isDirectory()))
          {
            localObject1 = ((File)localObject1).listFiles();
            if (localObject1 == null)
            {
              b = -1;
              publishProgress(new k[] { paramVarArgs });
            }
          }
        }
        catch (OutOfMemoryError paramVarArgs)
        {
          boolean bool;
          int j;
          int k;
          continue;
        }
        try
        {
          paramVarArgs = new k(a, null);
          a = "book";
          if (ac.a() >= 11)
          {
            b = c.b().c();
            publishProgress(new k[] { paramVarArgs });
            return null;
            localException = localException;
            localException.printStackTrace();
            b = 0;
            continue;
            int m = localException.length;
            j = 0;
            if (i < m)
            {
              Object localObject2 = localException[i];
              if (!bool)
              {
                k = j;
                if (((File)localObject2).getName().startsWith(".")) {
                  break label436;
                }
              }
            }
            else
            {
              b = j;
              continue;
              b = -1;
              continue;
            }
          }
          else
          {
            b = com.estrongs.fs.impl.d.b.a().e();
            continue;
          }
          k = j + 1;
        }
        catch (OutOfMemoryError paramVarArgs)
        {
          return null;
        }
      }
      label436:
      i += 1;
      j = k;
    }
  }
  
  protected void a(Void paramVoid)
  {
    f.a(a, false);
  }
  
  protected void a(k... paramVarArgs)
  {
    paramVarArgs = paramVarArgs[0];
    String str = a;
    f.a(a, str, b);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */