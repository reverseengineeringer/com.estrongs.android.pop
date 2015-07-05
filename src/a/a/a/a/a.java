package a.a.a.a;

import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;

abstract class a
  extends Charset
{
  protected char[] a;
  
  a(String paramString, String[] paramArrayOfString)
  {
    super(paramString, paramArrayOfString);
  }
  
  char[] a()
  {
    return a;
  }
  
  public boolean contains(Charset paramCharset)
  {
    return paramCharset.getClass() == paramCharset.getClass();
  }
  
  public CharsetDecoder newDecoder()
  {
    return new b(this);
  }
  
  public CharsetEncoder newEncoder()
  {
    return new c(this);
  }
}

/* Location:
 * Qualified Name:     a.a.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */