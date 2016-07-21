package com.estrongs.fs.b;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.estrongs.a.a;
import com.estrongs.a.p;
import com.estrongs.a.q;
import com.estrongs.android.pop.utils.w;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.b.e;
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
  public final List<com.estrongs.fs.impl.b.d> c;
  public final String d;
  protected boolean e = false;
  boolean f = false;
  private boolean g = false;
  
  public i(com.estrongs.fs.d paramd, PackageManager paramPackageManager, List<com.estrongs.fs.impl.b.d> paramList, String paramString, boolean paramBoolean)
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
      paramd.append(((com.estrongs.fs.impl.b.d)paramList.get(i)).getName());
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
      paramd = paramd + ((com.estrongs.fs.impl.b.d)paramList.get(i)).getName() + ",";
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
    for (;;)
    {
      int i;
      com.estrongs.fs.impl.b.d locald;
      Object localObject3;
      Object localObject4;
      Object localObject5;
      String str1;
      boolean bool;
      try
      {
        if ((c == null) || (c.size() == 0)) {
          break;
        }
        int j = c.size();
        processData.c = j;
        processData.e = j;
        onProgress(processData);
        i = 0;
        localObject1 = null;
        if (i < j)
        {
          if (taskStopped()) {
            return false;
          }
          locald = (com.estrongs.fs.impl.b.d)c.get(i);
          localObject3 = locald.h();
          localObject4 = w.a(b, (ApplicationInfo)localObject3);
          localObject5 = w.b(b, localObject3)[0];
          localObject6 = (String)localObject4 + "_" + (String)localObject5 + ".apk";
          str1 = packageName;
          processData.a = ((String)localObject4);
          onProgress(processData);
          localObject3 = locald.getPath();
          if (localObject1 == null) {
            break label907;
          }
          bool = isAppBackupOverwriteApplyAllByUser;
          if (!a.b((String)localObject3)) {
            break label914;
          }
          locald.putExtra("item_paste_name", localObject6);
          if (((String)localObject3).startsWith("/system/"))
          {
            localObject6 = ((String)localObject3).substring(0, ((String)localObject3).length() - 4) + ".odex";
            localObject1 = new JSONObject();
            ((JSONObject)localObject1).put("apkpath", localObject3);
            if (a.b((String)localObject6))
            {
              localObject3 = com.estrongs.fs.d.a().j((String)localObject6);
              ((h)localObject3).putExtra("item_paste_name", e.b((String)localObject4, (String)localObject5));
              ((JSONObject)localObject1).put("odexpath", localObject6);
              localObject6 = new ArrayList();
              ((List)localObject6).add(locald);
              ((List)localObject6).add(localObject3);
              localObject3 = new r(a, (List)localObject6, new f(new File(d)));
              isAppBackupOverwriteApplyAllByUser = bool;
              localObject6 = d + e.c((String)localObject4, (String)localObject5);
              com.estrongs.fs.d.a().b((String)localObject6, false);
              str2 = ((JSONObject)localObject1).toString();
              localObject1 = localObject3;
              if (str2 != null)
              {
                bool = "".equals(str2);
                localObject1 = localObject3;
                if (bool) {}
              }
            }
          }
        }
      }
      catch (Exception localException1)
      {
        Object localObject1;
        Object localObject6;
        String str2;
        localException1.printStackTrace();
        setTaskResult(10000, new q(localException1.toString(), localException1));
        return false;
      }
      try
      {
        com.estrongs.fs.util.j.a(new File((String)localObject6), str2, "UTF-8");
        localObject1 = localObject3;
      }
      catch (Exception localException2)
      {
        r localr;
        Object localObject2 = localException3;
        continue;
      }
      ((r)localObject1).setTaskDecisionListener(getTaskDecisionListener());
      ((r)localObject1).setParentTask(this);
      ((r)localObject1).execute(false);
      if (getTaskResulta != 0)
      {
        return false;
        localObject3 = new r(a, locald, new f(new File(d)));
        isAppBackupOverwriteApplyAllByUser = bool;
        continue;
        localr = new r(a, locald, new f(new File(d)));
        isAppBackupOverwriteApplyAllByUser = bool;
      }
      else
      {
        locald.a(3);
        for (;;)
        {
          try
          {
            if (taskStopped()) {
              return false;
            }
            localObject3 = "/data/data/" + str1;
            localObject4 = d + e.a((String)localObject4, (String)localObject5);
            if (g)
            {
              bool = a.b((String)localObject3);
              if (!bool) {}
            }
          }
          catch (Exception localException3)
          {
            localException3.printStackTrace();
            continue;
            processData.d = (i + 1);
            processData.f = (i + 1);
            onProgress(processData);
            i += 1;
          }
          try
          {
            if (a.b((String)localObject4)) {
              a.a(a.j((String)localObject4));
            }
            localObject5 = new HashMap(2);
            ((HashMap)localObject5).put("compress_level", String.valueOf(0));
            localObject4 = new j(this, (String)localObject4, null, (Map)localObject5, (String)localObject3);
            localObject5 = new ArrayList();
            ((List)localObject5).add(localObject3);
            ((com.estrongs.io.archive.j)localObject4).a((List)localObject5);
            bool = taskStopped();
            if (bool) {
              return false;
            }
          }
          catch (Exception localException4)
          {
            localException4.printStackTrace();
          }
        }
        continue;
        setTaskResult(0, null);
        return true;
        label907:
        bool = false;
      }
    }
    return false;
    label914:
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */