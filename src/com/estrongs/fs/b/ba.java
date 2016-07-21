package com.estrongs.fs.b;

import android.content.Context;
import com.estrongs.a.b.d;
import com.estrongs.a.q;
import com.estrongs.android.g.f;
import com.estrongs.fs.h;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.PrintStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Properties;

public class ba
  extends com.estrongs.a.a
{
  Context a;
  private h b;
  private String c;
  private InetAddress d = null;
  
  ba(Context paramContext, h paramh, String paramString)
  {
    a = paramContext;
    b = paramh;
    c = paramString;
    int i = c.indexOf(':');
    c = c.substring(0, i);
    canRestart = false;
    canPause = false;
    task_type = 5;
    try
    {
      d = InetAddress.getByName(c);
      return;
    }
    catch (UnknownHostException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public static ba a(Context paramContext, h paramh, String paramString)
  {
    paramContext = new ba(paramContext, paramh, paramString);
    paramContext.addTaskStatusChangeListener(new bb());
    if (!com.estrongs.android.g.a.b()) {
      return null;
    }
    paramContext.execute();
    return paramContext;
  }
  
  public static void b() {}
  
  public InetAddress a()
  {
    return d;
  }
  
  public void handleMessage(int paramInt, Object... paramVarArgs)
  {
    switch (paramInt)
    {
    default: 
      super.handleMessage(paramInt, paramVarArgs);
      return;
    }
    processData.f = ((Long)paramVarArgs[0]).longValue();
    processData.a = ((String)paramVarArgs[1]);
    processData.e = ((Long)paramVarArgs[2]).longValue();
    onProgress(processData);
  }
  
  public boolean task()
  {
    f.a(c, b);
    processData.a = ("Playing media file for " + c);
    onProgress(processData);
    com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
    try
    {
      localObject2 = InetAddress.getByName(c);
      localSocket = new Socket();
      try
      {
        localSocket.connect(new InetSocketAddress((InetAddress)localObject2, d.a), 10000);
        localSocket.setSoTimeout(10000);
        if (localSocket.isConnected()) {
          break label160;
        }
        throw new Exception("connect timeout!");
      }
      catch (Exception localException1) {}
    }
    catch (Exception localException4)
    {
      for (;;)
      {
        Object localObject2;
        Object localObject3;
        int i;
        int j;
        Socket localSocket = null;
        continue;
        if (localObject3[1] >= 0)
        {
          j = localObject3[1];
          if (localObject3[2] < 0) {
            break label696;
          }
        }
        for (int k = localObject3[2];; k = localObject3[2] + 256)
        {
          if (localObject3[3] < 0) {
            break label708;
          }
          m = localObject3[3];
          break;
          i = localObject3[0] + 256;
          break label632;
          j = localObject3[1] + 256;
          break label644;
        }
        int m = localObject3[3] + 256;
      }
    }
    localException1.printStackTrace();
    setTaskResult(10000, new q("Connection closed.", localException1));
    try
    {
      localSocket.close();
      f.b(c, b);
      return false;
      label160:
      DataInputStream localDataInputStream = new DataInputStream(localSocket.getInputStream());
      localObject2 = new DataOutputStream(localSocket.getOutputStream());
      localObject3 = aw.a(a);
      if (localObject3[0] >= 0)
      {
        i = localObject3[0];
        break label632;
        ((DataOutputStream)localObject2).write(("MYPOST " + b.getAbsolutePath() + " HTTP/1.1\r\n" + "Connection: Keep-Alive\r\n" + "Content-Type: media/realtime\r\n" + "Content-Length: " + b.length() + "\r\n" + "User-Agent: Dalvik\r\n" + "Host: " + i + "." + j + "." + k + "." + m + ":" + com.estrongs.android.g.a.a() + "\r\n" + "\r\n").getBytes("utf-8"));
        while (localDataInputStream.available() == 0)
        {
          Thread.sleep(200L);
          if ((localException1 != null) && (localException1.taskStopped()))
          {
            setTaskResult(10000, new q("You canceled transfering.", null));
            localSocket.close();
            f.b(c, b);
            return false;
          }
        }
        localObject3 = new Properties();
        Object localObject1 = "";
        for (;;)
        {
          String str = localDataInputStream.readLine();
          if (str.length() == 0)
          {
            System.out.print((String)localObject1);
            localObject1 = new byte[Integer.parseInt(((Properties)localObject3).getProperty("content-length"))];
            localDataInputStream.read((byte[])localObject1);
            if (new String((byte[])localObject1).equals("OK")) {
              break;
            }
            setTaskResult(10000, new q("Receiver rejected.", null));
            localSocket.close();
            f.b(c, b);
            return false;
          }
          localObject2 = (String)localObject1 + str + "\r\n'";
          i = str.indexOf(':');
          localObject1 = localObject2;
          if (i >= 0)
          {
            ((Properties)localObject3).put(str.substring(0, i).trim().toLowerCase(), str.substring(i + 1).trim());
            localObject1 = localObject2;
          }
        }
      }
    }
    catch (Exception localException2)
    {
      try
      {
        localSocket.close();
        return true;
        localException2 = localException2;
      }
      catch (Exception localException3)
      {
        for (;;) {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */