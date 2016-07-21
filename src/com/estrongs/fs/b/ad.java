package com.estrongs.fs.b;

import android.webkit.MimeTypeMap;
import com.estrongs.a.a;
import com.estrongs.a.a.c;
import com.estrongs.a.a.m;
import com.estrongs.a.l;
import com.estrongs.a.q;
import com.estrongs.android.pop.multicopy.MultiThreadCopy;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bg;
import com.estrongs.android.util.bk;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.i;
import com.estrongs.fs.impl.pcs.PcsFileSystem;
import com.estrongs.fs.util.j;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.json.JSONObject;

public class ad
  extends a
{
  protected com.estrongs.fs.d a = null;
  protected List<u> b = new ArrayList();
  boolean c = false;
  af d = new af();
  public String e;
  public boolean f = true;
  public boolean g = false;
  Long h = Long.valueOf(0L);
  Long i = Long.valueOf(0L);
  private String j;
  private String k;
  private boolean l = true;
  private boolean m = false;
  private String n;
  private String o = null;
  private String p = null;
  
  public ad(com.estrongs.fs.d paramd, String paramString1, String paramString2)
  {
    this(paramd, paramString1, paramString2, true);
  }
  
  public ad(com.estrongs.fs.d paramd, String paramString1, String paramString2, boolean paramBoolean)
  {
    this(paramd, paramString1, paramString2, true, null);
  }
  
  public ad(com.estrongs.fs.d paramd, String paramString1, String paramString2, boolean paramBoolean, String paramString3)
  {
    a = paramd;
    j = paramString1;
    o = paramString3;
    paramd = paramString2;
    if (!paramString2.endsWith(File.separator)) {
      paramd = paramString2 + File.separator;
    }
    k = paramd;
    paramd = new File(paramd);
    if (!paramd.exists()) {
      paramd.mkdirs();
    }
    d();
    if (paramBoolean) {
      l.a().a(this);
    }
  }
  
  public ad(com.estrongs.fs.d paramd, JSONObject paramJSONObject)
  {
    super(paramJSONObject);
    a = paramd;
    j = paramJSONObject.optString("source");
    e = paramJSONObject.optString("target");
    k = ap.bB(e);
    if (!k.endsWith(File.separator)) {
      k += File.separator;
    }
    o = paramJSONObject.optString("mime_type");
    paramd = MultiThreadCopy.a(e);
    if (paramd.exists())
    {
      processData.f = MultiThreadCopy.a(paramd, e);
      processData.e = paramJSONObject.optLong("size");
      if (processData.f <= 0L) {
        break label304;
      }
      if (processData.f >= processData.e) {
        break label280;
      }
      processData.i = 2;
      setTaskStatus(5);
    }
    label280:
    while (processData.f != processData.e)
    {
      return;
      processData.f = new File(e).length();
      break;
    }
    setTaskStatus(4);
    return;
    label304:
    if (paramJSONObject.optInt("status") == 4)
    {
      setTaskStatus(4);
      return;
    }
    setTaskStatus(5);
  }
  
  private String a(String paramString1, String paramString2)
  {
    String str = paramString2;
    int i2;
    int i1;
    if (bk.b(paramString1))
    {
      paramString1 = paramString1.split(";");
      i2 = paramString1.length;
      i1 = 0;
    }
    for (;;)
    {
      str = paramString2;
      if (i1 < i2)
      {
        str = paramString1[i1];
        if ((!bk.b(str)) || (!j.contains(str))) {}
      }
      else
      {
        return str;
      }
      i1 += 1;
    }
  }
  
  private void d()
  {
    if (startTime == -1L) {
      startTime = System.currentTimeMillis();
    }
    recordSummary("task_id", Long.valueOf(getTaskId()));
    recordSummary("start_time", Long.valueOf(startTime));
    recordSummary("task_type", Integer.valueOf(6));
    recordSummary("restartable", Boolean.valueOf(true));
    recordSummary("items_ori_count", Integer.valueOf(1));
    recordSummary("source", j);
    recordSummary("file_type", Integer.valueOf(bg.b(j)));
    recordSummary("status", Integer.valueOf(1));
    recordSummary("mime_type", o);
  }
  
  protected boolean a()
  {
    if (processData.i == -1) {
      processData.i = 4;
    }
    onProgress(processData);
    processData.e = summary().optLong("size");
    int i1;
    int i2;
    Object localObject4;
    if ((j.toLowerCase().startsWith("http")) || (j.toLowerCase().startsWith("https")))
    {
      localObject5 = new TypedMap();
      i1 = 0;
      i2 = 0;
      localObject1 = null;
      Object localObject2 = null;
      localObject4 = localObject2;
      if (localObject2 != null) {
        break label306;
      }
      if ((!taskStopped()) && (i1 <= 20)) {}
    }
    label274:
    label306:
    while (localObject4 == null)
    {
      do
      {
        return false;
        if (i2 == 0) {
          break label274;
        }
        try
        {
          localObject4 = (c)getDecision(c.class, new Object[] { j, Long.valueOf(getTaskId()) });
          try
          {
            if (!d) {
              break;
            }
            d = false;
            requestStop();
            return false;
          }
          catch (FileSystemException localFileSystemException1)
          {
            localObject1 = localObject4;
          }
        }
        catch (FileSystemException localFileSystemException2)
        {
          for (;;)
          {
            Object localObject3;
            continue;
            localObject1 = localObject5;
          }
        }
      } while ((localFileSystemException1.getMessage() == null) || (!localFileSystemException1.getMessage().contains("unauthorized")));
      if (localObject1 != null) {
        e = false;
      }
      i1 += 1;
      i2 = 1;
      localObject3 = null;
      break;
      ((TypedMap)localObject5).put("NEW_USERNAME", b);
      ((TypedMap)localObject5).put("NEW_PASSWORD", c);
      localObject3 = new com.estrongs.fs.impl.m.b().b(j, (TypedMap)localObject5);
      localObject1 = localObject4;
      for (;;)
      {
        break;
        localObject3 = new com.estrongs.fs.impl.m.b().a(j);
      }
      localObject4 = a.j(j);
    }
    processData.j = ((h)localObject4).getName();
    processData.c = 1L;
    processData.e = ((h)localObject4).length();
    localObject3 = summary().optString("title");
    localObject1 = localObject3;
    if (bk.a((CharSequence)localObject3)) {
      if (!j.startsWith("http://"))
      {
        localObject1 = localObject3;
        if (!j.startsWith("https://")) {}
      }
      else
      {
        localObject1 = ((h)localObject4).getName();
      }
    }
    localObject3 = localObject1;
    if (localObject1 == null) {
      localObject3 = ap.d(j);
    }
    localObject5 = ((String)localObject3).replace(':', '_');
    localObject3 = ap.bR(((h)localObject4).getName());
    localObject1 = localObject3;
    if (bg.b((String)localObject5) == -1)
    {
      localObject1 = localObject3;
      if (o != null)
      {
        localObject3 = MimeTypeMap.getSingleton().getExtensionFromMimeType(o);
        localObject1 = localObject3;
        if (bk.a((CharSequence)localObject3))
        {
          localObject1 = localObject3;
          if (o.startsWith("image")) {
            localObject1 = a(bg.b(), ".jpg");
          }
          if (o.startsWith("video")) {
            localObject1 = a(bg.b(), ".mp4");
          }
        }
      }
    }
    if (bk.b((CharSequence)localObject1))
    {
      localObject3 = localObject1;
      if (!((String)localObject1).startsWith(".")) {
        localObject3 = "." + (String)localObject1;
      }
      if (!((String)localObject5).endsWith((String)localObject3))
      {
        localObject1 = (String)localObject5 + (String)localObject3;
        n = (k + (String)localObject1);
        e = (k + getTaskId() + "_" + (String)localObject1);
        b.clear();
        b.add(new u((h)localObject4, e, processData.f, false));
        m = n.startsWith(j);
        canRestart = true;
        task_type = 6;
        recordSummary("title", localObject1);
        recordSummary("target", e);
        recordSummary("file_type", Integer.valueOf(bg.b((String)localObject1)));
        recordSummary("items_selected_count", Long.valueOf(processData.c));
        recordSummary("size", Long.valueOf(((h)localObject4).length()));
        l.a().b(this);
        return true;
      }
    }
  }
  
  public String b()
  {
    return summary().optString("target");
  }
  
  public String c()
  {
    return n;
  }
  
  protected void executeHelper()
  {
    super.executeHelper();
    if (getTaskStatus() == 5) {
      addTaskStatusChangeListener(aa);
    }
  }
  
  public com.estrongs.a.a.d getDecision(Class<?> paramClass, Object... paramVarArgs)
  {
    if (paramClass.getName().equals(c.class.getName())) {
      return super.getDecision(paramClass, paramVarArgs);
    }
    if ((paramVarArgs != null) && (paramVarArgs.length == 2) && (bk.b(paramVarArgs[1]))) {
      return null;
    }
    return super.getDecisionData(paramClass);
  }
  
  public void handleMessage(int paramInt, Object... paramVarArgs)
  {
    int i1 = 0;
    switch (paramInt)
    {
    }
    for (;;)
    {
      super.handleMessage(paramInt, paramVarArgs);
      for (;;)
      {
        return;
        m localm = processData;
        long l1 = d;
        d = (((Long)paramVarArgs[0]).longValue() + l1);
        processData.a = ((String)paramVarArgs[1]);
        return;
        processData.g = ((Long)paramVarArgs[0]).longValue();
        processData.h = ((Long)paramVarArgs[1]).longValue();
        return;
        processData.g = ((Long)paramVarArgs[0]).longValue();
        localm = processData;
        h += ((Long)paramVarArgs[1]).longValue();
        return;
        if ((paramVarArgs.length == 3) && (("RBT".equals(paramVarArgs[2])) || ("reset".equals(paramVarArgs[2]))))
        {
          processData.f = ((Long)paramVarArgs[0]).longValue();
          i = Long.valueOf(processData.f);
        }
        for (;;)
        {
          processData.a = ((String)paramVarArgs[1]);
          return;
          localm = processData;
          l1 = f;
          f = (((Long)paramVarArgs[0]).longValue() + l1);
        }
        paramVarArgs = (List)paramVarArgs[0];
        if (paramVarArgs != null)
        {
          paramInt = i1;
          while (paramInt < paramVarArgs.size())
          {
            b.add(paramVarArgs.get(paramInt));
            paramInt += 1;
          }
        }
      }
      d.a = true;
    }
  }
  
  protected void postTask()
  {
    if (bk.b(p)) {
      i.j(p);
    }
  }
  
  public void reset()
  {
    long l1 = processData.f;
    super.reset();
    if (l) {
      processData.f = l1;
    }
    c = false;
    m = false;
  }
  
  public boolean task()
  {
    for (;;)
    {
      Object localObject4;
      try
      {
        localObject4 = j;
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
        int i1;
        setTaskResult(10000, new q(localException1.toString(), localException1));
        return false;
        recordSummary("title", ap.d(e));
        recordSummary("target", e);
        p = e;
        com.estrongs.fs.a.b.a().a(e);
        continue;
      }
      finally
      {
        c = true;
      }
      try
      {
        localObject5 = ((HttpClient)localObject5).execute((HttpUriRequest)localObject1);
        i1 = ((HttpResponse)localObject5).getStatusLine().getStatusCode();
        localObject1 = localObject4;
        if (i1 > 300)
        {
          localObject1 = localObject4;
          if (i1 < 400)
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
        label684:
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
            j = ((String)localObject1);
            d.a = false;
            if (m)
            {
              setTaskResult(13, new q("Error", null));
              c = true;
              return false;
            }
            if (!a())
            {
              setTaskResult(10000, new q("Failed to get FileObject for " + j, null));
              processData.i = -1;
              c = true;
              return false;
            }
            if (g)
            {
              localObject1 = new File(n);
              if (((File)localObject1).exists())
              {
                recordSummary("target", ((File)localObject1).getAbsoluteFile());
                setTaskResult(0, d);
                c = true;
                return true;
              }
            }
            new ae(this).start();
            if (b.size() > 0)
            {
              processData.a = b.get(0)).a.getAbsolutePath();
              onProgress(processData);
            }
            processData.i = 2;
            onProgress(processData);
            summary().remove("need_reload");
            for (;;)
            {
              if (b.size() <= 0) {
                break label684;
              }
              boolean bool = taskStopped();
              if (bool)
              {
                c = true;
                return false;
              }
              localObject1 = (u)b.remove(0);
              if (!a.a((u)localObject1))
              {
                com.estrongs.fs.a.b.a().a(e);
                c = true;
                return false;
              }
              localObject1 = j.a(e, n);
              if (localObject1 == null) {
                break;
              }
              recordSummary("title", ((File)localObject1).getName());
              localObject4 = ((File)localObject1).getAbsolutePath();
              recordSummary("target", localObject4);
              p = ((String)localObject4);
              com.estrongs.fs.a.b.a().a((String)localObject4);
              if (summary().optLong("size") < 0L) {
                recordSummary("size", Long.valueOf(((File)localObject1).length()));
              }
            }
            if (processData.c > 0L) {
              processData.d = processData.c;
            }
            if (processData.e > 0L) {
              processData.f = processData.e;
            }
            onProgress(processData);
            setTaskResult(0, d);
            c = true;
            return true;
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */