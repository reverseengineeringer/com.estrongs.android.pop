package org.apache.commons.net.io;

import java.io.BufferedReader;
import java.io.Reader;

public final class CRLFLineReader
  extends BufferedReader
{
  private static final char CR = '\r';
  private static final char LF = '\n';
  
  public CRLFLineReader(Reader paramReader)
  {
    super(paramReader);
  }
  
  public String readLine()
  {
    Object localObject2 = new StringBuilder();
    Object localObject1 = lock;
    int i = 0;
    int j;
    try
    {
      j = read();
      if (j == -1)
      {
        localObject2 = ((StringBuilder)localObject2).toString();
        localObject1 = localObject2;
        if (((String)localObject2).length() == 0) {
          localObject1 = null;
        }
        return (String)localObject1;
      }
      if ((i != 0) && (j == 10))
      {
        localObject2 = ((StringBuilder)localObject2).substring(0, ((StringBuilder)localObject2).length() - 1);
        return (String)localObject2;
      }
    }
    finally {}
    if (j == 13) {}
    for (i = 1;; i = 0)
    {
      char c = (char)j;
      ((StringBuilder)localObject3).append(c);
      break;
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.io.CRLFLineReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */