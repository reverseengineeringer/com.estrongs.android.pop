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
import com.estrongs.fs.impl.media.e;
import com.estrongs.io.a.a.a;
import com.estrongs.io.archive.g;
import com.estrongs.io.archive.i;
import com.estrongs.io.archive.sevenzip.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class bp
  extends HandlerThread
{
  public List<String> a = new ArrayList();
  public List<String> b = new ArrayList();
  public List<String> c = new ArrayList();
  public List<String> d = new ArrayList();
  public int e = 1;
  
  public bp(bb parambb, String paramString, int paramInt)
  {
    super(paramString, paramInt);
  }
  
  private void a(HashMap<String, String> paramHashMap, String paramString)
  {
    for (;;)
    {
      try
      {
        com.estrongs.android.pop.app.compress.a.d.a(ff).a, ff).c, false);
        bb.a(f, com.estrongs.io.archive.d.a(ff).a, paramHashMap, paramString));
        if (f.a != null) {
          bb.k(f).f(f.a);
        }
        if ((ff).e != null) && (ff).e.size() != 0)) {
          continue;
        }
        bb.k(f).a(bb.b(f));
        paramString = new Message();
        what = 1;
        arg1 = 11;
        if (bb.b(f).b()) {
          continue;
        }
        obj = ff).c;
        com.estrongs.android.pop.app.compress.a.d.a(ff).a, ff).c, true);
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        com.estrongs.android.pop.app.compress.a.d.b(ff).a);
        paramString = localThrowable.getMessage();
        if (paramString != null) {
          break label1106;
        }
        paramString = localThrowable.getClass().getName();
        if (!paramString.contains("WRONG PASSWORD")) {
          break label455;
        }
        bb.a(f, null);
        bb.i(f).post(new bq(this));
        bb.h(f);
        return;
        com.estrongs.android.pop.app.compress.a.d.b(ff).a);
        continue;
      }
      finally
      {
        if ((!ff).f) || (bb.k(f) == null)) {
          continue;
        }
        bb.k(f).g();
      }
      bb.i(f).sendMessage(paramString);
      if (bb.j(f) != null) {
        bb.j(f).a();
      }
      if ((ff).f) && (bb.k(f) != null)) {
        bb.k(f).g();
      }
      return;
      bb.k(f).a(ff).e, bb.b(f));
    }
    label455:
    label1106:
    for (;;)
    {
      if (paramString.contains("NOT_SUPPORTED_ENC_ALG"))
      {
        if (!f.a(null, f.b))
        {
          bb.i(f).sendMessage(bb.i(f).obtainMessage(1, 11, 0, null));
          if (bb.j(f) != null) {
            bb.j(f).a();
          }
          if ((!ff).f) || (bb.k(f) == null)) {
            break;
          }
          bb.k(f).g();
          return;
        }
        a(paramHashMap, g.d);
        if ((!ff).f) || (bb.k(f) == null)) {
          break;
        }
        bb.k(f).g();
        return;
      }
      if (paramString.contains("NOT_SUPPORTED_ENC_ALG_STRENGTH")) {
        paramHashMap = paramString.replaceAll("NOT_SUPPORTED_ENC_ALG", bb.g(f).getResources().getString(2131231773));
      }
      for (;;)
      {
        bb.i(f).sendMessage(bb.i(f).obtainMessage(2, bb.g(f).getResources().getString(2131231775) + "(" + paramHashMap + ")."));
        if ((!ff).f) || (bb.k(f) == null)) {
          break;
        }
        bb.k(f).g();
        return;
        if (paramString.contains("not a WinZip AES"))
        {
          if (!f.a(null, f.b))
          {
            bb.i(f).sendMessage(bb.i(f).obtainMessage(1, 11, 0, null));
            if (bb.j(f) != null) {
              bb.j(f).a();
            }
            if ((!ff).f) || (bb.k(f) == null)) {
              break;
            }
            bb.k(f).g();
            return;
          }
          a(paramHashMap, g.d);
          if ((!ff).f) || (bb.k(f) == null)) {
            break;
          }
          bb.k(f).g();
          return;
        }
        if (paramString.contains("rarEncryptedException"))
        {
          paramString = new boolean[1];
          paramString[0] = 0;
          if ((f.a(null, f.b, paramString)) && (paramString[0] == 0)) {
            a(paramHashMap, g.d);
          }
          while ((ff).f) && (bb.k(f) != null))
          {
            bb.k(f).g();
            return;
            bb.i(f).sendMessage(bb.i(f).obtainMessage(2, 11, 0, bb.g(f).getResources().getString(2131231391)));
          }
          break;
        }
        if (paramString.contains("FILENAME_CONFLICT"))
        {
          paramHashMap = paramString.replaceAll("FILENAME_CONFLICT", bb.g(f).getResources().getString(2131231763));
        }
        else if (paramString.contains("path_create_error"))
        {
          paramHashMap = paramString.replaceAll("path_create_error", bb.g(f).getResources().getString(2131231915));
        }
        else
        {
          paramHashMap = paramString;
          if (paramString.contains("Permission denied"))
          {
            paramHashMap = paramString;
            if (!ap.bC(ff).a)) {
              paramHashMap = bb.g(f).getResources().getString(2131231987);
            }
          }
        }
      }
    }
  }
  
  public void run()
  {
    if ((bg.o(ff).a)) && (!f.a(null, f.a)))
    {
      bb.i(f).sendMessage(bb.i(f).obtainMessage(1, 11, 0, null));
      if (bb.j(f) != null) {
        bb.j(f).a();
      }
    }
    label118:
    label257:
    label276:
    do
    {
      return;
      HashMap localHashMap = new HashMap();
      localHashMap.put("charset_name", ff).b);
      if (ff).f)
      {
        String str1 = "true";
        localHashMap.put("reload", str1);
        localHashMap.put("password", bb.c(f));
        a(localHashMap, null);
        if ((ff).g != 1) && (ff).g != 3)) {
          break label257;
        }
        b.a().a(ap.bW(ff).c) + "*");
      }
      for (;;)
      {
        try
        {
          if (!bk.f()) {
            break label276;
          }
          if (d.size() <= 0) {
            break;
          }
          e.a(d, null);
          return;
        }
        catch (MediaStoreInsertException localMediaStoreInsertException)
        {
          localMediaStoreInsertException.printStackTrace();
          cm.b();
          return;
        }
        String str2 = "false";
        break label118;
        b.a().a(ff).c);
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
 * Qualified Name:     com.estrongs.android.pop.app.compress.bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */