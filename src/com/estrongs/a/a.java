package com.estrongs.a;

import android.app.Activity;
import android.os.ConditionVariable;
import com.estrongs.a.a.g;
import com.estrongs.a.a.h;
import com.estrongs.a.a.l;
import com.estrongs.a.a.m;
import com.estrongs.a.a.n;
import com.estrongs.a.a.o;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import org.json.JSONException;
import org.json.JSONObject;

public class a
{
  public static final int TASK_STATUS_DONE = 4;
  public static final int TASK_STATUS_NOT_START = 1;
  public static final int TASK_STATUS_PAUSE = 3;
  public static final int TASK_STATUS_RUNNING = 2;
  public static final int TASK_STATUS_STOP = 5;
  private static ArrayList<n> allFinisedListeners = new ArrayList();
  private static Map<Long, a> id2task = new HashMap();
  private static HashMap<Long, Stack<a>> tasks = new HashMap();
  private boolean async;
  private ConditionVariable async_cond = new ConditionVariable();
  private Thread async_thread = null;
  protected boolean canCancel = true;
  protected boolean canHide = true;
  protected boolean canPause = false;
  protected boolean canRestart = false;
  private ConditionVariable cond = new ConditionVariable();
  private String description;
  private com.estrongs.a.a.a e = null;
  protected long endTime = -1L;
  HashMap<String, com.estrongs.a.a.d> expDatas = new HashMap();
  private boolean hasNotifyStop = false;
  private long id = System.currentTimeMillis();
  public boolean inTestMode = false;
  public boolean isAppBackupOverwriteApplyAllByUser = false;
  public int notificationId = -1;
  private a parent;
  private List<o> postListeners = new ArrayList();
  private int priority = 5;
  public m processData = new m();
  private List<l> progessListeners = new ArrayList();
  private Integer request_task_status_change = new Integer(1);
  protected long startTime = -1L;
  private List<com.estrongs.a.a.p> statusListeners = new ArrayList();
  private JSONObject summary = new JSONObject();
  private boolean task_hide = false;
  private p task_result = new p();
  private Integer task_status = new Integer(1);
  protected int task_type = 0;
  public boolean waitingDecision = false;
  
  public a()
  {
    id2task.put(Long.valueOf(id), this);
  }
  
  public a(JSONObject paramJSONObject)
  {
    this();
    summary = paramJSONObject;
    id = paramJSONObject.optLong("task_id", id);
    task_type = paramJSONObject.optInt("task_type");
    canRestart = paramJSONObject.optBoolean("restartable");
    description = paramJSONObject.optString("task_desc");
    startTime = paramJSONObject.optLong("start_time", -1L);
    endTime = paramJSONObject.optLong("end_time", -1L);
    setTaskStatus(paramJSONObject.optInt("status"));
  }
  
  public static void addTaskAllFinishedListener(n paramn)
  {
    synchronized (allFinisedListeners)
    {
      if (!allFinisedListeners.contains(paramn)) {
        allFinisedListeners.add(paramn);
      }
      return;
    }
  }
  
  public static boolean existsTask(Class paramClass)
  {
    synchronized (tasks)
    {
      Iterator localIterator = tasks.values().iterator();
      while (localIterator.hasNext())
      {
        Stack localStack = (Stack)localIterator.next();
        if ((!localStack.isEmpty()) && (paramClass.isInstance((a)localStack.peek()))) {
          return true;
        }
      }
      return false;
    }
  }
  
  public static a getCurrentTask()
  {
    synchronized (tasks)
    {
      long l = Thread.currentThread().getId();
      Object localObject1 = (Stack)tasks.get(Long.valueOf(l));
      if ((localObject1 == null) || (((Stack)localObject1).size() <= 0)) {
        return null;
      }
      localObject1 = (a)((Stack)localObject1).peek();
      if (((a)localObject1).isTaskHide()) {
        return null;
      }
      return (a)localObject1;
    }
  }
  
  public static String getStatusString(int paramInt)
  {
    if (paramInt == 4) {
      return "finish";
    }
    if (paramInt == 1) {
      return "notStart";
    }
    if (paramInt == 3) {
      return "pause";
    }
    if (paramInt == 2) {
      return "running";
    }
    if (paramInt == 5) {
      return "error";
    }
    return "unknown";
  }
  
  public static a getTask(long paramLong)
  {
    return (a)id2task.get(Long.valueOf(paramLong));
  }
  
  public static boolean isAllTaskFinished()
  {
    return tasks.size() == 0;
  }
  
  private static a removeTask()
  {
    a locala1 = null;
    synchronized (tasks)
    {
      long l = Thread.currentThread().getId();
      if (!tasks.containsKey(Long.valueOf(l))) {
        return null;
      }
      Object localObject = (Stack)tasks.get(Long.valueOf(l));
      if (((Stack)localObject).size() != 0) {
        locala1 = (a)((Stack)localObject).pop();
      }
      if (((Stack)localObject).size() == 0) {
        tasks.remove(Long.valueOf(l));
      }
      if ((tasks.size() == 0) && (allFinisedListeners.size() > 0))
      {
        localObject = new ArrayList(allFinisedListeners).iterator();
        if (((Iterator)localObject).hasNext()) {
          ((n)((Iterator)localObject).next()).a();
        }
      }
    }
    return locala2;
  }
  
  public static void removeTaskAllFinishedListener(n paramn)
  {
    synchronized (allFinisedListeners)
    {
      allFinisedListeners.remove(paramn);
      return;
    }
  }
  
  private static void saveTask(a parama)
  {
    synchronized (tasks)
    {
      long l = Thread.currentThread().getId();
      Stack localStack2 = (Stack)tasks.get(Long.valueOf(l));
      Stack localStack1 = localStack2;
      if (localStack2 == null)
      {
        localStack1 = new Stack();
        tasks.put(Long.valueOf(l), localStack1);
      }
      localStack1.push(parama);
      return;
    }
  }
  
  private void setRequestStatus(int paramInt)
  {
    synchronized (request_task_status_change)
    {
      request_task_status_change = Integer.valueOf(paramInt);
      return;
    }
  }
  
  private void statusChangeNotify(int paramInt1, int paramInt2)
  {
    recordSummary("status", Integer.valueOf(paramInt2));
    LinkedList localLinkedList = new LinkedList();
    synchronized (statusListeners)
    {
      localLinkedList.addAll(statusListeners);
      int i = 0;
      if (i < localLinkedList.size())
      {
        ((com.estrongs.a.a.p)localLinkedList.get(i)).a(this, paramInt1, paramInt2);
        i += 1;
      }
    }
    ((List)localObject).clear();
  }
  
  public static void stopTasks(Class paramClass)
  {
    synchronized (tasks)
    {
      Iterator localIterator = tasks.values().iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (Stack)localIterator.next();
        if (!((Stack)localObject).isEmpty())
        {
          localObject = (a)((Stack)localObject).peek();
          if (paramClass.isInstance(localObject)) {
            ((a)localObject).requestStop();
          }
        }
      }
    }
  }
  
  public static void test(Activity paramActivity, boolean paramBoolean)
  {
    c localc = new c();
    paramActivity = new d(paramActivity);
    a locala = new a();
    inTestMode = true;
    locala.addTaskStatusChangeListener(localc);
    locala.setTaskDecisionListener(paramActivity);
    if (paramBoolean)
    {
      locala.execute();
      return;
    }
    new k(locala).start();
  }
  
  public void addPostListener(o paramo)
  {
    synchronized (postListeners)
    {
      if (!postListeners.contains(paramo)) {
        postListeners.add(paramo);
      }
      return;
    }
  }
  
  public void addProgressListener(l paraml)
  {
    if (!progessListeners.contains(paraml)) {
      progessListeners.add(paraml);
    }
  }
  
  public void addProgressListeners(List<l> paramList)
  {
    int i = 0;
    while (i < paramList.size())
    {
      addProgressListener((l)paramList.get(i));
      i += 1;
    }
  }
  
  public void addTaskStatusChangeListener(com.estrongs.a.a.p paramp)
  {
    synchronized (statusListeners)
    {
      if (!statusListeners.contains(paramp)) {
        statusListeners.add(paramp);
      }
      return;
    }
  }
  
  public boolean canCancel()
  {
    return canCancel;
  }
  
  public boolean canHide()
  {
    return canHide;
  }
  
  public boolean canPause()
  {
    return canPause;
  }
  
  public boolean canRestart()
  {
    return canRestart;
  }
  
  public void enableTaskHide(boolean paramBoolean)
  {
    task_hide = paramBoolean;
  }
  
  public void execute()
  {
    execute(true);
  }
  
  public void execute(boolean paramBoolean)
  {
    if ((getTaskStatus() != 1) && (getTaskStatus() != 5) && (getTaskStatus() != 4)) {
      return;
    }
    hasNotifyStop = false;
    async = paramBoolean;
    if (paramBoolean)
    {
      async_thread = new b(this);
      async_thread.setPriority(priority);
      async_thread.start();
      return;
    }
    executeHelper();
  }
  
  /* Error */
  protected void executeHelper()
  {
    // Byte code:
    //   0: iconst_5
    //   1: istore_1
    //   2: iconst_0
    //   3: istore_2
    //   4: aload_0
    //   5: invokevirtual 443	com/estrongs/a/a:reset	()V
    //   8: aload_0
    //   9: invokestatic 445	com/estrongs/a/a:saveTask	(Lcom/estrongs/a/a;)V
    //   12: getstatic 87	com/estrongs/a/a:id2task	Ljava/util/Map;
    //   15: aload_0
    //   16: getfield 104	com/estrongs/a/a:id	J
    //   19: invokestatic 176	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   22: invokeinterface 446 2 0
    //   27: ifne +20 -> 47
    //   30: getstatic 87	com/estrongs/a/a:id2task	Ljava/util/Map;
    //   33: aload_0
    //   34: getfield 104	com/estrongs/a/a:id	J
    //   37: invokestatic 176	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   40: aload_0
    //   41: invokeinterface 182 3 0
    //   46: pop
    //   47: aload_0
    //   48: iconst_2
    //   49: invokevirtual 218	com/estrongs/a/a:setTaskStatus	(I)V
    //   52: aload_0
    //   53: invokevirtual 449	com/estrongs/a/a:needSystemLock	()Z
    //   56: ifeq +6 -> 62
    //   59: invokestatic 452	com/estrongs/android/util/k:a	()V
    //   62: aload_0
    //   63: invokevirtual 455	com/estrongs/a/a:task	()Z
    //   66: istore_3
    //   67: iload_3
    //   68: istore_2
    //   69: aload_0
    //   70: invokevirtual 449	com/estrongs/a/a:needSystemLock	()Z
    //   73: ifeq +6 -> 79
    //   76: invokestatic 458	com/estrongs/android/util/k:b	()V
    //   79: iload_2
    //   80: ifeq +5 -> 85
    //   83: iconst_4
    //   84: istore_1
    //   85: aload_0
    //   86: iload_1
    //   87: invokevirtual 218	com/estrongs/a/a:setTaskStatus	(I)V
    //   90: iload_2
    //   91: ifne +21 -> 112
    //   94: aload_0
    //   95: getfield 152	com/estrongs/a/a:task_result	Lcom/estrongs/a/p;
    //   98: getfield 460	com/estrongs/a/p:a	I
    //   101: ifne +11 -> 112
    //   104: aload_0
    //   105: sipush 10000
    //   108: aconst_null
    //   109: invokevirtual 464	com/estrongs/a/a:setTaskResult	(ILjava/lang/Object;)V
    //   112: getstatic 87	com/estrongs/a/a:id2task	Ljava/util/Map;
    //   115: aload_0
    //   116: getfield 104	com/estrongs/a/a:id	J
    //   119: invokestatic 176	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   122: invokeinterface 465 2 0
    //   127: pop
    //   128: invokestatic 467	com/estrongs/a/a:removeTask	()Lcom/estrongs/a/a;
    //   131: pop
    //   132: aload_0
    //   133: getfield 124	com/estrongs/a/a:progessListeners	Ljava/util/List;
    //   136: invokeinterface 370 1 0
    //   141: aload_0
    //   142: getfield 120	com/estrongs/a/a:statusListeners	Ljava/util/List;
    //   145: astore 4
    //   147: aload 4
    //   149: monitorenter
    //   150: aload_0
    //   151: getfield 120	com/estrongs/a/a:statusListeners	Ljava/util/List;
    //   154: invokeinterface 370 1 0
    //   159: aload 4
    //   161: monitorexit
    //   162: aload_0
    //   163: aconst_null
    //   164: putfield 126	com/estrongs/a/a:e	Lcom/estrongs/a/a/a;
    //   167: aload_0
    //   168: invokevirtual 470	com/estrongs/a/a:postTask	()V
    //   171: aload_0
    //   172: getfield 122	com/estrongs/a/a:postListeners	Ljava/util/List;
    //   175: astore 4
    //   177: aload 4
    //   179: monitorenter
    //   180: aload_0
    //   181: getfield 122	com/estrongs/a/a:postListeners	Ljava/util/List;
    //   184: invokeinterface 471 1 0
    //   189: astore 5
    //   191: aload 5
    //   193: invokeinterface 251 1 0
    //   198: ifeq +100 -> 298
    //   201: aload 5
    //   203: invokeinterface 255 1 0
    //   208: checkcast 473	com/estrongs/a/a/o
    //   211: astore 6
    //   213: aload 6
    //   215: aload_0
    //   216: iconst_1
    //   217: invokeinterface 476 3 0
    //   222: goto -31 -> 191
    //   225: astore 6
    //   227: goto -36 -> 191
    //   230: astore 4
    //   232: aload 4
    //   234: invokevirtual 479	java/lang/Exception:printStackTrace	()V
    //   237: aload_0
    //   238: sipush 10000
    //   241: new 481	com/estrongs/a/q
    //   244: dup
    //   245: aload 4
    //   247: invokevirtual 485	java/lang/Exception:toString	()Ljava/lang/String;
    //   250: aload 4
    //   252: invokespecial 488	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   255: invokevirtual 464	com/estrongs/a/a:setTaskResult	(ILjava/lang/Object;)V
    //   258: goto -189 -> 69
    //   261: astore 4
    //   263: aload 4
    //   265: invokevirtual 489	java/lang/OutOfMemoryError:printStackTrace	()V
    //   268: aload_0
    //   269: iconst_5
    //   270: new 481	com/estrongs/a/q
    //   273: dup
    //   274: aload 4
    //   276: invokevirtual 490	java/lang/OutOfMemoryError:toString	()Ljava/lang/String;
    //   279: aload 4
    //   281: invokespecial 492	com/estrongs/a/q:<init>	(Ljava/lang/String;Ljava/lang/Object;)V
    //   284: invokevirtual 464	com/estrongs/a/a:setTaskResult	(ILjava/lang/Object;)V
    //   287: goto -218 -> 69
    //   290: astore 5
    //   292: aload 4
    //   294: monitorexit
    //   295: aload 5
    //   297: athrow
    //   298: aload_0
    //   299: getfield 122	com/estrongs/a/a:postListeners	Ljava/util/List;
    //   302: invokeinterface 370 1 0
    //   307: aload 4
    //   309: monitorexit
    //   310: return
    //   311: astore 5
    //   313: aload 4
    //   315: monitorexit
    //   316: aload 5
    //   318: athrow
    //   319: astore 4
    //   321: aload_0
    //   322: getfield 122	com/estrongs/a/a:postListeners	Ljava/util/List;
    //   325: astore 4
    //   327: aload 4
    //   329: monitorenter
    //   330: aload_0
    //   331: getfield 122	com/estrongs/a/a:postListeners	Ljava/util/List;
    //   334: invokeinterface 471 1 0
    //   339: astore 5
    //   341: aload 5
    //   343: invokeinterface 251 1 0
    //   348: ifeq +32 -> 380
    //   351: aload 5
    //   353: invokeinterface 255 1 0
    //   358: checkcast 473	com/estrongs/a/a/o
    //   361: astore 6
    //   363: aload 6
    //   365: aload_0
    //   366: iconst_0
    //   367: invokeinterface 476 3 0
    //   372: goto -31 -> 341
    //   375: astore 6
    //   377: goto -36 -> 341
    //   380: aload_0
    //   381: getfield 122	com/estrongs/a/a:postListeners	Ljava/util/List;
    //   384: invokeinterface 370 1 0
    //   389: aload 4
    //   391: monitorexit
    //   392: return
    //   393: astore 5
    //   395: aload 4
    //   397: monitorexit
    //   398: aload 5
    //   400: athrow
    //   401: astore 5
    //   403: aload_0
    //   404: getfield 122	com/estrongs/a/a:postListeners	Ljava/util/List;
    //   407: astore 4
    //   409: aload 4
    //   411: monitorenter
    //   412: aload_0
    //   413: getfield 122	com/estrongs/a/a:postListeners	Ljava/util/List;
    //   416: invokeinterface 471 1 0
    //   421: astore 6
    //   423: aload 6
    //   425: invokeinterface 251 1 0
    //   430: ifeq +32 -> 462
    //   433: aload 6
    //   435: invokeinterface 255 1 0
    //   440: checkcast 473	com/estrongs/a/a/o
    //   443: astore 7
    //   445: aload 7
    //   447: aload_0
    //   448: iconst_1
    //   449: invokeinterface 476 3 0
    //   454: goto -31 -> 423
    //   457: astore 7
    //   459: goto -36 -> 423
    //   462: aload_0
    //   463: getfield 122	com/estrongs/a/a:postListeners	Ljava/util/List;
    //   466: invokeinterface 370 1 0
    //   471: aload 4
    //   473: monitorexit
    //   474: aload 5
    //   476: athrow
    //   477: astore 5
    //   479: aload 4
    //   481: monitorexit
    //   482: aload 5
    //   484: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	485	0	this	a
    //   1	86	1	i	int
    //   3	88	2	j	int
    //   66	2	3	bool	boolean
    //   145	33	4	localList1	List
    //   230	21	4	localException1	Exception
    //   261	53	4	localOutOfMemoryError	OutOfMemoryError
    //   319	1	4	localException2	Exception
    //   189	13	5	localIterator1	Iterator
    //   290	6	5	localObject1	Object
    //   311	6	5	localObject2	Object
    //   339	13	5	localIterator2	Iterator
    //   393	6	5	localObject3	Object
    //   401	74	5	localObject4	Object
    //   477	6	5	localObject5	Object
    //   211	3	6	localo1	o
    //   225	1	6	localException3	Exception
    //   361	3	6	localo2	o
    //   375	1	6	localException4	Exception
    //   421	13	6	localIterator3	Iterator
    //   443	3	7	localo3	o
    //   457	1	7	localException5	Exception
    // Exception table:
    //   from	to	target	type
    //   213	222	225	java/lang/Exception
    //   62	67	230	java/lang/Exception
    //   62	67	261	java/lang/OutOfMemoryError
    //   150	162	290	finally
    //   292	295	290	finally
    //   180	191	311	finally
    //   191	213	311	finally
    //   213	222	311	finally
    //   298	310	311	finally
    //   313	316	311	finally
    //   167	171	319	java/lang/Exception
    //   363	372	375	java/lang/Exception
    //   330	341	393	finally
    //   341	363	393	finally
    //   363	372	393	finally
    //   380	392	393	finally
    //   395	398	393	finally
    //   167	171	401	finally
    //   445	454	457	java/lang/Exception
    //   412	423	477	finally
    //   423	445	477	finally
    //   445	454	477	finally
    //   462	474	477	finally
    //   479	482	477	finally
  }
  
  public void forceResume()
  {
    cond.open();
  }
  
  public com.estrongs.a.a.d getDecision(Class<?> paramClass, Object... paramVarArgs)
  {
    waitingDecision = true;
    if ((parent != null) && (!async)) {
      parent.waitingDecision = waitingDecision;
    }
    paramClass = getDecisionData(paramClass);
    if ((paramClass != null) && (e != null))
    {
      if (paramVarArgs != null) {
        paramClass.a(paramVarArgs);
      }
      if ((!e) || ((!f) && (!hasNotifyStop)))
      {
        e = false;
        if (!isAppBackupOverwriteApplyAllByUser)
        {
          e.a(this, paramClass);
          if (!e) {
            suspend();
          }
        }
      }
    }
    waitingDecision = false;
    if ((!async) && (parent != null)) {
      parent.waitingDecision = waitingDecision;
    }
    return paramClass;
  }
  
  public com.estrongs.a.a.d getDecisionData(Class<?> paramClass)
  {
    String str = paramClass.getName();
    com.estrongs.a.a.d locald2 = (com.estrongs.a.a.d)expDatas.get(str);
    com.estrongs.a.a.d locald1 = locald2;
    if (locald2 == null) {}
    try
    {
      locald1 = (com.estrongs.a.a.d)paramClass.newInstance();
      expDatas.put(str, locald1);
      return locald1;
    }
    catch (Exception paramClass)
    {
      paramClass.printStackTrace();
    }
    return null;
  }
  
  public String getDescription()
  {
    return description;
  }
  
  public List<l> getProgressListeners()
  {
    return progessListeners;
  }
  
  public long getStartTime()
  {
    return startTime;
  }
  
  public com.estrongs.a.a.a getTaskDecisionListener()
  {
    return e;
  }
  
  public long getTaskId()
  {
    return id;
  }
  
  public p getTaskResult()
  {
    return task_result;
  }
  
  public int getTaskStatus()
  {
    if ((hasNotifyStop) && (task_status.intValue() == 2)) {
      return 5;
    }
    synchronized (task_status)
    {
      int i = task_status.intValue();
      return i;
    }
  }
  
  public int getTastType()
  {
    return task_type;
  }
  
  public void handleMessage(int paramInt, Object... paramVarArgs)
  {
    if (paramInt == 5)
    {
      paramVarArgs = (com.estrongs.a.a.d)paramVarArgs[0];
      e = true;
      isAppBackupOverwriteApplyAllByUser = f;
      resume();
    }
  }
  
  protected boolean hasProgressListener()
  {
    return progessListeners.size() > 0;
  }
  
  public boolean isTaskHide()
  {
    return task_hide;
  }
  
  protected boolean needSystemLock()
  {
    return true;
  }
  
  public void onProgress(m paramm)
  {
    try
    {
      if (!hasNotifyStop)
      {
        int i = 0;
        while (i < progessListeners.size())
        {
          ((l)progessListeners.get(i)).a(this, paramm);
          i += 1;
        }
      }
      return;
    }
    catch (Exception paramm) {}
  }
  
  protected void postTask() {}
  
  public void recordSummary(String paramString, Object paramObject)
  {
    try
    {
      summary.put(paramString, paramObject);
      return;
    }
    catch (JSONException paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
      }
    }
    finally {}
  }
  
  public void removePostListener(o paramo)
  {
    synchronized (postListeners)
    {
      postListeners.remove(paramo);
      return;
    }
  }
  
  public void removeProgressListener(l paraml)
  {
    progessListeners.remove(paraml);
  }
  
  public void removeTaskStatusChangeListener(com.estrongs.a.a.p paramp)
  {
    synchronized (statusListeners)
    {
      statusListeners.remove(paramp);
      return;
    }
  }
  
  public void requestStop()
  {
    requestStop(null);
  }
  
  public void requestStop(int paramInt, Object paramObject)
  {
    if (hasNotifyStop) {}
    int i;
    do
    {
      return;
      i = getTaskStatus();
    } while ((i == 5) || (i == 4));
    setRequestStatus(5);
    setTaskResult(paramInt, paramObject);
    if (i == 3)
    {
      cond.open();
      return;
    }
    canRestart = false;
    hasNotifyStop = true;
    statusChangeNotify(i, 5);
  }
  
  public void requestStop(Object paramObject)
  {
    requestStop(1, paramObject);
  }
  
  public void requsestPause()
  {
    if (getTaskStatus() != 2) {
      return;
    }
    setRequestStatus(3);
  }
  
  public void reset()
  {
    request_task_status_change = Integer.valueOf(1);
    task_status = Integer.valueOf(1);
    processData.b = 0;
    setTaskResult(0, null);
  }
  
  public void resume()
  {
    if (getTaskStatus() != 3) {
      return;
    }
    setRequestStatus(1);
    cond.open();
  }
  
  public void sendMessage(int paramInt, Object... paramVarArgs)
  {
    handleMessage(paramInt, paramVarArgs);
  }
  
  public void setCanHide(boolean paramBoolean)
  {
    canHide = paramBoolean;
  }
  
  public void setDescription(String paramString)
  {
    description = paramString;
    recordSummary("task_desc", paramString);
  }
  
  public void setParentTask(a parama)
  {
    parent = parama;
  }
  
  public void setPriority(int paramInt)
  {
    priority = paramInt;
  }
  
  public void setTaskDecisionListener(com.estrongs.a.a.a parama)
  {
    e = parama;
  }
  
  public void setTaskResult(int paramInt, Object paramObject)
  {
    task_result.a = paramInt;
    task_result.b = paramObject;
  }
  
  public void setTaskStatus(int paramInt)
  {
    int i = task_status.intValue();
    synchronized (task_status)
    {
      if (paramInt == task_status.intValue()) {
        return;
      }
      task_status = Integer.valueOf(paramInt);
      if ((parent != null) && (!async) && ((task_status.intValue() == 3) || (task_status.intValue() == 2))) {
        parent.setTaskStatus(task_status.intValue());
      }
      if (!hasNotifyStop)
      {
        statusChangeNotify(i, task_status.intValue());
        return;
      }
    }
  }
  
  public JSONObject summary()
  {
    try
    {
      JSONObject localJSONObject = summary;
      return localJSONObject;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void suspend()
  {
    if (getTaskStatus() != 2) {
      return;
    }
    setTaskStatus(3);
    cond.block();
    cond.close();
    setTaskStatus(2);
  }
  
  public boolean task()
  {
    int i;
    if (inTestMode) {
      i = 1;
    }
    for (;;)
    {
      if (i < 20) {}
      try
      {
        Thread.sleep(1000L);
        Object localObject;
        if ((i == 3) || (i == 6) || (i == 9))
        {
          localObject = (h)getDecision(h.class, new Object[] { "/testfile" });
          if ((g == 2) && (g != 1)) {}
        }
        else if ((i == 12) || (i == 16))
        {
          localObject = (g)getDecision(g.class, new Object[] { "/testfile" });
          if (g != 2) {
            break label152;
          }
        }
        for (;;)
        {
          if (taskStopped())
          {
            return false;
            if (g != 3) {
              break;
            }
            setTaskResult(9, new q("/testfile", null));
            return false;
            label152:
            if (g == 3)
            {
              setTaskResult(9, new q("/testfile", null));
              return false;
            }
          }
        }
        i += 1;
        continue;
        return true;
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
    }
  }
  
  public boolean taskStopped()
  {
    int i = 12;
    int j = getTaskStatus();
    synchronized (request_task_status_change)
    {
      switch (request_task_status_change.intValue())
      {
      case 3: 
        if ((i == 0) || (task_status.intValue() != 3)) {
          break label209;
        }
        cond.block();
        cond.close();
        setTaskStatus(2);
      }
    }
    for (;;)
    {
      Object localObject3;
      synchronized (request_task_status_change)
      {
        if (request_task_status_change.intValue() == 5)
        {
          setTaskResult(1, null);
          return true;
          if (j != 2) {
            break label195;
          }
          setTaskStatus(3);
          i = 1;
          break;
          ??? = getTaskResult();
          if ((??? == null) || (a != 12)) {
            break label190;
          }
          break label200;
          setTaskResult(i, ???);
          return true;
          localObject2 = finally;
          throw ((Throwable)localObject2);
          localObject3 = b;
          continue;
        }
      }
      label190:
      i = 1;
      break label200;
      label195:
      i = 0;
      break;
      label200:
      if (localObject3 == null) {
        localObject3 = null;
      }
    }
    label209:
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */