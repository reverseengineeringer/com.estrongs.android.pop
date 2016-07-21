package com.estrongs.a.b;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.DialogInterface.OnClickListener;
import android.content.IntentFilter;
import android.content.res.Resources;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.zeroconf.w;
import com.estrongs.fs.b.bn;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;

public class d
{
  public static int a = 42135;
  public static String b = "ESuser";
  private static final String c = d.class.getSimpleName();
  private static ServerSocket d = null;
  private static Activity i;
  private static w j = null;
  private static BroadcastReceiver k = null;
  private static Object l = new Object();
  private static d m = null;
  private Socket e = null;
  private DataInputStream f = null;
  private DataOutputStream g = null;
  private String h = b.b();
  private String n = b.b();
  
  private d(Activity paramActivity, String paramString)
  {
    if (paramString != null) {
      b = paramString;
    }
    d = new ServerSocket(a, 10, null);
    new e(this).start();
  }
  
  public static d a(Activity paramActivity, String paramString)
  {
    synchronized (l)
    {
      if (m != null)
      {
        paramActivity = m;
        return paramActivity;
      }
      if (d != null) {
        return null;
      }
    }
    m = new d(paramActivity, paramString);
    i = paramActivity;
    k = new h();
    paramString = new IntentFilter();
    paramString.addAction("android.intent.action.SCREEN_OFF");
    paramString.addAction("android.intent.action.SCREEN_ON");
    paramString.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    paramActivity.registerReceiver(k, paramString);
    paramActivity = m;
    return paramActivity;
  }
  
  public static String a(InputStream paramInputStream)
  {
    Object localObject = null;
    if (0 == 0) {
      localObject = new byte[''];
    }
    int i1 = localObject.length;
    int i2 = 0;
    int i3 = paramInputStream.read();
    switch (i3)
    {
    default: 
      i1 -= 1;
      if (i1 < 0)
      {
        byte[] arrayOfByte = new byte[i2 + 128];
        i1 = arrayOfByte.length;
        System.arraycopy(localObject, 0, arrayOfByte, 0, i2);
        i1 = i1 - i2 - 1;
        localObject = arrayOfByte;
      }
      break;
    }
    for (;;)
    {
      localObject[i2] = ((byte)i3);
      i2 += 1;
      break;
      i1 = paramInputStream.read();
      if ((i1 != 10) && (i1 != -1)) {
        throw new IOException("Line reading error:no \\n!");
      }
      if ((i3 == -1) && (i2 == 0)) {
        throw new IOException("Line reading error: socket read error!");
      }
      return new String((byte[])localObject, 0, i2);
    }
  }
  
  public static void a()
  {
    synchronized (l)
    {
      if (m == null) {
        return;
      }
      if (d == null) {
        return;
      }
    }
    try
    {
      d.close();
      d = null;
      m = null;
      Activity localActivity = i;
      if (localActivity != null) {}
      try
      {
        i.unregisterReceiver(k);
        i();
        return;
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
    }
    catch (Error localError)
    {
      for (;;) {}
    }
  }
  
  private void a(Activity paramActivity, int paramInt, String paramString, bn parambn)
  {
    parambn = new m(this, paramActivity, n, new k(this), parambn);
    parambn.a(paramString);
    parambn.c(paramActivity.getString(2131231265), null);
    parambn.b(paramActivity.getString(2131231270), parambn);
    parambn.a(parambn);
    parambn.j();
  }
  
  private void a(Object paramObject)
  {
    paramObject = (bn)paramObject;
    if (ESActivity.H() == null) {
      try
      {
        a(j.getOutputStream(), 404, "Not found");
        try
        {
          j.close();
          throw ((Throwable)localObject);
          paramObject = new l(this, ESActivity.H(), (bn)paramObject);
          ((l)paramObject).setTitle(2131231715);
          ((l)paramObject).setConfirmButton(i.getResources().getString(2131231270), (DialogInterface.OnClickListener)paramObject);
          ((l)paramObject).setCancelButton(i.getResources().getString(2131231265), (DialogInterface.OnClickListener)paramObject);
          ((l)paramObject).show();
          return;
        }
        catch (Exception paramObject)
        {
          for (;;) {}
        }
      }
      catch (Exception localException)
      {
        try
        {
          j.close();
          return;
        }
        catch (Exception paramObject) {}
        localException = localException;
        try
        {
          j.close();
          return;
        }
        catch (Exception paramObject) {}
      }
      finally
      {
        localObject = finally;
      }
    }
  }
  
  private static void h()
  {
    new Thread(new i()).start();
  }
  
  private static void i()
  {
    new Thread(new j()).start();
  }
  
  public void a(OutputStream paramOutputStream, int paramInt, String paramString)
  {
    if (paramInt == 200) {}
    for (String str1 = "HTTP/1.1 200 OK\r\n";; str1 = "HTTP/1.1 404 Not Found\r\n")
    {
      String str2 = "Content-Length: " + paramString.length() + "\r\n";
      paramOutputStream.write(str1.getBytes());
      paramOutputStream.write("Server: ES Name Response Server\r\n".getBytes());
      paramOutputStream.write("Content-Type: text/html\r\n".getBytes());
      paramOutputStream.write(str2.getBytes());
      paramOutputStream.write("Connection: close\r\n".getBytes());
      paramOutputStream.write("\r\n".getBytes());
      paramOutputStream.write(paramString.getBytes());
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.a.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */