package com.estrongs.android.pop.bt;

import b.a.a.a;
import b.b.c;
import b.b.d;
import b.b.f;
import com.estrongs.android.util.l;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Timer;

class i
  extends f
{
  Timer a = new Timer();
  boolean b = false;
  boolean c = false;
  a d;
  
  private i(g paramg) {}
  
  public int a(c paramc1, c paramc2)
  {
    b = true;
    a.cancel();
    return 160;
  }
  
  public int a(c paramc1, c paramc2, boolean paramBoolean1, boolean paramBoolean2)
  {
    return super.a(paramc1, paramc2, paramBoolean1, paramBoolean2);
  }
  
  public int a(d paramd)
  {
    i = 0;
    for (;;)
    {
      try
      {
        localObject1 = paramd.h();
        str = (String)((c)localObject1).a(1);
        localObject2 = (String)((c)localObject1).a(66);
        if ((str == null) && (localObject2 == null)) {
          return 192;
        }
        g.a(e, "Receiving " + str);
        localObject2 = (Long)((c)localObject1).a(195);
        if (localObject2 != null)
        {
          g.a(e).b(0);
          g.a(e).a(((Long)localObject2).intValue());
        }
        if (str != null) {
          continue;
        }
        localObject1 = File.createTempFile("temp", "tmp", g.d());
        localObject1 = new FileOutputStream((File)localObject1);
        localInputStream = paramd.a();
      }
      catch (IOException paramd)
      {
        Object localObject1;
        String str;
        Object localObject2;
        InputStream localInputStream;
        l.a("OBEXOppServer", "OBEX Server onPut error", paramd);
        return 211;
        ((FileOutputStream)localObject1).write(j);
        int j = i + 1;
        i = j;
        if (localObject2 == null) {
          continue;
        }
        i = j;
        if (j % 100 != 0) {
          continue;
        }
        g.a(e).b(j);
        i = j;
        continue;
      }
      finally
      {
        g.a(e).a();
      }
      if (!g.b(e))
      {
        j = localInputStream.read();
        if (j != -1) {
          continue;
        }
      }
      paramd.e();
      ((FileOutputStream)localObject1).close();
      g.a(e, "Received " + str);
      c = true;
      g.a(e).a();
      return 160;
      localObject1 = new File(g.d(), str);
    }
  }
  
  void a()
  {
    if (!b) {
      l.b("OBEXOppServer", "OBEX connection timeout");
    }
    try
    {
      d.e();
      if (!c) {
        g.a(e, "Disconnected");
      }
      return;
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  void a(a parama)
  {
    g.a(e, "Client connected");
    d = parama;
    if (!b) {
      a.schedule(new j(this), 30000L);
    }
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    l.b("OBEXOppServer", "OBEX AuthFailure " + new String(paramArrayOfByte));
  }
  
  public int b(d paramd)
  {
    try
    {
      paramd = paramd.h();
      String str = (String)paramd.a(1);
      paramd = (String)paramd.a(66);
      if (paramd == null) {
        return 192;
      }
      boolean bool = paramd.equals("x-obex/capability");
      if (bool) {
        return 160;
      }
      return 211;
    }
    catch (IOException paramd)
    {
      paramd = paramd;
      l.a("OBEXOppServer", "OBEX Server onGet error", paramd);
      return 211;
    }
    finally {}
  }
  
  public void b(c paramc1, c paramc2)
  {
    if (!c) {
      g.a(e, "Disconnected");
    }
    b = false;
  }
  
  public int c(c paramc1, c paramc2)
  {
    return super.c(paramc1, paramc2);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.bt.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */