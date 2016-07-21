package com.estrongs.fs.b;

import com.estrongs.a.a.m;
import com.estrongs.a.l;
import com.estrongs.a.q;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.d;
import com.estrongs.fs.impl.pcs.PcsFileSystem;
import com.estrongs.fs.impl.pcs.PcsFileSystem.PcsFileSystemException;
import java.util.Date;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.json.JSONObject;

public class ar
  extends com.estrongs.a.a
{
  public String a;
  public boolean b = false;
  public com.estrongs.fs.impl.pcs.a c;
  protected d d = null;
  private boolean e = false;
  private boolean f = true;
  private Object g = new Object();
  private Long h = Long.valueOf(0L);
  private Long i = Long.valueOf(0L);
  private String j = null;
  private String k = null;
  private String l = null;
  private PcsFileSystem m = (PcsFileSystem)com.estrongs.fs.impl.o.b.a("pcs");
  
  public ar(d paramd, String paramString, com.estrongs.fs.impl.pcs.a parama)
  {
    this(paramd, paramString, parama, null);
  }
  
  public ar(d paramd, String paramString1, com.estrongs.fs.impl.pcs.a parama, String paramString2)
  {
    l = paramString2;
    a(paramd, paramString1, parama);
    b();
    l.a().a(this);
  }
  
  public ar(d paramd, String paramString1, String paramString2)
  {
    this(paramd, paramString1, new com.estrongs.fs.impl.pcs.a(paramString1, paramString2, "/apps/Downloads/"));
  }
  
  public ar(d paramd, String paramString1, String paramString2, String paramString3)
  {
    this(paramd, paramString1, new com.estrongs.fs.impl.pcs.a(paramString1, paramString2, "/apps/Downloads/"), paramString3);
  }
  
  public ar(d paramd, JSONObject paramJSONObject)
  {
    super(paramJSONObject);
    a(paramd, paramJSONObject.optString("user_info"), new com.estrongs.fs.impl.pcs.a(paramJSONObject));
    if (paramJSONObject.optInt("status") != 4) {
      setTaskStatus(1);
    }
    for (;;)
    {
      processData.f = 0L;
      processData.e = paramJSONObject.optLong("size");
      return;
      setTaskStatus(4);
    }
  }
  
  private void a(long paramLong)
  {
    try
    {
      Thread.sleep(paramLong);
      return;
    }
    catch (InterruptedException localInterruptedException) {}
  }
  
  private void a(d paramd, String paramString, com.estrongs.fs.impl.pcs.a parama)
  {
    d = paramd;
    paramd = paramString.split(":");
    j = paramd[0];
    k = paramd[1];
    c = parama;
    a = ("pcs://" + j + ":" + k + "@pcs/files/apps/Downloads/");
  }
  
  private void b()
  {
    if (startTime == -1L) {
      startTime = System.currentTimeMillis();
    }
    if (bk.a(l)) {}
    for (String str = ap.d(c.b);; str = l)
    {
      recordSummary("task_id", Long.valueOf(getTaskId()));
      recordSummary("start_time", Long.valueOf(startTime));
      recordSummary("task_type", Integer.valueOf(23));
      recordSummary("restartable", Boolean.valueOf(false));
      recordSummary("title", str);
      recordSummary("items_ori_count", Integer.valueOf(1));
      recordSummary("source", c.b);
      recordSummary("target", a + str);
      recordSummary("status", Integer.valueOf(1));
      recordSummary("user_info", j + ":" + k);
      return;
    }
  }
  
  private boolean c()
  {
    int n = bk.a(c.getExtra("status"));
    if ((n == 2) || (n == 3) || (n == 4) || (n == 5) || (n == 6) || (n == 7))
    {
      setTaskResult(n, null);
      return true;
    }
    return false;
  }
  
  protected boolean a()
  {
    processData.i = 4;
    onProgress(processData);
    if (bk.a(c.a)) {}
    for (;;)
    {
      try
      {
        c.a = m.b(j, k, c.b, "/apps/Downloads/");
        recordSummary("pcs_id", c.a);
        com.estrongs.fs.a.b.a().a(c.getPath());
      }
      catch (PcsFileSystem.PcsFileSystemException localPcsFileSystemException1)
      {
        String str1;
        String str5;
        String str4;
        String str3;
        boolean bool;
        if (localPcsFileSystemException1 == null)
        {
          setTaskResult(10000, new q("Failed to add file " + c.b, null));
          return false;
        }
        setTaskResult(errorCode, null);
        return false;
      }
      try
      {
        if (c.getExtra("name") == null)
        {
          m.a(j, k, c, 0);
          if (c.getExtra("name") == null) {
            break label404;
          }
        }
        if (!bk.b(c.getName())) {
          continue;
        }
        if (!bk.a(l)) {
          break;
        }
        str1 = c.getName();
      }
      catch (PcsFileSystem.PcsFileSystemException localPcsFileSystemException2)
      {
        if (localPcsFileSystemException2 != null) {
          break label593;
        }
        setTaskResult(10000, new q("Failed to query file info " + c.b, null));
        return false;
        String str2 = l;
        continue;
        a(300L);
        continue;
        recordSummary("size", Long.valueOf(c.length()));
        processData.n = false;
        processData.j = c.getName();
        processData.c = 1L;
        processData.g = c.length();
        processData.e = processData.g;
        processData.a = c.b;
        processData.i = 2;
        onProgress(processData);
        l.a().b(this);
        return true;
        setTaskResult(errorCode, null);
      }
      str5 = ap.bR(c.getName());
      str4 = str1;
      if (bk.b(str5))
      {
        str3 = str5;
        if (!str5.startsWith(".")) {
          str3 = "." + str5;
        }
        str4 = str1;
        if (!str1.endsWith(str3)) {
          str4 = str1 + str3;
        }
      }
      recordSummary("title", str4);
      recordSummary("target", a + str4);
      if (c.length() < 1L)
      {
        m.a(j, k, c, 1);
        if (c.length() <= 0L) {
          break label470;
        }
      }
      bool = c();
      if (!bool) {
        break label480;
      }
      return false;
      label404:
      a(300L);
    }
    label470:
    label480:
    label593:
    return false;
  }
  
  protected void executeHelper()
  {
    super.executeHelper();
    if (getTaskStatus() == 5) {
      addTaskStatusChangeListener(aa);
    }
  }
  
  public void handleMessage(int paramInt, Object... arg2)
  {
    switch (paramInt)
    {
    default: 
      super.handleMessage(paramInt, ???);
    }
    do
    {
      return;
      m localm = processData;
      d += ((Long)???[0]).longValue();
      processData.a = ((String)???[1]);
      return;
      processData.g = ((Long)???[0]).longValue();
      processData.h = ((Long)???[1]).longValue();
      return;
      localm = processData;
      f += ((Long)???[0]).longValue();
      processData.a = ((String)???[1]);
    } while ((!hasProgressListener()) || (!f));
    long l1 = processData.f;
    long l2 = i.longValue();
    ??? = Long.valueOf(new Date().getTime());
    processData.b = ((int)((float)Long.valueOf(l1 - l2).longValue() / ((???.longValue() - h.longValue()) / 1000.0D)));
    i = Long.valueOf(processData.f);
    h = ???;
    synchronized (g)
    {
      f = false;
      onProgress(processData);
      return;
    }
  }
  
  public void requestStop()
  {
    l.a().c(this);
    super.requestStop();
  }
  
  public void reset()
  {
    super.reset();
    e = false;
  }
  
  public boolean task()
  {
    for (;;)
    {
      Object localObject4;
      try
      {
        localObject4 = c.b;
        localObject1 = localObject4;
        if (((String)localObject4).startsWith("http://t.cn/"))
        {
          localObject1 = new HttpGet((String)localObject4);
          localObject5 = PcsFileSystem.a(false);
        }
      }
      catch (Exception localException1)
      {
        Object localObject1;
        Object localObject5;
        int n;
        boolean bool;
        setTaskResult(10000, new q(localException1.toString(), localException1));
        return false;
        try
        {
          m.a(j, k, c, 1);
          if (bk.a(c.getExtra("status"), -1) == 7) {
            l.a().c(this);
          }
          bool = c();
          if (bool) {
            return false;
          }
        }
        catch (PcsFileSystem.PcsFileSystemException localPcsFileSystemException)
        {
          String str;
          if (n <= 3) {
            continue;
          }
          setTaskResult(errorCode, null);
          return false;
          n += 1;
          continue;
          a(300L);
          taskStopped();
        }
        processData.h = c.d;
        processData.f = processData.h;
        onProgress(processData);
        if ((processData.f >= processData.e) || (bk.a(c.getExtra("status"), -1) == 0))
        {
          recordSummary("end_time", Long.valueOf(c.lastModified()));
          str = summary().optString("title");
          if ((bk.b(str)) && (!bk.a(c.getName(), str)) && (m.renameFile(j, k, "/files/apps/Downloads/" + c.getName(), "/files/apps/Downloads/" + str))) {
            recordSummary("target", a + str);
          }
          str = c.getPath();
          com.estrongs.fs.a.b.a().a(str);
          n = str.indexOf("@pcs/files/");
          if (n >= 0) {
            com.estrongs.fs.a.b.a().a(com.estrongs.fs.impl.pcs.b.a().getPath() + str.substring(n + "@pcs/files/".length()));
          }
          setTaskResult(0, null);
          return true;
        }
        continue;
      }
      finally
      {
        e = true;
      }
      try
      {
        localObject5 = ((HttpClient)localObject5).execute((HttpUriRequest)localObject1);
        n = ((HttpResponse)localObject5).getStatusLine().getStatusCode();
        localObject1 = localObject4;
        if (n > 300)
        {
          localObject1 = localObject4;
          if (n < 400)
          {
            localObject5 = ((HttpResponse)localObject5).getHeaders("Location");
            localObject1 = localObject4;
            if (localObject5 != null)
            {
              localObject1 = localObject4;
              if (localObject5.length > 0) {
                localObject1 = localObject5[0].getValue();
              }
            }
          }
        }
      }
      catch (Exception localException2)
      {
        Object localObject3 = localObject4;
        continue;
        continue;
        localObject4 = localObject3;
      }
    }
    if (((String)localObject1).startsWith("http://dwz.cn"))
    {
      localObject4 = PcsFileSystem.e((String)localObject1);
      if (localObject4 != null)
      {
        localObject1 = localObject4;
        if (((String)localObject4).startsWith("http://www.estrongs.com/esshare?s=")) {
          localObject1 = bk.b(((String)localObject4).substring("http://www.estrongs.com/esshare?s=".length()).replace('_', ' ').replace('-', '/'), false);
        }
        if (((String)localObject1).startsWith("http://dwz.cn"))
        {
          localObject4 = PcsFileSystem.e((String)localObject1);
          if (localObject4 != null)
          {
            localObject1 = localObject4;
            c.b = ((String)localObject1);
            bool = a();
            if (!bool)
            {
              e = true;
              return false;
            }
            if (hasProgressListener()) {
              new as(this).start();
            }
            processData.i = 2;
            onProgress(processData);
            n = 0;
            bool = b;
            if (bool) {
              try
              {
                d.a(c);
                setTaskStatus(5);
                e = true;
                return false;
              }
              catch (FileSystemException localFileSystemException)
              {
                for (;;)
                {
                  localFileSystemException.printStackTrace();
                }
              }
            }
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */