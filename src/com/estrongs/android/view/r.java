package com.estrongs.android.view;

import android.os.Handler;
import android.util.Log;
import com.estrongs.android.util.am;
import com.estrongs.io.archive.c;
import com.estrongs.io.archive.h;

class r
  extends Thread
{
  boolean a = false;
  
  r(e parame) {}
  
  private void a(String paramString1, String paramString2)
  {
    try
    {
      e.a(b, c.a(paramString1, b.b, true, paramString2));
      e.e(b);
      bool = a;
      if (bool) {
        return;
      }
      if (b.d != null) {
        e.f(b).f(b.d);
      }
      e.f(b).b();
      bool = a;
      if (bool) {
        return;
      }
      e.a(b, e.f(b).h());
      bool = a;
      if (bool) {
        return;
      }
      e.g(b).sendEmptyMessage(0);
      return;
    }
    catch (Throwable paramString2)
    {
      Log.e("ArchiveFileGridViewWrapper", "Failed to open the archive file: " + paramString1, paramString2);
      boolean bool = a;
      if (bool) {
        return;
      }
      String str = paramString2.getMessage();
      paramString2 = str;
      if (str != null)
      {
        if (!str.contains("NOT_SUPPORTED_ENC_ALG")) {
          break label404;
        }
        if (com.estrongs.io.archive.sevenzip.f.a(null, com.estrongs.io.archive.sevenzip.f.b))
        {
          a(paramString1, com.estrongs.io.archive.f.d);
          return;
        }
        paramString2 = str.replaceAll("NOT_SUPPORTED_ENC_ALG", b.l(2131427898));
      }
      for (;;)
      {
        paramString1 = paramString2 + ": " + paramString1;
        e.g(b).sendMessage(e.g(b).obtainMessage(2, paramString1));
        return;
        label404:
        if (str.contains("NOT_SUPPORTED_ENC_ALG_STRENGTH"))
        {
          paramString2 = str.replaceAll("NOT_SUPPORTED_ENC_ALG", b.l(2131427899));
        }
        else if (str.contains("not a WinZip AES"))
        {
          if (com.estrongs.io.archive.sevenzip.f.a(null, com.estrongs.io.archive.sevenzip.f.b))
          {
            a(paramString1, com.estrongs.io.archive.f.d);
            return;
          }
          paramString2 = b.l(2131427898);
        }
        else if (str.contains("rarEncryptedException"))
        {
          if (com.estrongs.io.archive.sevenzip.f.a(null, com.estrongs.io.archive.sevenzip.f.b))
          {
            bool = e.b(b, paramString1);
            if (bool) {
              return;
            }
            a(paramString1, com.estrongs.io.archive.f.d);
            return;
          }
          paramString2 = b.l(2131427898);
        }
        else
        {
          paramString2 = str;
          if (str.contains("Permission denied"))
          {
            paramString2 = str;
            if (!am.bl(paramString1)) {
              paramString2 = b.l(2131428499);
            }
          }
        }
      }
    }
    finally
    {
      b.T.post(new s(this));
    }
  }
  
  protected void a()
  {
    a = true;
  }
  
  public void run()
  {
    a(am.aR(b.a), null);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */