package org.simpleframework.xml.stream;

import java.io.BufferedWriter;
import java.io.Writer;

class Formatter
{
  private static final char[] AND;
  private static final char[] CLOSE = { 32, 45, 45, 62 };
  private static final char[] DOUBLE;
  private static final char[] GREATER;
  private static final char[] LESS;
  private static final char[] NAMESPACE = { 120, 109, 108, 110, 115 };
  private static final char[] OPEN;
  private static final char[] SINGLE;
  private OutputBuffer buffer;
  private Indenter indenter;
  private Formatter.Tag last;
  private String prolog;
  private Writer result;
  
  static
  {
    LESS = new char[] { 38, 108, 116, 59 };
    GREATER = new char[] { 38, 103, 116, 59 };
    DOUBLE = new char[] { 38, 113, 117, 111, 116, 59 };
    SINGLE = new char[] { 38, 97, 112, 111, 115, 59 };
    AND = new char[] { 38, 97, 109, 112, 59 };
    OPEN = new char[] { 60, 33, 45, 45, 32 };
  }
  
  public Formatter(Writer paramWriter, Format paramFormat)
  {
    result = new BufferedWriter(paramWriter, 1024);
    indenter = new Indenter(paramFormat);
    buffer = new OutputBuffer();
    prolog = paramFormat.getProlog();
  }
  
  private void append(char paramChar)
  {
    buffer.append(paramChar);
  }
  
  private void append(String paramString)
  {
    buffer.append(paramString);
  }
  
  private void append(char[] paramArrayOfChar)
  {
    buffer.append(paramArrayOfChar);
  }
  
  private void data(String paramString)
  {
    write("<![CDATA[");
    write(paramString);
    write("]]>");
  }
  
  private void escape(char paramChar)
  {
    char[] arrayOfChar = symbol(paramChar);
    if (arrayOfChar != null)
    {
      write(arrayOfChar);
      return;
    }
    write(paramChar);
  }
  
  private void escape(String paramString)
  {
    int j = paramString.length();
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        return;
      }
      escape(paramString.charAt(i));
      i += 1;
    }
  }
  
  private boolean isEmpty(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  private boolean isText(char paramChar)
  {
    switch (paramChar)
    {
    default: 
      if ((paramChar <= ' ') || (paramChar > '~')) {
        break label67;
      }
      if (paramChar == '÷') {
        break;
      }
    case '\t': 
    case '\n': 
    case '\r': 
    case ' ': 
      return true;
    }
    return false;
    label67:
    return false;
  }
  
  private char[] symbol(char paramChar)
  {
    switch (paramChar)
    {
    default: 
      return null;
    case '<': 
      return LESS;
    case '>': 
      return GREATER;
    case '"': 
      return DOUBLE;
    case '\'': 
      return SINGLE;
    }
    return AND;
  }
  
  private String unicode(char paramChar)
  {
    return Integer.toString(paramChar);
  }
  
  private void write(char paramChar)
  {
    buffer.write(result);
    buffer.clear();
    result.write(paramChar);
  }
  
  private void write(String paramString)
  {
    buffer.write(result);
    buffer.clear();
    result.write(paramString);
  }
  
  private void write(String paramString1, String paramString2)
  {
    buffer.write(result);
    buffer.clear();
    if (!isEmpty(paramString2))
    {
      result.write(paramString2);
      result.write(58);
    }
    result.write(paramString1);
  }
  
  private void write(char[] paramArrayOfChar)
  {
    buffer.write(result);
    buffer.clear();
    result.write(paramArrayOfChar);
  }
  
  public void flush()
  {
    buffer.write(result);
    buffer.clear();
    result.flush();
  }
  
  public void writeAttribute(String paramString1, String paramString2, String paramString3)
  {
    if (last != Formatter.Tag.START) {
      throw new NodeException("Start element required");
    }
    write(' ');
    write(paramString1, paramString3);
    write('=');
    write('"');
    escape(paramString2);
    write('"');
  }
  
  public void writeComment(String paramString)
  {
    String str = indenter.top();
    if (last == Formatter.Tag.START) {
      append('>');
    }
    if (str != null)
    {
      append(str);
      append(OPEN);
      append(paramString);
      append(CLOSE);
    }
    last = Formatter.Tag.COMMENT;
  }
  
  public void writeEnd(String paramString1, String paramString2)
  {
    String str = indenter.pop();
    if (last == Formatter.Tag.START)
    {
      write('/');
      write('>');
    }
    for (;;)
    {
      last = Formatter.Tag.END;
      return;
      if (last != Formatter.Tag.TEXT) {
        write(str);
      }
      if (last != Formatter.Tag.START)
      {
        write('<');
        write('/');
        write(paramString1, paramString2);
        write('>');
      }
    }
  }
  
  public void writeNamespace(String paramString1, String paramString2)
  {
    if (last != Formatter.Tag.START) {
      throw new NodeException("Start element required");
    }
    write(' ');
    write(NAMESPACE);
    if (!isEmpty(paramString2))
    {
      write(':');
      write(paramString2);
    }
    write('=');
    write('"');
    escape(paramString1);
    write('"');
  }
  
  public void writeProlog()
  {
    if (prolog != null)
    {
      write(prolog);
      write("\n");
    }
  }
  
  public void writeStart(String paramString1, String paramString2)
  {
    String str = indenter.push();
    if (last == Formatter.Tag.START) {
      append('>');
    }
    flush();
    append(str);
    append('<');
    if (!isEmpty(paramString2))
    {
      append(paramString2);
      append(':');
    }
    append(paramString1);
    last = Formatter.Tag.START;
  }
  
  public void writeText(String paramString)
  {
    writeText(paramString, Mode.ESCAPE);
  }
  
  public void writeText(String paramString, Mode paramMode)
  {
    if (last == Formatter.Tag.START) {
      write('>');
    }
    if (paramMode == Mode.DATA) {
      data(paramString);
    }
    for (;;)
    {
      last = Formatter.Tag.TEXT;
      return;
      escape(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.stream.Formatter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */