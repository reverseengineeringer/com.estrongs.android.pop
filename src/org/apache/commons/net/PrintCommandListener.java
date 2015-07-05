package org.apache.commons.net;

import java.io.PrintStream;
import java.io.PrintWriter;

public class PrintCommandListener
  implements ProtocolCommandListener
{
  private final boolean __directionMarker;
  private final char __eolMarker;
  private final boolean __nologin;
  private final PrintWriter __writer;
  
  public PrintCommandListener(PrintStream paramPrintStream)
  {
    this(new PrintWriter(paramPrintStream));
  }
  
  public PrintCommandListener(PrintStream paramPrintStream, boolean paramBoolean)
  {
    this(new PrintWriter(paramPrintStream), paramBoolean);
  }
  
  public PrintCommandListener(PrintStream paramPrintStream, boolean paramBoolean, char paramChar)
  {
    this(new PrintWriter(paramPrintStream), paramBoolean, paramChar);
  }
  
  public PrintCommandListener(PrintStream paramPrintStream, boolean paramBoolean1, char paramChar, boolean paramBoolean2)
  {
    this(new PrintWriter(paramPrintStream), paramBoolean1, paramChar, paramBoolean2);
  }
  
  public PrintCommandListener(PrintWriter paramPrintWriter)
  {
    this(paramPrintWriter, false);
  }
  
  public PrintCommandListener(PrintWriter paramPrintWriter, boolean paramBoolean)
  {
    this(paramPrintWriter, paramBoolean, '\000');
  }
  
  public PrintCommandListener(PrintWriter paramPrintWriter, boolean paramBoolean, char paramChar)
  {
    this(paramPrintWriter, paramBoolean, paramChar, false);
  }
  
  public PrintCommandListener(PrintWriter paramPrintWriter, boolean paramBoolean1, char paramChar, boolean paramBoolean2)
  {
    __writer = paramPrintWriter;
    __nologin = paramBoolean1;
    __eolMarker = paramChar;
    __directionMarker = paramBoolean2;
  }
  
  private String getPrintableString(String paramString)
  {
    if (__eolMarker == 0) {}
    int i;
    do
    {
      return paramString;
      i = paramString.indexOf("\r\n");
    } while (i <= 0);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString.substring(0, i));
    localStringBuilder.append(__eolMarker);
    localStringBuilder.append(paramString.substring(i));
    return localStringBuilder.toString();
  }
  
  public void protocolCommandSent(ProtocolCommandEvent paramProtocolCommandEvent)
  {
    if (__directionMarker) {
      __writer.print("> ");
    }
    String str;
    if (__nologin)
    {
      str = paramProtocolCommandEvent.getCommand();
      if (("PASS".equalsIgnoreCase(str)) || ("USER".equalsIgnoreCase(str)))
      {
        __writer.print(str);
        __writer.println(" *******");
      }
    }
    for (;;)
    {
      __writer.flush();
      return;
      if ("LOGIN".equalsIgnoreCase(str))
      {
        paramProtocolCommandEvent = paramProtocolCommandEvent.getMessage();
        paramProtocolCommandEvent = paramProtocolCommandEvent.substring(0, paramProtocolCommandEvent.indexOf("LOGIN") + "LOGIN".length());
        __writer.print(paramProtocolCommandEvent);
        __writer.println(" *******");
      }
      else
      {
        __writer.print(getPrintableString(paramProtocolCommandEvent.getMessage()));
        continue;
        __writer.print(getPrintableString(paramProtocolCommandEvent.getMessage()));
      }
    }
  }
  
  public void protocolReplyReceived(ProtocolCommandEvent paramProtocolCommandEvent)
  {
    if (__directionMarker) {
      __writer.print("< ");
    }
    __writer.print(paramProtocolCommandEvent.getMessage());
    __writer.flush();
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.PrintCommandListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */