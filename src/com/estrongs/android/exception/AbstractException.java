package com.estrongs.android.exception;

public abstract class AbstractException
  extends Exception
{
  private static final long serialVersionUID = 1L;
  private Throwable _exception;
  private String _message;
  
  public AbstractException() {}
  
  public AbstractException(String paramString)
  {
    super(paramString);
  }
  
  public AbstractException(String paramString, Throwable paramThrowable)
  {
    _message = paramString;
    _exception = paramThrowable;
  }
  
  public AbstractException(Throwable paramThrowable)
  {
    _exception = paramThrowable;
  }
  
  public Throwable getCause()
  {
    if (_exception != null) {
      return _exception;
    }
    return super.getCause();
  }
  
  public Throwable getException()
  {
    return _exception;
  }
  
  public String getMessage()
  {
    if (_message != null) {
      return _message;
    }
    if (_exception != null) {
      return _exception.getMessage();
    }
    return super.getMessage();
  }
  
  /* Error */
  public void printStackTrace(java.io.PrintStream paramPrintStream)
  {
    // Byte code:
    //   0: aload_1
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 25	com/estrongs/android/exception/AbstractException:_exception	Ljava/lang/Throwable;
    //   6: ifnull +50 -> 56
    //   9: aload_1
    //   10: new 42	java/lang/StringBuilder
    //   13: dup
    //   14: invokespecial 43	java/lang/StringBuilder:<init>	()V
    //   17: aload_0
    //   18: invokevirtual 49	java/lang/Object:getClass	()Ljava/lang/Class;
    //   21: invokevirtual 54	java/lang/Class:toString	()Ljava/lang/String;
    //   24: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: ldc 60
    //   29: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: aload_0
    //   33: getfield 23	com/estrongs/android/exception/AbstractException:_message	Ljava/lang/String;
    //   36: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   42: invokevirtual 66	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   45: aload_0
    //   46: getfield 25	com/estrongs/android/exception/AbstractException:_exception	Ljava/lang/Throwable;
    //   49: aload_1
    //   50: invokevirtual 68	java/lang/Throwable:printStackTrace	(Ljava/io/PrintStream;)V
    //   53: aload_1
    //   54: monitorexit
    //   55: return
    //   56: aload_0
    //   57: aload_1
    //   58: invokespecial 69	java/lang/Exception:printStackTrace	(Ljava/io/PrintStream;)V
    //   61: goto -8 -> 53
    //   64: astore_2
    //   65: aload_1
    //   66: monitorexit
    //   67: aload_2
    //   68: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	69	0	this	AbstractException
    //   0	69	1	paramPrintStream	java.io.PrintStream
    //   64	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	53	64	finally
    //   53	55	64	finally
    //   56	61	64	finally
    //   65	67	64	finally
  }
  
  /* Error */
  public void printStackTrace(java.io.PrintWriter paramPrintWriter)
  {
    // Byte code:
    //   0: aload_1
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 25	com/estrongs/android/exception/AbstractException:_exception	Ljava/lang/Throwable;
    //   6: ifnull +50 -> 56
    //   9: aload_1
    //   10: new 42	java/lang/StringBuilder
    //   13: dup
    //   14: invokespecial 43	java/lang/StringBuilder:<init>	()V
    //   17: aload_0
    //   18: invokevirtual 49	java/lang/Object:getClass	()Ljava/lang/Class;
    //   21: invokevirtual 54	java/lang/Class:toString	()Ljava/lang/String;
    //   24: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: ldc 60
    //   29: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: aload_0
    //   33: getfield 23	com/estrongs/android/exception/AbstractException:_message	Ljava/lang/String;
    //   36: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   42: invokevirtual 73	java/io/PrintWriter:println	(Ljava/lang/String;)V
    //   45: aload_0
    //   46: getfield 25	com/estrongs/android/exception/AbstractException:_exception	Ljava/lang/Throwable;
    //   49: aload_1
    //   50: invokevirtual 75	java/lang/Throwable:printStackTrace	(Ljava/io/PrintWriter;)V
    //   53: aload_1
    //   54: monitorexit
    //   55: return
    //   56: aload_0
    //   57: aload_1
    //   58: invokespecial 76	java/lang/Exception:printStackTrace	(Ljava/io/PrintWriter;)V
    //   61: goto -8 -> 53
    //   64: astore_2
    //   65: aload_1
    //   66: monitorexit
    //   67: aload_2
    //   68: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	69	0	this	AbstractException
    //   0	69	1	paramPrintWriter	java.io.PrintWriter
    //   64	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	53	64	finally
    //   53	55	64	finally
    //   56	61	64	finally
    //   65	67	64	finally
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.exception.AbstractException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */