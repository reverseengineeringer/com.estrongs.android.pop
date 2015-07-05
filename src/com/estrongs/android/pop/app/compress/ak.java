package com.estrongs.android.pop.app.compress;

import android.widget.Button;
import android.widget.EditText;
import com.estrongs.fs.FileSystemException;
import com.estrongs.io.archive.aeszip.k;
import com.estrongs.io.archive.d;
import com.estrongs.io.archive.i;
import com.estrongs.io.archive.sevenzip.f;
import com.estrongs.io.archive.sevenzip.x;
import java.io.IOException;
import java.util.HashMap;

class ak
  extends Thread
{
  ak(ai paramai, String paramString)
  {
    super(paramString);
  }
  
  public void run()
  {
    Object localObject1 = null;
    try
    {
      if (("7z".equalsIgnoreCase(ai.i(a))) && (!f.a(null, f.a)))
      {
        ai.p(a).sendMessage(ai.p(a).obtainMessage(1, 10, 0, null));
        a.a();
        return;
      }
      str2 = ai.g(a);
      ai.p(a).b(str2);
      str1 = ai.l(a).getText().toString();
      localHashMap = new HashMap(2);
      if (!"zip".equalsIgnoreCase(ai.i(a))) {
        break label445;
      }
      if (ai.o(a).getText().equals(ai.m(a)[0])) {
        localHashMap.put("compress_level", String.valueOf(0));
      }
      if (ai.o(a).getText().equals(ai.m(a)[1])) {
        localHashMap.put("compress_level", String.valueOf(1));
      }
      if (ai.o(a).getText().equals(ai.m(a)[2])) {
        localHashMap.put("compress_level", String.valueOf(-1));
      }
      if (ai.o(a).getText().equals(ai.m(a)[3])) {
        localHashMap.put("compress_level", String.valueOf(9));
      }
      if (str1.length() > 0)
      {
        localHashMap.put("password", str1);
        a.b = new k(str2, ai.a(a), localHashMap);
      }
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        HashMap localHashMap;
        ai.p(a).sendMessage(ai.p(a).obtainMessage(2, localIOException.getMessage()));
        localIOException.printStackTrace();
        a.a();
        return;
        if ("7z".equalsIgnoreCase(ai.i(a)))
        {
          ai localai = a;
          com.estrongs.io.a.a.b localb = ai.a(a);
          if (str1.length() != 0) {
            break;
          }
          b = new x(str2, localb, localIOException);
        }
      }
    }
    catch (NullPointerException localNullPointerException)
    {
      for (;;)
      {
        String str2;
        String str1;
        ai.p(a).sendMessage(ai.p(a).obtainMessage(2, localNullPointerException.getMessage()));
        localNullPointerException.printStackTrace();
        a.a();
        return;
        Object localObject2 = str1;
        continue;
        ai.p(a).sendMessage(ai.p(a).obtainMessage(1, 10, 0, str2));
        com.estrongs.fs.a.b.a().a(str2);
      }
    }
    catch (FileSystemException localFileSystemException)
    {
      ai.p(a).sendMessage(ai.p(a).obtainMessage(2, localFileSystemException.getMessage()));
      localFileSystemException.printStackTrace();
      a.a();
    }
    if (a.b == null) {
      a.b = new i(str2, ai.a(a), localHashMap);
    }
    a.b.a(ai.q(a));
    if (ai.a(a).b())
    {
      ai.p(a).sendMessage(ai.p(a).obtainMessage(1, 10, 0, null));
      a.a();
      return;
    }
    label445:
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */