package com.estrongs.fs.b;

import android.os.StatFs;
import com.estrongs.a.a;
import com.estrongs.a.a.m;
import com.estrongs.a.p;
import com.estrongs.a.q;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.utils.cm;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.bg;
import com.estrongs.android.util.bk;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.local.k;
import com.estrongs.fs.impl.media.MediaStoreInsertException;
import com.estrongs.fs.impl.media.e;
import com.estrongs.fs.w;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class r
  extends a
{
  private boolean A = false;
  private boolean B = false;
  private boolean C = false;
  private byte[] a = null;
  private boolean b = true;
  protected com.estrongs.fs.d c = null;
  protected int d = 0;
  protected HashMap<String, String> e = new HashMap();
  protected ArrayList<u> f = new ArrayList();
  protected int g = 0;
  protected int h = 0;
  protected boolean i = false;
  protected boolean j = true;
  v k = new v();
  boolean l = false;
  boolean m = false;
  public final h n;
  protected boolean o = false;
  public List<String> p = new ArrayList();
  public List<String> q = new ArrayList();
  public List<String> r = new ArrayList();
  public List<String> s = new ArrayList();
  public List<String> t = new ArrayList();
  public String u = null;
  public Set<String> v = new HashSet();
  public int w = 1;
  protected List<h> x = new ArrayList();
  ao y = null;
  Long z = Long.valueOf(0L);
  
  public r(com.estrongs.fs.d paramd, h paramh1, h paramh2)
  {
    this(paramd, paramh1, paramh2, null);
  }
  
  public r(com.estrongs.fs.d paramd, h paramh1, h paramh2, String paramString)
  {
    c = paramd;
    n = paramh2;
    g = 1;
    x.add(paramh1);
    String str1 = paramh2.getAbsolutePath();
    if (!paramh2.getAbsolutePath().endsWith("/")) {
      str1 = paramh2.getAbsolutePath() + "/";
    }
    for (;;)
    {
      String str2 = paramh1.getName();
      paramd = str2;
      if (str2 == null) {
        paramd = com.estrongs.android.util.ap.d(paramh1.getAbsolutePath());
      }
      processData.j = paramd;
      if (paramh1.getExtra("item_paste_name") != null) {
        paramd = (String)paramh1.getExtra("item_paste_name");
      }
      if ((paramString != null) && (paramString.length() > 0)) {}
      for (;;)
      {
        paramd = str1 + paramString;
        f.add(new u(paramh1, paramd, 0L));
        o = paramh2.getAbsolutePath().startsWith(paramh1.getAbsolutePath());
        d = com.estrongs.android.util.ap.I(paramh1.getAbsolutePath());
        paramd = processData;
        if (!com.estrongs.android.util.ap.aQ(paramh1.getPath())) {}
        for (boolean bool = true;; bool = false)
        {
          l = bool;
          l = true;
          canRestart = true;
          task_type = 2;
          recordSummary("title", com.estrongs.android.util.ap.d(paramh1.getName()));
          recordSummary("items_ori_count", Integer.valueOf(1));
          i();
          return;
        }
        paramString = paramd;
      }
    }
  }
  
  public r(com.estrongs.fs.d paramd, List<h> paramList, h paramh)
  {
    c = paramd;
    n = paramh;
    g = paramList.size();
    x.addAll(paramList);
    paramd = paramh.getAbsolutePath();
    if (!paramh.getAbsolutePath().endsWith("/")) {}
    for (paramh = paramh.getAbsolutePath() + "/";; paramh = paramd)
    {
      LinkedList localLinkedList = new LinkedList();
      localLinkedList.addAll(paramList);
      int i2 = localLinkedList.size();
      StringBuilder localStringBuilder = new StringBuilder();
      int i1 = 0;
      String str;
      if (i1 < i2)
      {
        str = ((h)localLinkedList.get(i1)).getName();
        paramd = str;
        if (str == null) {
          paramd = com.estrongs.android.util.ap.d(((h)localLinkedList.get(i1)).getAbsolutePath());
        }
        localStringBuilder.append(paramd);
        if (i1 + 1 != i2)
        {
          localStringBuilder.append(" , ");
          if (i1 >= 4) {
            localStringBuilder.append("...");
          }
        }
      }
      else
      {
        i1 = 0;
        label419:
        if (i1 >= i2) {
          break label647;
        }
        paramd = ((h)localLinkedList.get(i1)).getName();
        if (paramd != null) {
          break label861;
        }
        paramd = com.estrongs.android.util.ap.d(((h)localLinkedList.get(i1)).getAbsolutePath());
      }
      label647:
      label861:
      for (;;)
      {
        if (((h)localLinkedList.get(i1)).getExtra("item_paste_name") != null) {
          paramd = (String)((h)localLinkedList.get(i1)).getExtra("item_paste_name");
        }
        f.add(new u((h)localLinkedList.get(i1), paramh + paramd, 0L));
        if (!o)
        {
          str = ((h)localLinkedList.get(i1)).getAbsolutePath();
          paramd = str;
          if (!str.endsWith("/")) {
            paramd = str + "/";
          }
          o = paramh.startsWith(paramd);
        }
        i1 += 1;
        break label419;
        i1 += 1;
        break;
        processData.j = localStringBuilder.toString();
        paramd = processData;
        boolean bool;
        if (!com.estrongs.android.util.ap.aQ(((h)paramList.get(0)).getPath()))
        {
          bool = true;
          l = bool;
          d = com.estrongs.android.util.ap.I(((h)localLinkedList.get(0)).getAbsolutePath());
          l = true;
          canRestart = true;
          task_type = 2;
          i2 = localLinkedList.size();
          paramd = "";
          i1 = 0;
        }
        for (;;)
        {
          if ((i1 >= 3) || (i1 == i2))
          {
            paramList = paramd;
            if (paramd.endsWith(",")) {
              paramList = paramd.substring(0, paramd.length() - 1);
            }
            recordSummary("title", paramList);
            recordSummary("items_ori_count", Integer.valueOf(i2));
            i();
            return;
            bool = false;
            break;
          }
          paramd = paramd + ((h)localLinkedList.get(i1)).getName() + ",";
          i1 += 1;
        }
      }
    }
  }
  
  private void a(List<h> paramList)
  {
    String str = n.getAbsolutePath();
    if (!str.endsWith("/")) {
      str = str + "/";
    }
    for (;;)
    {
      ArrayList localArrayList = new ArrayList(paramList.size());
      Iterator localIterator = paramList.iterator();
      if (localIterator.hasNext())
      {
        h localh = (h)localIterator.next();
        paramList = localh.getName();
        if (paramList != null) {
          break label158;
        }
        paramList = com.estrongs.android.util.ap.d(localh.getAbsolutePath());
      }
      label158:
      for (;;)
      {
        localArrayList.add(str + paramList);
        break;
        if (!localArrayList.isEmpty()) {
          com.estrongs.android.scanner.l.a().b(localArrayList);
        }
        com.estrongs.android.scanner.l.a().a(true);
        return;
      }
    }
  }
  
  private void i()
  {
    h localh = f.get(0)).a;
    if (startTime == -1L) {
      startTime = System.currentTimeMillis();
    }
    recordSummary("task_id", Long.valueOf(getTaskId()));
    recordSummary("start_time", Long.valueOf(startTime));
    recordSummary("task_type", Integer.valueOf(task_type));
    recordSummary("restartable", Boolean.valueOf(false));
    if (localh.getFileType().a()) {
      recordSummary("file_type", localh.getFileType().c());
    }
    for (;;)
    {
      recordSummary("items_selected_count", Integer.valueOf(f.size()));
      recordSummary("source", com.estrongs.android.util.ap.F(com.estrongs.android.util.ap.bB(localh.getPath())));
      recordSummary("target", com.estrongs.android.util.ap.F(n.getPath()));
      recordSummary("status", Integer.valueOf(1));
      return;
      recordSummary("file_type", Integer.valueOf(bg.b(localh.getName())));
    }
  }
  
  private boolean j()
  {
    y = new ao(c, f);
    y.addProgressListeners(getProgressListeners());
    if (ad.a(FexApplication.a()).aW())
    {
      y.execute(true);
      y.addTaskStatusChangeListener(new s(this));
      return true;
    }
    y.execute(false);
    if (y.getTaskStatus() != 4)
    {
      p localp = y.getTaskResult();
      setTaskResult(a, b);
      return false;
    }
    k();
    return true;
  }
  
  private void k()
  {
    Object localObject = y.a();
    int i1 = 0;
    while (i1 < ((List)localObject).size())
    {
      ap localap = (ap)((List)localObject).get(i1);
      m localm = processData;
      c += e + f;
      localm = processData;
      e += c;
      i1 += 1;
    }
    if (processData.e > 0L)
    {
      processData.l = true;
      localObject = l();
      if (localObject != null) {
        requestStop(12, localObject);
      }
    }
    recordSummary("size", Long.valueOf(processData.e));
  }
  
  private q l()
  {
    if (com.estrongs.android.util.ap.bl(n.getAbsolutePath())) {
      try
      {
        Object localObject = new StatFs(n.getAbsolutePath());
        long l1 = ((StatFs)localObject).getBlockSize();
        long l2 = ((StatFs)localObject).getAvailableBlocks();
        if (((l1 == 0L) || (l2 == 0L)) && (!com.estrongs.android.util.ap.bC(n.getAbsolutePath()))) {
          return null;
        }
        if ((processData.e > 0L) && (processData.e - processData.f > l2 * l1))
        {
          localObject = new q("Error", new Long[] { Long.valueOf(processData.e - processData.f), Long.valueOf(l1 * l2) });
          return (q)localObject;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    return null;
  }
  
  public String a(String paramString)
  {
    return (String)e.get(paramString);
  }
  
  public void a()
  {
    processData.c = -1L;
    processData.e = -1L;
    processData.d = -1L;
    processData.f = -1L;
    l = true;
  }
  
  public void a(boolean paramBoolean)
  {
    m = paramBoolean;
  }
  
  public void addProgressListener(com.estrongs.a.a.l paraml)
  {
    super.addProgressListener(paraml);
    if (y != null) {
      y.addProgressListener(paraml);
    }
  }
  
  public void b(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public byte[] b()
  {
    return a;
  }
  
  public List<h> c()
  {
    return x;
  }
  
  public void c(boolean paramBoolean)
  {
    j = paramBoolean;
  }
  
  public boolean canPause()
  {
    return false;
  }
  
  public void d(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public boolean d()
  {
    return i;
  }
  
  public void e(boolean paramBoolean)
  {
    A = paramBoolean;
  }
  
  public boolean e()
  {
    return j;
  }
  
  public m f()
  {
    if (y == null) {
      return null;
    }
    return y.processData;
  }
  
  public void f(boolean paramBoolean)
  {
    B = paramBoolean;
  }
  
  public boolean g()
  {
    return A;
  }
  
  public ArrayList<u> h()
  {
    return f;
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
      do
      {
        do
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
          if ((paramVarArgs.length == 3) && ("RBT".equals(paramVarArgs[2]))) {
            if (!B)
            {
              localm = processData;
              f += ((Long)paramVarArgs[0]).longValue();
              l1 = z.longValue();
              z = Long.valueOf(((Long)paramVarArgs[0]).longValue() + l1);
            }
          }
          for (;;)
          {
            processData.a = ((String)paramVarArgs[1]);
            return;
            localm = processData;
            l1 = f;
            f = (((Long)paramVarArgs[0]).longValue() + l1);
          }
          paramVarArgs = (ArrayList)paramVarArgs[0];
        } while (paramVarArgs == null);
        paramInt = i1;
        while (paramInt < f.size())
        {
          paramVarArgs.add(f.get(paramInt));
          paramInt += 1;
        }
        f = paramVarArgs;
        return;
      } while ((paramVarArgs == null) || (paramVarArgs.length != 2));
      e.put(paramVarArgs[0].toString(), paramVarArgs[1].toString());
      return;
      h += 1;
      k.a = true;
    }
  }
  
  protected void postTask()
  {
    for (;;)
    {
      try
      {
        if ((com.estrongs.android.util.ap.bJ(n.getAbsolutePath())) && (ac.a() == 19)) {
          k.a();
        }
        if (!bk.f()) {
          continue;
        }
        if (s.size() > 0) {
          e.a(s, v);
        }
      }
      catch (MediaStoreInsertException localMediaStoreInsertException)
      {
        int i1;
        localMediaStoreInsertException.printStackTrace();
        cm.b();
        continue;
      }
      i1 = getTaskResulta;
      if ((i1 == 0) || (4 == i1)) {
        FileExplorerActivity.g(true);
      }
      return;
      if (p.size() > 0) {
        com.estrongs.fs.impl.p.c.b().a(p);
      }
      if (q.size() > 0) {
        com.estrongs.fs.impl.n.d.b().a(q);
      }
      if (r.size() > 0) {
        com.estrongs.fs.impl.v.c.b().a(r);
      }
    }
  }
  
  public void removeProgressListener(com.estrongs.a.a.l paraml)
  {
    super.removeProgressListener(paraml);
    if (y != null) {
      y.removeProgressListener(paraml);
    }
  }
  
  public void requestStop()
  {
    if (y != null) {
      y.requestStop();
    }
    super.requestStop();
  }
  
  /* Error */
  public boolean task()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aconst_null
    //   4: astore 8
    //   6: aload 7
    //   8: astore 6
    //   10: aload_0
    //   11: getfield 89	com/estrongs/fs/b/r:l	Z
    //   14: ifne +39 -> 53
    //   17: aload 7
    //   19: astore 6
    //   21: aload_0
    //   22: getfield 178	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   25: iconst_0
    //   26: putfield 211	com/estrongs/a/a/m:l	Z
    //   29: aload 7
    //   31: astore 6
    //   33: aload_0
    //   34: getfield 178	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   37: iconst_0
    //   38: putfield 570	com/estrongs/a/a/m:m	Z
    //   41: aload 7
    //   43: astore 6
    //   45: aload_0
    //   46: getfield 178	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   49: iconst_0
    //   50: putfield 571	com/estrongs/a/a/m:o	Z
    //   53: aload 7
    //   55: astore 6
    //   57: aload_0
    //   58: iconst_0
    //   59: putfield 126	com/estrongs/fs/b/r:C	Z
    //   62: aload 7
    //   64: astore 6
    //   66: aload_0
    //   67: invokestatic 576	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   70: aload_0
    //   71: getfield 74	com/estrongs/fs/b/r:f	Ljava/util/ArrayList;
    //   74: iconst_0
    //   75: invokevirtual 301	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   78: checkcast 194	com/estrongs/fs/b/u
    //   81: getfield 303	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   84: invokeinterface 148 1 0
    //   89: aload_0
    //   90: getfield 74	com/estrongs/fs/b/r:f	Ljava/util/ArrayList;
    //   93: iconst_0
    //   94: invokevirtual 301	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   97: checkcast 194	com/estrongs/fs/b/u
    //   100: getfield 578	com/estrongs/fs/b/u:b	Ljava/lang/String;
    //   103: invokevirtual 581	com/estrongs/fs/d:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   106: newarray <illegal type>
    //   108: putfield 114	com/estrongs/fs/b/r:a	[B
    //   111: aload 7
    //   113: astore 6
    //   115: aload_0
    //   116: getfield 87	com/estrongs/fs/b/r:k	Lcom/estrongs/fs/b/v;
    //   119: iconst_0
    //   120: putfield 509	com/estrongs/fs/b/v:a	Z
    //   123: aload 7
    //   125: astore 6
    //   127: aload_0
    //   128: getfield 93	com/estrongs/fs/b/r:o	Z
    //   131: ifeq +55 -> 186
    //   134: aload 7
    //   136: astore 6
    //   138: aload_0
    //   139: bipush 13
    //   141: new 458	com/estrongs/a/q
    //   144: dup
    //   145: ldc_w 460
    //   148: aconst_null
    //   149: invokespecial 584	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   152: invokevirtual 415	com/estrongs/fs/b/r:setTaskResult	(ILjava/lang/Object;)V
    //   155: aload_0
    //   156: aconst_null
    //   157: invokespecial 585	com/estrongs/fs/b/r:a	(Ljava/util/List;)V
    //   160: aload_0
    //   161: iconst_1
    //   162: putfield 126	com/estrongs/fs/b/r:C	Z
    //   165: aload_0
    //   166: getfield 118	com/estrongs/fs/b/r:b	Z
    //   169: ifeq +15 -> 184
    //   172: iconst_0
    //   173: ifeq +11 -> 184
    //   176: new 587	java/lang/NullPointerException
    //   179: dup
    //   180: invokespecial 588	java/lang/NullPointerException:<init>	()V
    //   183: athrow
    //   184: iconst_0
    //   185: ireturn
    //   186: aload 7
    //   188: astore 6
    //   190: aload_0
    //   191: getfield 178	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   194: getfield 421	com/estrongs/a/a/m:c	J
    //   197: ldc2_w 308
    //   200: lcmp
    //   201: ifne +700 -> 901
    //   204: aload 7
    //   206: astore 6
    //   208: aload_0
    //   209: getfield 178	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   212: getfield 427	com/estrongs/a/a/m:e	J
    //   215: ldc2_w 308
    //   218: lcmp
    //   219: ifne +682 -> 901
    //   222: aload 7
    //   224: astore 6
    //   226: aload_0
    //   227: getfield 89	com/estrongs/fs/b/r:l	Z
    //   230: ifeq +671 -> 901
    //   233: aload 7
    //   235: astore 6
    //   237: aload_0
    //   238: getfield 178	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   241: lconst_0
    //   242: putfield 421	com/estrongs/a/a/m:c	J
    //   245: aload 7
    //   247: astore 6
    //   249: aload_0
    //   250: getfield 178	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   253: lconst_0
    //   254: putfield 427	com/estrongs/a/a/m:e	J
    //   257: aload 7
    //   259: astore 6
    //   261: aload_0
    //   262: invokespecial 590	com/estrongs/fs/b/r:j	()Z
    //   265: ifne +60 -> 325
    //   268: aload 7
    //   270: astore 6
    //   272: aload_0
    //   273: getfield 178	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   276: ldc2_w 308
    //   279: putfield 421	com/estrongs/a/a/m:c	J
    //   282: aload 7
    //   284: astore 6
    //   286: aload_0
    //   287: getfield 178	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   290: ldc2_w 308
    //   293: putfield 427	com/estrongs/a/a/m:e	J
    //   296: aload_0
    //   297: aconst_null
    //   298: invokespecial 585	com/estrongs/fs/b/r:a	(Ljava/util/List;)V
    //   301: aload_0
    //   302: iconst_1
    //   303: putfield 126	com/estrongs/fs/b/r:C	Z
    //   306: aload_0
    //   307: getfield 118	com/estrongs/fs/b/r:b	Z
    //   310: ifeq -126 -> 184
    //   313: iconst_0
    //   314: ifeq -130 -> 184
    //   317: new 587	java/lang/NullPointerException
    //   320: dup
    //   321: invokespecial 588	java/lang/NullPointerException:<init>	()V
    //   324: athrow
    //   325: aload 7
    //   327: astore 6
    //   329: aload_0
    //   330: getfield 136	com/estrongs/fs/b/r:n	Lcom/estrongs/fs/h;
    //   333: invokeinterface 148 1 0
    //   338: invokestatic 440	com/estrongs/android/util/ap:bl	(Ljava/lang/String;)Z
    //   341: ifeq +238 -> 579
    //   344: aload 7
    //   346: astore 6
    //   348: aload_0
    //   349: invokespecial 431	com/estrongs/fs/b/r:l	()Lcom/estrongs/a/q;
    //   352: astore 9
    //   354: aload 9
    //   356: ifnull +15 -> 371
    //   359: aload 7
    //   361: astore 6
    //   363: aload_0
    //   364: bipush 12
    //   366: aload 9
    //   368: invokevirtual 415	com/estrongs/fs/b/r:setTaskResult	(ILjava/lang/Object;)V
    //   371: aload 7
    //   373: astore 6
    //   375: aload_0
    //   376: aload_0
    //   377: getfield 178	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   380: getfield 456	com/estrongs/a/a/m:f	J
    //   383: invokestatic 132	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   386: putfield 134	com/estrongs/fs/b/r:z	Ljava/lang/Long;
    //   389: aload 7
    //   391: astore 6
    //   393: new 592	com/estrongs/fs/b/t
    //   396: dup
    //   397: aload_0
    //   398: invokespecial 593	com/estrongs/fs/b/t:<init>	(Lcom/estrongs/fs/b/r;)V
    //   401: invokevirtual 596	com/estrongs/fs/b/t:start	()V
    //   404: aload 7
    //   406: astore 6
    //   408: aload_0
    //   409: getfield 74	com/estrongs/fs/b/r:f	Ljava/util/ArrayList;
    //   412: invokevirtual 345	java/util/ArrayList:size	()I
    //   415: ifle +45 -> 460
    //   418: aload 7
    //   420: astore 6
    //   422: aload_0
    //   423: getfield 178	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   426: aload_0
    //   427: getfield 74	com/estrongs/fs/b/r:f	Ljava/util/ArrayList;
    //   430: iconst_0
    //   431: invokevirtual 301	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   434: checkcast 194	com/estrongs/fs/b/u
    //   437: getfield 303	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   440: invokeinterface 148 1 0
    //   445: putfield 491	com/estrongs/a/a/m:a	Ljava/lang/String;
    //   448: aload 7
    //   450: astore 6
    //   452: aload_0
    //   453: aload_0
    //   454: getfield 178	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   457: invokevirtual 600	com/estrongs/fs/b/r:onProgress	(Lcom/estrongs/a/a/m;)V
    //   460: aload 7
    //   462: astore 6
    //   464: aload_0
    //   465: getfield 178	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   468: iconst_2
    //   469: putfield 602	com/estrongs/a/a/m:i	I
    //   472: aload 7
    //   474: astore 6
    //   476: new 71	java/util/ArrayList
    //   479: dup
    //   480: invokespecial 72	java/util/ArrayList:<init>	()V
    //   483: astore 7
    //   485: aload_0
    //   486: getfield 74	com/estrongs/fs/b/r:f	Ljava/util/ArrayList;
    //   489: iconst_0
    //   490: invokevirtual 301	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   493: checkcast 194	com/estrongs/fs/b/u
    //   496: getfield 578	com/estrongs/fs/b/u:b	Ljava/lang/String;
    //   499: iconst_0
    //   500: invokestatic 605	com/estrongs/android/util/ap:a	(Ljava/lang/String;Z)Z
    //   503: istore 4
    //   505: invokestatic 290	com/estrongs/android/scanner/l:a	()Lcom/estrongs/android/scanner/l;
    //   508: invokevirtual 607	com/estrongs/android/scanner/l:e	()V
    //   511: aload_0
    //   512: getfield 74	com/estrongs/fs/b/r:f	Ljava/util/ArrayList;
    //   515: invokevirtual 345	java/util/ArrayList:size	()I
    //   518: ifle +919 -> 1437
    //   521: aload_0
    //   522: invokevirtual 610	com/estrongs/fs/b/r:taskStopped	()Z
    //   525: istore 5
    //   527: iload 5
    //   529: ifeq +458 -> 987
    //   532: aload_0
    //   533: aload 7
    //   535: invokespecial 585	com/estrongs/fs/b/r:a	(Ljava/util/List;)V
    //   538: aload_0
    //   539: iconst_1
    //   540: putfield 126	com/estrongs/fs/b/r:C	Z
    //   543: aload_0
    //   544: getfield 118	com/estrongs/fs/b/r:b	Z
    //   547: ifeq -363 -> 184
    //   550: aload 7
    //   552: ifnull -368 -> 184
    //   555: aload 7
    //   557: invokeinterface 236 1 0
    //   562: ifle -378 -> 184
    //   565: invokestatic 615	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   568: aload 7
    //   570: aload_0
    //   571: getfield 112	com/estrongs/fs/b/r:w	I
    //   574: invokevirtual 618	com/estrongs/fs/a/b:b	(Ljava/util/List;I)V
    //   577: iconst_0
    //   578: ireturn
    //   579: aload 7
    //   581: astore 6
    //   583: aload_0
    //   584: getfield 136	com/estrongs/fs/b/r:n	Lcom/estrongs/fs/h;
    //   587: invokeinterface 148 1 0
    //   592: invokestatic 621	com/estrongs/android/util/ap:aL	(Ljava/lang/String;)Z
    //   595: istore 4
    //   597: iload 4
    //   599: ifeq -228 -> 371
    //   602: aload 7
    //   604: astore 6
    //   606: invokestatic 626	com/estrongs/android/ui/pcs/u:a	()Lcom/estrongs/android/ui/pcs/u;
    //   609: invokevirtual 628	com/estrongs/android/ui/pcs/u:g	()Ljava/lang/String;
    //   612: invokestatic 633	com/estrongs/fs/impl/o/b:k	(Ljava/lang/String;)[J
    //   615: astore 9
    //   617: aload 9
    //   619: iconst_0
    //   620: laload
    //   621: aload 9
    //   623: iconst_1
    //   624: laload
    //   625: lsub
    //   626: lstore_2
    //   627: aload 7
    //   629: astore 6
    //   631: aload_0
    //   632: getfield 178	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   635: getfield 427	com/estrongs/a/a/m:e	J
    //   638: lload_2
    //   639: lcmp
    //   640: ifle -269 -> 371
    //   643: lload_2
    //   644: ldc2_w 634
    //   647: lcmp
    //   648: ifge +74 -> 722
    //   651: aload 7
    //   653: astore 6
    //   655: aload_0
    //   656: bipush 15
    //   658: new 458	com/estrongs/a/q
    //   661: dup
    //   662: aconst_null
    //   663: iconst_2
    //   664: anewarray 128	java/lang/Long
    //   667: dup
    //   668: iconst_0
    //   669: aload_0
    //   670: getfield 178	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   673: getfield 427	com/estrongs/a/a/m:e	J
    //   676: invokestatic 132	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   679: aastore
    //   680: dup
    //   681: iconst_1
    //   682: lload_2
    //   683: invokestatic 132	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   686: aastore
    //   687: invokespecial 462	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Object;)V
    //   690: invokevirtual 415	com/estrongs/fs/b/r:setTaskResult	(ILjava/lang/Object;)V
    //   693: aload_0
    //   694: aconst_null
    //   695: invokespecial 585	com/estrongs/fs/b/r:a	(Ljava/util/List;)V
    //   698: aload_0
    //   699: iconst_1
    //   700: putfield 126	com/estrongs/fs/b/r:C	Z
    //   703: aload_0
    //   704: getfield 118	com/estrongs/fs/b/r:b	Z
    //   707: ifeq -523 -> 184
    //   710: iconst_0
    //   711: ifeq -527 -> 184
    //   714: new 587	java/lang/NullPointerException
    //   717: dup
    //   718: invokespecial 588	java/lang/NullPointerException:<init>	()V
    //   721: athrow
    //   722: aload 7
    //   724: astore 6
    //   726: aload_0
    //   727: bipush 12
    //   729: new 458	com/estrongs/a/q
    //   732: dup
    //   733: ldc_w 460
    //   736: iconst_2
    //   737: anewarray 128	java/lang/Long
    //   740: dup
    //   741: iconst_0
    //   742: aload_0
    //   743: getfield 178	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   746: getfield 427	com/estrongs/a/a/m:e	J
    //   749: invokestatic 132	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   752: aastore
    //   753: dup
    //   754: iconst_1
    //   755: lload_2
    //   756: invokestatic 132	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   759: aastore
    //   760: invokespecial 462	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Object;)V
    //   763: invokevirtual 415	com/estrongs/fs/b/r:setTaskResult	(ILjava/lang/Object;)V
    //   766: goto -73 -> 693
    //   769: astore 9
    //   771: aload 7
    //   773: astore 6
    //   775: aload 9
    //   777: invokevirtual 465	java/lang/Exception:printStackTrace	()V
    //   780: goto -409 -> 371
    //   783: astore 6
    //   785: aload 8
    //   787: astore 7
    //   789: aload 6
    //   791: astore 8
    //   793: aload 7
    //   795: astore 6
    //   797: aload 8
    //   799: invokevirtual 465	java/lang/Exception:printStackTrace	()V
    //   802: aload 7
    //   804: astore 6
    //   806: aload_0
    //   807: sipush 10000
    //   810: new 458	com/estrongs/a/q
    //   813: dup
    //   814: aload 8
    //   816: invokevirtual 636	java/lang/Exception:toString	()Ljava/lang/String;
    //   819: aload 8
    //   821: invokespecial 584	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   824: invokevirtual 415	com/estrongs/fs/b/r:setTaskResult	(ILjava/lang/Object;)V
    //   827: aload 7
    //   829: astore 6
    //   831: aload_0
    //   832: invokespecial 431	com/estrongs/fs/b/r:l	()Lcom/estrongs/a/q;
    //   835: astore 8
    //   837: aload 8
    //   839: ifnull +15 -> 854
    //   842: aload 7
    //   844: astore 6
    //   846: aload_0
    //   847: bipush 12
    //   849: aload 8
    //   851: invokevirtual 415	com/estrongs/fs/b/r:setTaskResult	(ILjava/lang/Object;)V
    //   854: aload_0
    //   855: aload 7
    //   857: invokespecial 585	com/estrongs/fs/b/r:a	(Ljava/util/List;)V
    //   860: aload_0
    //   861: iconst_1
    //   862: putfield 126	com/estrongs/fs/b/r:C	Z
    //   865: aload_0
    //   866: getfield 118	com/estrongs/fs/b/r:b	Z
    //   869: ifeq -685 -> 184
    //   872: aload 7
    //   874: ifnull -690 -> 184
    //   877: aload 7
    //   879: invokeinterface 236 1 0
    //   884: ifle -700 -> 184
    //   887: invokestatic 615	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   890: aload 7
    //   892: aload_0
    //   893: getfield 112	com/estrongs/fs/b/r:w	I
    //   896: invokevirtual 618	com/estrongs/fs/a/b:b	(Ljava/util/List;I)V
    //   899: iconst_0
    //   900: ireturn
    //   901: aload 7
    //   903: astore 6
    //   905: aload_0
    //   906: getfield 89	com/estrongs/fs/b/r:l	Z
    //   909: ifeq -538 -> 371
    //   912: aload 7
    //   914: astore 6
    //   916: aload_0
    //   917: getfield 136	com/estrongs/fs/b/r:n	Lcom/estrongs/fs/h;
    //   920: invokeinterface 148 1 0
    //   925: invokestatic 440	com/estrongs/android/util/ap:bl	(Ljava/lang/String;)Z
    //   928: ifeq -557 -> 371
    //   931: aload 7
    //   933: astore 6
    //   935: aload_0
    //   936: invokespecial 431	com/estrongs/fs/b/r:l	()Lcom/estrongs/a/q;
    //   939: astore 9
    //   941: aload 9
    //   943: ifnull -572 -> 371
    //   946: aload 7
    //   948: astore 6
    //   950: aload_0
    //   951: bipush 12
    //   953: aload 9
    //   955: invokevirtual 415	com/estrongs/fs/b/r:setTaskResult	(ILjava/lang/Object;)V
    //   958: aload_0
    //   959: aconst_null
    //   960: invokespecial 585	com/estrongs/fs/b/r:a	(Ljava/util/List;)V
    //   963: aload_0
    //   964: iconst_1
    //   965: putfield 126	com/estrongs/fs/b/r:C	Z
    //   968: aload_0
    //   969: getfield 118	com/estrongs/fs/b/r:b	Z
    //   972: ifeq -788 -> 184
    //   975: iconst_0
    //   976: ifeq -792 -> 184
    //   979: new 587	java/lang/NullPointerException
    //   982: dup
    //   983: invokespecial 588	java/lang/NullPointerException:<init>	()V
    //   986: athrow
    //   987: aload_0
    //   988: getfield 74	com/estrongs/fs/b/r:f	Ljava/util/ArrayList;
    //   991: iconst_0
    //   992: invokevirtual 639	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   995: checkcast 194	com/estrongs/fs/b/u
    //   998: astore 8
    //   1000: aload 8
    //   1002: getfield 303	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   1005: invokeinterface 148 1 0
    //   1010: invokestatic 642	com/estrongs/android/util/ap:aJ	(Ljava/lang/String;)Z
    //   1013: ifeq +88 -> 1101
    //   1016: aload 8
    //   1018: getfield 303	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   1021: ldc_w 644
    //   1024: invokeinterface 188 2 0
    //   1029: astore 6
    //   1031: aload 6
    //   1033: ifnull +68 -> 1101
    //   1036: aload 6
    //   1038: invokestatic 626	com/estrongs/android/ui/pcs/u:a	()Lcom/estrongs/android/ui/pcs/u;
    //   1041: invokevirtual 646	com/estrongs/android/ui/pcs/u:e	()Ljava/lang/String;
    //   1044: invokestatic 649	com/estrongs/android/util/bk:a	(Ljava/lang/Object;Ljava/lang/Object;)Z
    //   1047: istore 5
    //   1049: iload 5
    //   1051: ifne +50 -> 1101
    //   1054: aload_0
    //   1055: aload 7
    //   1057: invokespecial 585	com/estrongs/fs/b/r:a	(Ljava/util/List;)V
    //   1060: aload_0
    //   1061: iconst_1
    //   1062: putfield 126	com/estrongs/fs/b/r:C	Z
    //   1065: aload_0
    //   1066: getfield 118	com/estrongs/fs/b/r:b	Z
    //   1069: ifeq -885 -> 184
    //   1072: aload 7
    //   1074: ifnull -890 -> 184
    //   1077: aload 7
    //   1079: invokeinterface 236 1 0
    //   1084: ifle -900 -> 184
    //   1087: invokestatic 615	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   1090: aload 7
    //   1092: aload_0
    //   1093: getfield 112	com/estrongs/fs/b/r:w	I
    //   1096: invokevirtual 618	com/estrongs/fs/a/b:b	(Ljava/util/List;I)V
    //   1099: iconst_0
    //   1100: ireturn
    //   1101: aload 8
    //   1103: getfield 303	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   1106: invokeinterface 148 1 0
    //   1111: aload 8
    //   1113: getfield 578	com/estrongs/fs/b/u:b	Ljava/lang/String;
    //   1116: invokestatic 652	com/estrongs/android/util/ap:e	(Ljava/lang/String;Ljava/lang/String;)Z
    //   1119: ifne -608 -> 511
    //   1122: aload_0
    //   1123: getfield 62	com/estrongs/fs/b/r:c	Lcom/estrongs/fs/d;
    //   1126: aload 8
    //   1128: invokevirtual 655	com/estrongs/fs/d:a	(Lcom/estrongs/fs/b/u;)Z
    //   1131: ifne +110 -> 1241
    //   1134: aload_0
    //   1135: invokevirtual 533	com/estrongs/fs/b/r:getTaskResult	()Lcom/estrongs/a/p;
    //   1138: getfield 408	com/estrongs/a/p:a	I
    //   1141: iconst_1
    //   1142: if_icmpeq +23 -> 1165
    //   1145: invokestatic 576	com/estrongs/fs/d:a	()Lcom/estrongs/fs/d;
    //   1148: aload_0
    //   1149: getfield 136	com/estrongs/fs/b/r:n	Lcom/estrongs/fs/h;
    //   1152: invokeinterface 207 1 0
    //   1157: iconst_0
    //   1158: iconst_0
    //   1159: invokevirtual 658	com/estrongs/fs/d:a	(Ljava/lang/String;ZZ)Lcom/estrongs/fs/h;
    //   1162: ifnull +32 -> 1194
    //   1165: aload 7
    //   1167: new 660	com/estrongs/fs/z
    //   1170: dup
    //   1171: aload_0
    //   1172: getfield 136	com/estrongs/fs/b/r:n	Lcom/estrongs/fs/h;
    //   1175: aload 8
    //   1177: getfield 303	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   1180: invokeinterface 169 1 0
    //   1185: invokespecial 663	com/estrongs/fs/z:<init>	(Lcom/estrongs/fs/h;Ljava/lang/String;)V
    //   1188: invokeinterface 142 2 0
    //   1193: pop
    //   1194: aload_0
    //   1195: aload 7
    //   1197: invokespecial 585	com/estrongs/fs/b/r:a	(Ljava/util/List;)V
    //   1200: aload_0
    //   1201: iconst_1
    //   1202: putfield 126	com/estrongs/fs/b/r:C	Z
    //   1205: aload_0
    //   1206: getfield 118	com/estrongs/fs/b/r:b	Z
    //   1209: ifeq -1025 -> 184
    //   1212: aload 7
    //   1214: ifnull -1030 -> 184
    //   1217: aload 7
    //   1219: invokeinterface 236 1 0
    //   1224: ifle -1040 -> 184
    //   1227: invokestatic 615	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   1230: aload 7
    //   1232: aload_0
    //   1233: getfield 112	com/estrongs/fs/b/r:w	I
    //   1236: invokevirtual 618	com/estrongs/fs/a/b:b	(Ljava/util/List;I)V
    //   1239: iconst_0
    //   1240: ireturn
    //   1241: aload_0
    //   1242: getfield 69	com/estrongs/fs/b/r:e	Ljava/util/HashMap;
    //   1245: aload 8
    //   1247: getfield 303	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   1250: invokeinterface 207 1 0
    //   1255: invokevirtual 666	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   1258: ifeq +48 -> 1306
    //   1261: aload 7
    //   1263: new 660	com/estrongs/fs/z
    //   1266: dup
    //   1267: aload_0
    //   1268: getfield 136	com/estrongs/fs/b/r:n	Lcom/estrongs/fs/h;
    //   1271: aload_0
    //   1272: getfield 69	com/estrongs/fs/b/r:e	Ljava/util/HashMap;
    //   1275: aload 8
    //   1277: getfield 303	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   1280: invokeinterface 207 1 0
    //   1285: invokevirtual 468	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   1288: checkcast 152	java/lang/String
    //   1291: invokestatic 174	com/estrongs/android/util/ap:d	(Ljava/lang/String;)Ljava/lang/String;
    //   1294: invokespecial 663	com/estrongs/fs/z:<init>	(Lcom/estrongs/fs/h;Ljava/lang/String;)V
    //   1297: invokeinterface 142 2 0
    //   1302: pop
    //   1303: goto -792 -> 511
    //   1306: aload 8
    //   1308: getfield 303	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   1311: instanceof 668
    //   1314: ifeq +91 -> 1405
    //   1317: aload 7
    //   1319: new 660	com/estrongs/fs/z
    //   1322: dup
    //   1323: aload_0
    //   1324: getfield 136	com/estrongs/fs/b/r:n	Lcom/estrongs/fs/h;
    //   1327: aload 8
    //   1329: getfield 578	com/estrongs/fs/b/u:b	Ljava/lang/String;
    //   1332: invokestatic 174	com/estrongs/android/util/ap:d	(Ljava/lang/String;)Ljava/lang/String;
    //   1335: invokespecial 663	com/estrongs/fs/z:<init>	(Lcom/estrongs/fs/h;Ljava/lang/String;)V
    //   1338: invokeinterface 142 2 0
    //   1343: pop
    //   1344: goto -833 -> 511
    //   1347: astore 8
    //   1349: aload 7
    //   1351: astore 6
    //   1353: aload 8
    //   1355: astore 7
    //   1357: aload_0
    //   1358: aload 6
    //   1360: invokespecial 585	com/estrongs/fs/b/r:a	(Ljava/util/List;)V
    //   1363: aload_0
    //   1364: iconst_1
    //   1365: putfield 126	com/estrongs/fs/b/r:C	Z
    //   1368: aload_0
    //   1369: getfield 118	com/estrongs/fs/b/r:b	Z
    //   1372: ifeq +30 -> 1402
    //   1375: aload 6
    //   1377: ifnull +25 -> 1402
    //   1380: aload 6
    //   1382: invokeinterface 236 1 0
    //   1387: ifle +15 -> 1402
    //   1390: invokestatic 615	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   1393: aload 6
    //   1395: aload_0
    //   1396: getfield 112	com/estrongs/fs/b/r:w	I
    //   1399: invokevirtual 618	com/estrongs/fs/a/b:b	(Ljava/util/List;I)V
    //   1402: aload 7
    //   1404: athrow
    //   1405: aload 7
    //   1407: new 660	com/estrongs/fs/z
    //   1410: dup
    //   1411: aload_0
    //   1412: getfield 136	com/estrongs/fs/b/r:n	Lcom/estrongs/fs/h;
    //   1415: aload 8
    //   1417: getfield 303	com/estrongs/fs/b/u:a	Lcom/estrongs/fs/h;
    //   1420: invokeinterface 169 1 0
    //   1425: invokespecial 663	com/estrongs/fs/z:<init>	(Lcom/estrongs/fs/h;Ljava/lang/String;)V
    //   1428: invokeinterface 142 2 0
    //   1433: pop
    //   1434: goto -923 -> 511
    //   1437: iload 4
    //   1439: ifeq +35 -> 1474
    //   1442: invokestatic 674	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   1445: invokevirtual 678	android/os/Looper:getThread	()Ljava/lang/Thread;
    //   1448: astore 8
    //   1450: invokestatic 683	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   1453: astore 6
    //   1455: aload 8
    //   1457: aload 6
    //   1459: if_acmpne +176 -> 1635
    //   1462: iconst_1
    //   1463: istore_1
    //   1464: iload_1
    //   1465: ifne +9 -> 1474
    //   1468: ldc2_w 684
    //   1471: invokestatic 689	java/lang/Thread:sleep	(J)V
    //   1474: aload_0
    //   1475: getfield 178	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   1478: getfield 421	com/estrongs/a/a/m:c	J
    //   1481: lconst_0
    //   1482: lcmp
    //   1483: ifle +17 -> 1500
    //   1486: aload_0
    //   1487: getfield 178	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   1490: aload_0
    //   1491: getfield 178	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   1494: getfield 421	com/estrongs/a/a/m:c	J
    //   1497: putfield 470	com/estrongs/a/a/m:d	J
    //   1500: aload_0
    //   1501: getfield 178	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   1504: getfield 427	com/estrongs/a/a/m:e	J
    //   1507: lconst_0
    //   1508: lcmp
    //   1509: ifle +17 -> 1526
    //   1512: aload_0
    //   1513: getfield 178	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   1516: aload_0
    //   1517: getfield 178	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   1520: getfield 427	com/estrongs/a/a/m:e	J
    //   1523: putfield 456	com/estrongs/a/a/m:f	J
    //   1526: aload_0
    //   1527: aload_0
    //   1528: getfield 178	com/estrongs/fs/b/r:processData	Lcom/estrongs/a/a/m;
    //   1531: invokevirtual 600	com/estrongs/fs/b/r:onProgress	(Lcom/estrongs/a/a/m;)V
    //   1534: aload_0
    //   1535: ldc_w 691
    //   1538: invokevirtual 695	com/estrongs/fs/b/r:getDecisionData	(Ljava/lang/Class;)Lcom/estrongs/a/a/d;
    //   1541: checkcast 691	com/estrongs/a/a/h
    //   1544: ifnull +74 -> 1618
    //   1547: aload_0
    //   1548: getfield 78	com/estrongs/fs/b/r:h	I
    //   1551: aload_0
    //   1552: getfield 76	com/estrongs/fs/b/r:g	I
    //   1555: if_icmpne +63 -> 1618
    //   1558: aload_0
    //   1559: iconst_3
    //   1560: aconst_null
    //   1561: invokevirtual 415	com/estrongs/fs/b/r:setTaskResult	(ILjava/lang/Object;)V
    //   1564: aload_0
    //   1565: aload 7
    //   1567: invokespecial 585	com/estrongs/fs/b/r:a	(Ljava/util/List;)V
    //   1570: aload_0
    //   1571: iconst_1
    //   1572: putfield 126	com/estrongs/fs/b/r:C	Z
    //   1575: aload_0
    //   1576: getfield 118	com/estrongs/fs/b/r:b	Z
    //   1579: ifeq +30 -> 1609
    //   1582: aload 7
    //   1584: ifnull +25 -> 1609
    //   1587: aload 7
    //   1589: invokeinterface 236 1 0
    //   1594: ifle +15 -> 1609
    //   1597: invokestatic 615	com/estrongs/fs/a/b:a	()Lcom/estrongs/fs/a/b;
    //   1600: aload 7
    //   1602: aload_0
    //   1603: getfield 112	com/estrongs/fs/b/r:w	I
    //   1606: invokevirtual 618	com/estrongs/fs/a/b:b	(Ljava/util/List;I)V
    //   1609: iconst_1
    //   1610: ireturn
    //   1611: astore 6
    //   1613: iconst_0
    //   1614: istore_1
    //   1615: goto -151 -> 1464
    //   1618: aload_0
    //   1619: iconst_0
    //   1620: aload_0
    //   1621: getfield 87	com/estrongs/fs/b/r:k	Lcom/estrongs/fs/b/v;
    //   1624: invokevirtual 415	com/estrongs/fs/b/r:setTaskResult	(ILjava/lang/Object;)V
    //   1627: goto -63 -> 1564
    //   1630: astore 7
    //   1632: goto -275 -> 1357
    //   1635: iconst_0
    //   1636: istore_1
    //   1637: goto -173 -> 1464
    //   1640: astore 8
    //   1642: goto -849 -> 793
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1645	0	this	r
    //   1463	174	1	i1	int
    //   626	130	2	l1	long
    //   503	935	4	bool1	boolean
    //   525	525	5	bool2	boolean
    //   8	766	6	localObject1	Object
    //   783	7	6	localException1	Exception
    //   795	663	6	localObject2	Object
    //   1611	1	6	localException2	Exception
    //   1	1600	7	localObject3	Object
    //   1630	1	7	localObject4	Object
    //   4	1324	8	localObject5	Object
    //   1347	69	8	localObject6	Object
    //   1448	8	8	localThread	Thread
    //   1640	1	8	localException3	Exception
    //   352	270	9	localObject7	Object
    //   769	7	9	localException4	Exception
    //   939	15	9	localq	q
    // Exception table:
    //   from	to	target	type
    //   606	617	769	java/lang/Exception
    //   631	643	769	java/lang/Exception
    //   655	693	769	java/lang/Exception
    //   726	766	769	java/lang/Exception
    //   10	17	783	java/lang/Exception
    //   21	29	783	java/lang/Exception
    //   33	41	783	java/lang/Exception
    //   45	53	783	java/lang/Exception
    //   57	62	783	java/lang/Exception
    //   66	111	783	java/lang/Exception
    //   115	123	783	java/lang/Exception
    //   127	134	783	java/lang/Exception
    //   138	155	783	java/lang/Exception
    //   190	204	783	java/lang/Exception
    //   208	222	783	java/lang/Exception
    //   226	233	783	java/lang/Exception
    //   237	245	783	java/lang/Exception
    //   249	257	783	java/lang/Exception
    //   261	268	783	java/lang/Exception
    //   272	282	783	java/lang/Exception
    //   286	296	783	java/lang/Exception
    //   329	344	783	java/lang/Exception
    //   348	354	783	java/lang/Exception
    //   363	371	783	java/lang/Exception
    //   375	389	783	java/lang/Exception
    //   393	404	783	java/lang/Exception
    //   408	418	783	java/lang/Exception
    //   422	448	783	java/lang/Exception
    //   452	460	783	java/lang/Exception
    //   464	472	783	java/lang/Exception
    //   476	485	783	java/lang/Exception
    //   583	597	783	java/lang/Exception
    //   775	780	783	java/lang/Exception
    //   905	912	783	java/lang/Exception
    //   916	931	783	java/lang/Exception
    //   935	941	783	java/lang/Exception
    //   950	958	783	java/lang/Exception
    //   485	511	1347	finally
    //   511	527	1347	finally
    //   987	1031	1347	finally
    //   1036	1049	1347	finally
    //   1101	1165	1347	finally
    //   1165	1194	1347	finally
    //   1241	1303	1347	finally
    //   1306	1344	1347	finally
    //   1405	1434	1347	finally
    //   1442	1455	1347	finally
    //   1468	1474	1347	finally
    //   1474	1500	1347	finally
    //   1500	1526	1347	finally
    //   1526	1564	1347	finally
    //   1618	1627	1347	finally
    //   1442	1455	1611	java/lang/Exception
    //   10	17	1630	finally
    //   21	29	1630	finally
    //   33	41	1630	finally
    //   45	53	1630	finally
    //   57	62	1630	finally
    //   66	111	1630	finally
    //   115	123	1630	finally
    //   127	134	1630	finally
    //   138	155	1630	finally
    //   190	204	1630	finally
    //   208	222	1630	finally
    //   226	233	1630	finally
    //   237	245	1630	finally
    //   249	257	1630	finally
    //   261	268	1630	finally
    //   272	282	1630	finally
    //   286	296	1630	finally
    //   329	344	1630	finally
    //   348	354	1630	finally
    //   363	371	1630	finally
    //   375	389	1630	finally
    //   393	404	1630	finally
    //   408	418	1630	finally
    //   422	448	1630	finally
    //   452	460	1630	finally
    //   464	472	1630	finally
    //   476	485	1630	finally
    //   583	597	1630	finally
    //   606	617	1630	finally
    //   631	643	1630	finally
    //   655	693	1630	finally
    //   726	766	1630	finally
    //   775	780	1630	finally
    //   797	802	1630	finally
    //   806	827	1630	finally
    //   831	837	1630	finally
    //   846	854	1630	finally
    //   905	912	1630	finally
    //   916	931	1630	finally
    //   935	941	1630	finally
    //   950	958	1630	finally
    //   485	511	1640	java/lang/Exception
    //   511	527	1640	java/lang/Exception
    //   987	1031	1640	java/lang/Exception
    //   1036	1049	1640	java/lang/Exception
    //   1101	1165	1640	java/lang/Exception
    //   1165	1194	1640	java/lang/Exception
    //   1241	1303	1640	java/lang/Exception
    //   1306	1344	1640	java/lang/Exception
    //   1405	1434	1640	java/lang/Exception
    //   1468	1474	1640	java/lang/Exception
    //   1474	1500	1640	java/lang/Exception
    //   1500	1526	1640	java/lang/Exception
    //   1526	1564	1640	java/lang/Exception
    //   1618	1627	1640	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.b.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */