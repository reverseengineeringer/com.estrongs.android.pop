package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.content.res.Resources;
import android.os.HandlerThread;
import android.os.Message;
import com.estrongs.android.pop.utils.cm;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.android.util.bk;
import com.estrongs.fs.a.b;
import com.estrongs.fs.impl.media.MediaStoreInsertException;
import com.estrongs.io.a.a.a;
import com.estrongs.io.archive.g;
import com.estrongs.io.archive.i;
import com.estrongs.io.archive.sevenzip.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class ae
  extends HandlerThread
{
  public List<String> a = new ArrayList();
  public List<String> b = new ArrayList();
  public List<String> c = new ArrayList();
  public List<String> d = new ArrayList();
  public int e = 1;
  
  public ae(l paraml, String paramString, int paramInt)
  {
    super(paramString, paramInt);
  }
  
  private void a(HashMap<String, String> paramHashMap, String paramString)
  {
    for (;;)
    {
      try
      {
        com.estrongs.android.pop.app.compress.a.d.a(l.i(f), l.p(f), false);
        l.a(f, com.estrongs.io.archive.d.a(l.i(f), paramHashMap, paramString));
        if (l.q(f) != null) {
          l.q(f).a();
        }
        if (f.c != null) {
          l.b(f).f(f.c);
        }
        if ((l.r(f) != null) && (l.r(f).size() != 0)) {
          continue;
        }
        l.b(f).a(l.a(f));
        if (l.q(f) != null) {
          l.q(f).b();
        }
        paramString = new Message();
        what = 1;
        arg1 = 11;
        if (l.a(f).b()) {
          continue;
        }
        obj = l.p(f);
        com.estrongs.android.pop.app.compress.a.d.a(l.i(f), l.p(f), true);
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        com.estrongs.android.pop.app.compress.a.d.b(l.i(f));
        paramString = localThrowable.getMessage();
        if (paramString != null) {
          break label1101;
        }
        paramString = localThrowable.getClass().getName();
        if (!paramString.contains("WRONG PASSWORD")) {
          break label435;
        }
        l.a(f, null);
        l.n(f).post(new af(this));
        l.m(f);
        return;
        com.estrongs.android.pop.app.compress.a.d.b(l.i(f));
        continue;
      }
      finally
      {
        if ((!l.k(f)) || (l.b(f) == null)) {
          continue;
        }
        l.b(f).g();
      }
      l.n(f).sendMessage(paramString);
      if ((l.k(f)) && (l.b(f) != null)) {
        l.b(f).g();
      }
      return;
      l.b(f).a(l.r(f), l.a(f));
    }
    label435:
    label1101:
    for (;;)
    {
      if (paramString.contains("NOT_SUPPORTED_ENC_ALG"))
      {
        if (!f.a(null, f.b))
        {
          l.n(f).sendMessage(l.n(f).obtainMessage(1, 11, 0, null));
          f.c();
          if ((!l.k(f)) || (l.b(f) == null)) {
            break;
          }
          l.b(f).g();
          return;
        }
        a(paramHashMap, g.d);
        if ((!l.k(f)) || (l.b(f) == null)) {
          break;
        }
        l.b(f).g();
        return;
      }
      if (paramString.contains("NOT_SUPPORTED_ENC_ALG_STRENGTH")) {
        paramHashMap = paramString.replaceAll("NOT_SUPPORTED_ENC_ALG", l.d(f).getResources().getString(2131231773));
      }
      for (;;)
      {
        l.n(f).sendMessage(l.n(f).obtainMessage(2, l.d(f).getResources().getString(2131231775) + "(" + paramHashMap + ")."));
        if ((!l.k(f)) || (l.b(f) == null)) {
          break;
        }
        l.b(f).g();
        return;
        if (paramString.contains("not a WinZip AES"))
        {
          if (!f.a(null, f.b))
          {
            l.n(f).sendMessage(l.n(f).obtainMessage(1, 11, 0, null));
            f.c();
            if ((!l.k(f)) || (l.b(f) == null)) {
              break;
            }
            l.b(f).g();
            return;
          }
          a(paramHashMap, g.d);
          if ((!l.k(f)) || (l.b(f) == null)) {
            break;
          }
          l.b(f).g();
          return;
        }
        if (paramString.contains("rarEncryptedException"))
        {
          paramString = new boolean[1];
          paramString[0] = 0;
          if ((f.a(null, f.b, paramString)) && (paramString[0] == 0)) {
            if (l.s(f) != null)
            {
              l.n(f).sendMessage(l.n(f).obtainMessage(1, 11, 0, null));
              l.n(f).post(new ag(this));
            }
          }
          while ((l.k(f)) && (l.b(f) != null))
          {
            l.b(f).g();
            return;
            a(paramHashMap, g.d);
            continue;
            l.n(f).sendMessage(l.n(f).obtainMessage(2, 11, 0, l.d(f).getResources().getString(2131231391)));
          }
          break;
        }
        if (paramString.contains("FILENAME_CONFLICT"))
        {
          paramHashMap = paramString.replaceAll("FILENAME_CONFLICT", l.d(f).getResources().getString(2131231763));
        }
        else if (paramString.contains("path_create_error"))
        {
          paramHashMap = paramString.replaceAll("path_create_error", l.d(f).getResources().getString(2131231915));
        }
        else
        {
          paramHashMap = paramString;
          if (paramString.contains("Permission denied"))
          {
            paramHashMap = paramString;
            if (!ap.bC(l.i(f))) {
              paramHashMap = l.d(f).getResources().getString(2131231987);
            }
          }
        }
      }
    }
  }
  
  public void run()
  {
    if ((bg.o(l.i(f))) && (!f.a(null, f.a)))
    {
      l.n(f).sendMessage(l.n(f).obtainMessage(1, 11, 0, null));
      f.c();
    }
    label94:
    label224:
    label240:
    do
    {
      return;
      HashMap localHashMap = new HashMap();
      localHashMap.put("charset_name", l.j(f));
      if (l.k(f))
      {
        String str1 = "true";
        localHashMap.put("reload", str1);
        localHashMap.put("password", l.f(f));
        a(localHashMap, null);
        if ((l.o(f) != 1) && (l.o(f) != 3)) {
          break label224;
        }
        b.a().a(ap.bW(l.p(f)) + "*");
      }
      for (;;)
      {
        try
        {
          if (!bk.f()) {
            break label240;
          }
          if (d.size() <= 0) {
            break;
          }
          com.estrongs.fs.impl.media.e.a(d, null);
          return;
        }
        catch (MediaStoreInsertException localMediaStoreInsertException)
        {
          localMediaStoreInsertException.printStackTrace();
          cm.b();
          return;
        }
        String str2 = "false";
        break label94;
        b.a().a(l.p(f));
      }
      if (a.size() > 0) {
        com.estrongs.fs.impl.p.c.b().a(a);
      }
      if (b.size() > 0) {
        com.estrongs.fs.impl.n.d.b().a(b);
      }
    } while (c.size() <= 0);
    com.estrongs.fs.impl.v.c.b().a(c);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */