package com.estrongs.android.view;

import android.os.Handler;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.l;
import com.estrongs.io.archive.d;
import com.estrongs.io.archive.i;
import com.estrongs.io.archive.sevenzip.f;

class t
  extends Thread
{
  boolean a = false;
  
  t(g paramg) {}
  
  private void a(String paramString1, String paramString2)
  {
    try
    {
      g.a(b, d.a(paramString1, b.b, true, paramString2));
      g.e(b);
      bool = a;
      if (bool) {
        return;
      }
      if (b.d != null) {
        g.f(b).f(b.d);
      }
      g.f(b).b();
      bool = a;
      if (bool) {
        return;
      }
      g.a(b, g.f(b).h());
      bool = a;
      if (bool) {
        return;
      }
      g.g(b).sendEmptyMessage(0);
      return;
    }
    catch (Throwable paramString2)
    {
      l.c("ArchiveFileGridViewWrapper", "Failed to open the archive file: " + paramString1, paramString2);
      boolean bool = a;
      if (bool) {
        return;
      }
      String str = paramString2.getMessage();
      paramString2 = str;
      if (str != null)
      {
        if (!str.contains("NOT_SUPPORTED_ENC_ALG")) {
          break label403;
        }
        if (f.a(null, f.b))
        {
          a(paramString1, com.estrongs.io.archive.g.d);
          return;
        }
        paramString2 = str.replaceAll("NOT_SUPPORTED_ENC_ALG", b.j(2131231772));
      }
      for (;;)
      {
        paramString1 = paramString2 + ": " + paramString1;
        g.g(b).sendMessage(g.g(b).obtainMessage(2, paramString1));
        return;
        label403:
        if (str.contains("NOT_SUPPORTED_ENC_ALG_STRENGTH"))
        {
          paramString2 = str.replaceAll("NOT_SUPPORTED_ENC_ALG", b.j(2131231773));
        }
        else if (str.contains("not a WinZip AES"))
        {
          if (f.a(null, f.b))
          {
            a(paramString1, com.estrongs.io.archive.g.d);
            return;
          }
          paramString2 = b.j(2131231772);
        }
        else if (str.contains("rarEncryptedException"))
        {
          if (f.a(null, f.b))
          {
            bool = g.b(b, paramString1);
            if (bool) {
              return;
            }
            a(paramString1, com.estrongs.io.archive.g.d);
            return;
          }
          paramString2 = b.j(2131231772);
        }
        else
        {
          paramString2 = str;
          if (str.contains("Permission denied"))
          {
            paramString2 = str;
            if (!ap.bC(paramString1)) {
              paramString2 = b.j(2131231987);
            }
          }
        }
      }
    }
    finally
    {
      b.W.post(new u(this));
    }
  }
  
  protected void a()
  {
    a = true;
  }
  
  public void run()
  {
    a(ap.bb(b.a), null);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */