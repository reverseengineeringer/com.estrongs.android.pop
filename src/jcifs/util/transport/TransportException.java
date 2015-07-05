package jcifs.util.transport;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

public class TransportException
  extends IOException
{
  private Throwable rootCause;
  
  public TransportException() {}
  
  public TransportException(String paramString)
  {
    super(paramString);
  }
  
  public TransportException(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    rootCause = paramThrowable;
  }
  
  public TransportException(Throwable paramThrowable)
  {
    rootCause = paramThrowable;
  }
  
  public Throwable getRootCause()
  {
    return rootCause;
  }
  
  public String toString()
  {
    if (rootCause != null)
    {
      StringWriter localStringWriter = new StringWriter();
      PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
      rootCause.printStackTrace(localPrintWriter);
      return super.toString() + "\n" + localStringWriter;
    }
    return super.toString();
  }
}

/* Location:
 * Qualified Name:     jcifs.util.transport.TransportException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */