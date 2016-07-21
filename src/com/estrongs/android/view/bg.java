package com.estrongs.android.view;

import android.os.Handler;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.l;
import com.estrongs.io.archive.d;
import com.estrongs.io.archive.g;
import com.estrongs.io.archive.i;
import com.estrongs.io.archive.sevenzip.f;

class bg
  extends Thread
{
  boolean a = false;
  
  bg(ak paramak) {}
  
  private void a(String paramString1, String paramString2)
  {
    try
    {
      ak.a(b, d.a(paramString1, b.b, true, paramString2));
      ak.f(b);
      bool = a;
      if (bool) {
        return;
      }
      if (b.c != null) {
        ak.g(b).f(b.c);
      }
      ak.g(b).b();
      bool = a;
      if (bool) {
        return;
      }
      ak.a(b, ak.g(b).h());
      bool = a;
      if (bool) {
        return;
      }
      ak.h(b).sendEmptyMessage(0);
      return;
    }
    catch (Throwable paramString2)
    {
      l.c("ddd", "Failed to open the archive file: " + paramString1, paramString2);
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
          a(paramString1, g.d);
          return;
        }
        paramString2 = str.replaceAll("NOT_SUPPORTED_ENC_ALG", b.j(2131231772));
      }
      for (;;)
      {
        paramString1 = paramString2 + ": " + paramString1;
        ak.h(b).sendMessage(ak.h(b).obtainMessage(2, paramString1));
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
            a(paramString1, g.d);
            return;
          }
          paramString2 = b.j(2131231772);
        }
        else if (str.contains("rarEncryptedException"))
        {
          if (f.a(null, f.b))
          {
            bool = ak.b(b, paramString1);
            if (bool) {
              return;
            }
            a(paramString1, g.d);
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
      b.W.post(new bh(this));
    }
  }
  
  protected void a()
  {
    a = true;
  }
  
  public void run()
  {
    a(ap.bc(b.a), null);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */