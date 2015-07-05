package com.estrongs.fs.b;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.estrongs.a.a;
import com.estrongs.a.p;
import com.estrongs.a.q;
import com.estrongs.android.pop.utils.w;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.b.c;
import com.estrongs.fs.impl.local.f;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class i
  extends a
{
  protected com.estrongs.fs.d a = null;
  protected PackageManager b = null;
  public final List<c> c;
  public final String d;
  protected boolean e = false;
  boolean f = false;
  private boolean g = false;
  
  public i(com.estrongs.fs.d paramd, PackageManager paramPackageManager, List<c> paramList, String paramString, boolean paramBoolean)
  {
    a = paramd;
    b = paramPackageManager;
    d = paramString;
    c = paramList;
    g = paramBoolean;
    canRestart = false;
    task_type = 11;
    int j = paramList.size();
    paramd = new StringBuilder();
    int i = 0;
    if (i < j)
    {
      paramd.append(((c)paramList.get(i)).getName());
      if (i + 1 != j)
      {
        paramd.append(" , ");
        if (i >= 4) {
          paramd.append("...");
        }
      }
    }
    else
    {
      processData.j = paramd.toString();
      processData.p = false;
      processData.l = false;
      processData.m = false;
      processData.n = false;
      paramd = "";
      i = 0;
    }
    for (;;)
    {
      if ((i >= 3) || (i == j))
      {
        paramPackageManager = paramd;
        if (paramd.endsWith(",")) {
          paramPackageManager = paramd.substring(0, paramd.length() - 1);
        }
        recordSummary("title", paramPackageManager);
        recordSummary("items_ori_count", Integer.valueOf(j));
        a();
        return;
        i += 1;
        break;
      }
      paramd = paramd + ((c)paramList.get(i)).getName() + ",";
      i += 1;
    }
  }
  
  private void a()
  {
    if ((c == null) || (c.size() == 0)) {
      return;
    }
    recordSummary("task_id", Long.valueOf(getTaskId()));
    if (startTime == -1L) {
      startTime = System.currentTimeMillis();
    }
    recordSummary("start_time", Long.valueOf(startTime));
    recordSummary("task_type", Integer.valueOf(task_type));
    recordSummary("restartable", Boolean.valueOf(false));
    recordSummary("file_type", Integer.valueOf(65536));
    recordSummary("items_selected_count", Integer.valueOf(c.size()));
  }
  
  public void handleMessage(int paramInt, Object... paramVarArgs)
  {
    super.handleMessage(paramInt, paramVarArgs);
  }
  
  public boolean task()
  {
    int i;
    for (;;)
    {
      c localc;
      Object localObject3;
      String str2;
      Object localObject2;
      String str3;
      boolean bool;
      try
      {
        if ((c == null) || (c.size() == 0)) {
          break label874;
        }
        int j = c.size();
        processData.c = j;
        processData.e = j;
        onProgress(processData);
        i = 0;
        if (i < j)
        {
          if (taskStopped()) {
            return false;
          }
          localc = (c)c.get(i);
          localObject1 = localc.c();
          localObject3 = w.a(b, (ApplicationInfo)localObject1);
          str2 = w.b(b, localObject1)[0];
          localObject2 = (String)localObject3 + "_" + str2 + ".apk";
          str3 = packageName;
          processData.a = ((String)localObject3);
          onProgress(processData);
          localObject1 = localc.getPath();
          if (!a.b((String)localObject1)) {
            break label876;
          }
          localc.putExtra("item_paste_name", localObject2);
          if (((String)localObject1).startsWith("/system/"))
          {
            localObject4 = ((String)localObject1).substring(0, ((String)localObject1).length() - 4) + ".odex";
            localObject2 = new JSONObject();
            ((JSONObject)localObject2).put("apkpath", localObject1);
            if (a.b((String)localObject4))
            {
              localObject1 = com.estrongs.fs.d.a().j((String)localObject4);
              ((h)localObject1).putExtra("item_paste_name", com.estrongs.fs.impl.b.d.b((String)localObject3, str2));
              ((JSONObject)localObject2).put("odexpath", localObject4);
              localObject4 = new ArrayList();
              ((List)localObject4).add(localc);
              ((List)localObject4).add(localObject1);
              localObject1 = new r(a, (List)localObject4, new f(new File(d)));
              localObject4 = d + com.estrongs.fs.impl.b.d.c((String)localObject3, str2);
              com.estrongs.fs.d.a().b((String)localObject4, false);
              str4 = ((JSONObject)localObject2).toString();
              localObject2 = localObject1;
              if (str4 != null)
              {
                bool = "".equals(str4);
                localObject2 = localObject1;
                if (bool) {}
              }
            }
          }
        }
      }
      catch (Exception localException1)
      {
        Object localObject1;
        Object localObject4;
        String str4;
        localException1.printStackTrace();
        setTaskResult(10000, new q(localException1.toString(), localException1));
        return false;
      }
      try
      {
        com.estrongs.fs.util.j.a(new File((String)localObject4), str4, "UTF-8");
        localObject2 = localObject1;
      }
      catch (Exception localException3)
      {
        Exception localException4 = localException2;
        continue;
      }
      ((r)localObject2).setTaskDecisionListener(getTaskDecisionListener());
      ((r)localObject2).setParentTask(this);
      ((r)localObject2).execute(false);
      if (getTaskResulta != 0)
      {
        return false;
        localObject1 = new r(a, localc, new f(new File(d)));
        continue;
        localObject2 = new r(a, localc, new f(new File(d)));
      }
      else
      {
        localc.a(3);
        for (;;)
        {
          try
          {
            if (taskStopped()) {
              return false;
            }
            str1 = "/data/data/" + str3;
            localObject2 = d + com.estrongs.fs.impl.b.d.a((String)localObject3, str2);
            if (g)
            {
              bool = a.b(str1);
              if (!bool) {}
            }
          }
          catch (Exception localException2)
          {
            String str1;
            localException2.printStackTrace();
            continue;
            processData.d = (i + 1);
            processData.f = (i + 1);
            onProgress(processData);
            i += 1;
          }
          try
          {
            if (a.b((String)localObject2)) {
              a.a(a.j((String)localObject2));
            }
            localObject3 = new HashMap(2);
            ((HashMap)localObject3).put("compress_level", String.valueOf(0));
            localObject2 = new j(this, (String)localObject2, null, (Map)localObject3, str1);
            localObject3 = new ArrayList();
            ((List)localObject3).add(str1);
            ((com.estrongs.io.archive.i)localObject2).a((List)localObject3);
            bool = taskStopped();
            if (bool) {
              return false;
            }
          }
          catch (Exception localException5)
          {
            localException5.printStackTrace();
          }
        }
      }
    }
    setTaskResult(0, null);
    return true;
    label874:
    return false;
    label876:
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */