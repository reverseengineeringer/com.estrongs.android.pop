package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.content.res.Resources;
import android.os.HandlerThread;
import android.os.Message;
import com.estrongs.android.pop.utils.cd;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bc;
import com.estrongs.android.util.bd;
import com.estrongs.fs.impl.media.MediaStoreInsertException;
import com.estrongs.io.a.a.a;
import com.estrongs.io.archive.c;
import com.estrongs.io.archive.h;
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
        l.a(f, c.a(l.i(f), paramHashMap, paramString));
        if (l.q(f) != null) {
          l.q(f).a();
        }
        if (f.c != null) {
          l.b(f).f(f.c);
        }
        if ((l.r(f) == null) || (l.r(f).size() == 0))
        {
          l.b(f).a(l.a(f));
          if (l.q(f) != null) {
            l.q(f).b();
          }
          paramString = new Message();
          what = 1;
          arg1 = 11;
          if (!l.a(f).b()) {
            obj = l.p(f);
          }
          l.n(f).sendMessage(paramString);
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        paramString = localThrowable.getMessage();
        if (paramString != null) {
          break label1036;
        }
        paramString = localThrowable.getClass().getName();
        if (!paramString.contains("WRONG PASSWORD")) {
          continue;
        }
        l.a(f, null);
        l.n(f).post(new af(this));
        l.m(f);
        return;
        if (!paramString.contains("NOT_SUPPORTED_ENC_ALG")) {
          continue;
        }
        if (com.estrongs.io.archive.sevenzip.f.a(null, com.estrongs.io.archive.sevenzip.f.b)) {
          continue;
        }
        l.n(f).sendMessage(l.n(f).obtainMessage(1, 11, 0, null));
        f.c();
        return;
        a(paramHashMap, com.estrongs.io.archive.f.d);
        return;
        if (!paramString.contains("NOT_SUPPORTED_ENC_ALG_STRENGTH")) {
          continue;
        }
        paramHashMap = paramString.replaceAll("NOT_SUPPORTED_ENC_ALG", l.d(f).getResources().getString(2131427899));
        l.n(f).sendMessage(l.n(f).obtainMessage(2, l.d(f).getResources().getString(2131427861) + "(" + paramHashMap + ")."));
        return;
        if (!paramString.contains("not a WinZip AES")) {
          continue;
        }
        if (com.estrongs.io.archive.sevenzip.f.a(null, com.estrongs.io.archive.sevenzip.f.b)) {
          continue;
        }
        l.n(f).sendMessage(l.n(f).obtainMessage(1, 11, 0, null));
        f.c();
        return;
        a(paramHashMap, com.estrongs.io.archive.f.d);
        return;
        if (!paramString.contains("rarEncryptedException")) {
          break label920;
        }
        paramString = new boolean[1];
        paramString[0] = 0;
        if ((!com.estrongs.io.archive.sevenzip.f.a(null, com.estrongs.io.archive.sevenzip.f.b, paramString)) || (paramString[0] != 0)) {
          break label877;
        }
        if (l.s(f) == null) {
          continue;
        }
        l.n(f).sendMessage(l.n(f).obtainMessage(1, 11, 0, null));
        l.n(f).post(new ag(this));
        return;
        a(paramHashMap, com.estrongs.io.archive.f.d);
        continue;
      }
      finally
      {
        if ((!l.k(f)) || (l.b(f) == null)) {
          continue;
        }
        l.b(f).g();
      }
      l.b(f).a(l.r(f), l.a(f));
    }
    label877:
    label920:
    label1036:
    for (;;)
    {
      l.n(f).sendMessage(l.n(f).obtainMessage(2, 11, 0, l.d(f).getResources().getString(2131428546)));
      continue;
      if (paramString.contains("FILENAME_CONFLICT"))
      {
        paramHashMap = paramString.replaceAll("FILENAME_CONFLICT", l.d(f).getResources().getString(2131427894));
      }
      else if (paramString.contains("path_create_error"))
      {
        paramHashMap = paramString.replaceAll("path_create_error", l.d(f).getResources().getString(2131427763));
      }
      else
      {
        paramHashMap = paramString;
        if (paramString.contains("Permission denied"))
        {
          paramHashMap = paramString;
          if (!am.bl(l.i(f))) {
            paramHashMap = l.d(f).getResources().getString(2131428499);
          }
        }
      }
    }
  }
  
  public void run()
  {
    if ((bc.o(l.i(f))) && (!com.estrongs.io.archive.sevenzip.f.a(null, com.estrongs.io.archive.sevenzip.f.a)))
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
        com.estrongs.fs.a.b.a().a(am.bF(l.p(f)) + "*");
      }
      for (;;)
      {
        try
        {
          if (!bd.f()) {
            break label240;
          }
          if (d.size() <= 0) {
            break;
          }
          com.estrongs.fs.impl.media.d.a(d, null);
          return;
        }
        catch (MediaStoreInsertException localMediaStoreInsertException)
        {
          localMediaStoreInsertException.printStackTrace();
          cd.b();
          return;
        }
        String str2 = "false";
        break label94;
        com.estrongs.fs.a.b.a().a(l.p(f));
      }
      if (a.size() > 0) {
        com.estrongs.fs.impl.k.b.c().a(a);
      }
      if (b.size() > 0) {
        com.estrongs.fs.impl.i.b.c().a(b);
      }
    } while (c.size() <= 0);
    com.estrongs.fs.impl.q.b.c().a(c);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */