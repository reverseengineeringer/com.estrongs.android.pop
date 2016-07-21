package com.dianxinos.library.dxbase;

class p
  implements Runnable
{
  private final long a = 1000L;
  private boolean b = false;
  private final Runnable c;
  private Exception d;
  
  public p(Runnable paramRunnable)
  {
    if (paramRunnable == null) {
      throw new NullPointerException("invalid argument: ori=null");
    }
    c = paramRunnable;
    b = e.c;
    d = new Exception("Stack trace of " + paramRunnable);
  }
  
  public void run()
  {
    if (b) {}
    long l2;
    for (long l1 = System.currentTimeMillis();; l1 = 0L) {
      try
      {
        c.run();
        if ((!b) || (!e.c)) {
          break label410;
        }
        l2 = System.currentTimeMillis();
        if (l2 - l1 <= 1000L) {
          break label410;
        }
        StackTraceElement[] arrayOfStackTraceElement = d.getStackTrace();
        if ((arrayOfStackTraceElement != null) && (arrayOfStackTraceElement.length >= 3)) {
          break label416;
        }
        return;
      }
      catch (Throwable localThrowable)
      {
        if (!e.c) {
          break;
        }
        j.b("++++++++++++++++++ Throwable catched during execution: " + c, localThrowable);
        if (!b) {
          break;
        }
        j.b("++++++++++++++++++ Job posted in: ", d);
        throw new RuntimeException(localThrowable);
      }
      finally
      {
        while ((b) && (e.c))
        {
          l2 = System.currentTimeMillis();
          if (l2 - l1 > 1000L)
          {
            localObject2 = d.getStackTrace();
            if ((localObject2 != null) && (localObject2.length >= 3))
            {
              localObject2 = localObject2[2];
              if (localObject2 != null)
              {
                localStringBuilder2 = new StringBuilder();
                localStringBuilder2.append(((StackTraceElement)localObject2).getClassName()).append('.').append(((StackTraceElement)localObject2).getMethodName()).append('[').append(((StackTraceElement)localObject2).getFileName()).append(':').append(((StackTraceElement)localObject2).getLineNumber()).append(']');
                j.a("Job created at: " + localStringBuilder2 + " takes too long to complete: " + (l2 - l1) + "ms.");
              }
            }
          }
        }
        d = null;
      }
    }
    Object localObject2;
    label410:
    label416:
    do
    {
      StringBuilder localStringBuilder2;
      StringBuilder localStringBuilder1 = new StringBuilder();
      localStringBuilder1.append(((StackTraceElement)localObject2).getClassName()).append('.').append(((StackTraceElement)localObject2).getMethodName()).append('[').append(((StackTraceElement)localObject2).getFileName()).append(':').append(((StackTraceElement)localObject2).getLineNumber()).append(']');
      j.a("Job created at: " + localStringBuilder1 + " takes too long to complete: " + (l2 - l1) + "ms.");
      d = null;
      return;
      localObject2 = localStringBuilder1[2];
    } while (localObject2 != null);
  }
  
  public String toString()
  {
    return "SER: {" + c.toString() + "}";
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.dxbase.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */