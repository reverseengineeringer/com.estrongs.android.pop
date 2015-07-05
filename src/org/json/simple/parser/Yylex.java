package org.json.simple.parser;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

class Yylex
{
  public static final int STRING_BEGIN = 2;
  public static final int YYEOF = -1;
  public static final int YYINITIAL = 0;
  private static final int[] ZZ_ACTION;
  private static final String ZZ_ACTION_PACKED_0 = "\002\000\002\001\001\002\001\003\001\004\003\001\001\005\001\006\001\007\001\b\001\t\001\n\001\013\001\f\001\r\005\000\001\f\001\016\001\017\001\020\001\021\001\022\001\023\001\024\001\000\001\025\001\000\001\025\004\000\001\026\001\027\002\000\001\030";
  private static final int[] ZZ_ATTRIBUTE = zzUnpackAttribute();
  private static final String ZZ_ATTRIBUTE_PACKED_0 = "\002\000\001\t\003\001\001\t\003\001\006\t\002\001\001\t\005\000\b\t\001\000\001\001\001\000\001\001\004\000\002\t\002\000\001\t";
  private static final int ZZ_BUFFERSIZE = 16384;
  private static final char[] ZZ_CMAP;
  private static final String ZZ_CMAP_PACKED = "\t\000\001\007\001\007\002\000\001\007\022\000\001\007\001\000\001\t\b\000\001\006\001\031\001\002\001\004\001\n\n\003\001\032\006\000\004\001\001\005\001\001\024\000\001\027\001\b\001\030\003\000\001\022\001\013\002\001\001\021\001\f\005\000\001\023\001\000\001\r\003\000\001\016\001\024\001\017\001\020\005\000\001\025\001\000\001\026ﾂ\000";
  private static final String[] ZZ_ERROR_MSG;
  private static final int[] ZZ_LEXSTATE = { 0, 0, 1, 1 };
  private static final int ZZ_NO_MATCH = 1;
  private static final int ZZ_PUSHBACK_2BIG = 2;
  private static final int[] ZZ_ROWMAP;
  private static final String ZZ_ROWMAP_PACKED_0 = "\000\000\000\033\0006\000Q\000l\000\0006\000¢\000½\000Ø\0006\0006\0006\0006\0006\0006\000ó\000Ď\0006\000ĩ\000ń\000ş\000ź\000ƕ\0006\0006\0006\0006\0006\0006\0006\0006\000ư\000ǋ\000Ǧ\000Ǧ\000ȁ\000Ȝ\000ȷ\000ɒ\0006\0006\000ɭ\000ʈ\0006";
  private static final int[] ZZ_TRANS;
  private static final int ZZ_UNKNOWN_ERROR = 0;
  private StringBuffer sb = new StringBuffer();
  private int yychar;
  private int yycolumn;
  private int yyline;
  private boolean zzAtBOL = true;
  private boolean zzAtEOF;
  private char[] zzBuffer = new char['䀀'];
  private int zzCurrentPos;
  private int zzEndRead;
  private int zzLexicalState = 0;
  private int zzMarkedPos;
  private Reader zzReader;
  private int zzStartRead;
  private int zzState;
  
  static
  {
    ZZ_CMAP = zzUnpackCMap("\t\000\001\007\001\007\002\000\001\007\022\000\001\007\001\000\001\t\b\000\001\006\001\031\001\002\001\004\001\n\n\003\001\032\006\000\004\001\001\005\001\001\024\000\001\027\001\b\001\030\003\000\001\022\001\013\002\001\001\021\001\f\005\000\001\023\001\000\001\r\003\000\001\016\001\024\001\017\001\020\005\000\001\025\001\000\001\026ﾂ\000");
    ZZ_ACTION = zzUnpackAction();
    ZZ_ROWMAP = zzUnpackRowMap();
    ZZ_TRANS = new int[] { 2, 2, 3, 4, 2, 2, 2, 5, 2, 6, 2, 2, 7, 8, 2, 9, 2, 2, 2, 2, 2, 10, 11, 12, 13, 14, 15, 16, 16, 16, 16, 16, 16, 16, 16, 17, 18, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 4, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 4, 19, 20, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 20, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 5, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 21, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 22, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 23, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 16, 16, 16, 16, 16, 16, 16, 16, -1, -1, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, -1, -1, -1, -1, -1, -1, -1, -1, 24, 25, 26, 27, 28, 29, 30, 31, 32, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 33, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 34, 35, -1, -1, 34, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 37, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 38, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 39, -1, 39, -1, 39, -1, -1, -1, -1, -1, 39, 39, -1, -1, -1, -1, 39, 39, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 33, -1, 20, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 20, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 35, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 38, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 40, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 41, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 42, -1, 42, -1, 42, -1, -1, -1, -1, -1, 42, 42, -1, -1, -1, -1, 42, 42, -1, -1, -1, -1, -1, -1, -1, -1, -1, 43, -1, 43, -1, 43, -1, -1, -1, -1, -1, 43, 43, -1, -1, -1, -1, 43, 43, -1, -1, -1, -1, -1, -1, -1, -1, -1, 44, -1, 44, -1, 44, -1, -1, -1, -1, -1, 44, 44, -1, -1, -1, -1, 44, 44, -1, -1, -1, -1, -1, -1, -1, -1 };
    ZZ_ERROR_MSG = new String[] { "Unkown internal scanner error", "Error: could not match input", "Error: pushback value was too large" };
  }
  
  Yylex(InputStream paramInputStream)
  {
    this(new InputStreamReader(paramInputStream));
  }
  
  Yylex(Reader paramReader)
  {
    zzReader = paramReader;
  }
  
  private boolean zzRefill()
  {
    if (zzStartRead > 0)
    {
      System.arraycopy(zzBuffer, zzStartRead, zzBuffer, 0, zzEndRead - zzStartRead);
      zzEndRead -= zzStartRead;
      zzCurrentPos -= zzStartRead;
      zzMarkedPos -= zzStartRead;
      zzStartRead = 0;
    }
    char[] arrayOfChar;
    if (zzCurrentPos >= zzBuffer.length)
    {
      arrayOfChar = new char[zzCurrentPos * 2];
      System.arraycopy(zzBuffer, 0, arrayOfChar, 0, zzBuffer.length);
      zzBuffer = arrayOfChar;
    }
    int i = zzReader.read(zzBuffer, zzEndRead, zzBuffer.length - zzEndRead);
    if (i > 0)
    {
      zzEndRead += i;
      return false;
    }
    if (i == 0)
    {
      i = zzReader.read();
      if (i == -1) {
        return true;
      }
      arrayOfChar = zzBuffer;
      int j = zzEndRead;
      zzEndRead = (j + 1);
      arrayOfChar[j] = ((char)i);
      return false;
    }
    return true;
  }
  
  private void zzScanError(int paramInt)
  {
    try
    {
      String str1 = ZZ_ERROR_MSG[paramInt];
      throw new Error(str1);
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
      for (;;)
      {
        String str2 = ZZ_ERROR_MSG[0];
      }
    }
  }
  
  private static int zzUnpackAction(String paramString, int paramInt, int[] paramArrayOfInt)
  {
    int i = 0;
    int k = paramString.length();
    int m;
    int j;
    int n;
    if (i < k)
    {
      m = i + 1;
      j = paramString.charAt(i);
      n = paramString.charAt(m);
      i = paramInt;
      paramInt = j;
    }
    for (;;)
    {
      j = i + 1;
      paramArrayOfInt[i] = n;
      paramInt -= 1;
      if (paramInt <= 0)
      {
        paramInt = j;
        i = m + 1;
        break;
        return paramInt;
      }
      i = j;
    }
  }
  
  private static int[] zzUnpackAction()
  {
    int[] arrayOfInt = new int[45];
    zzUnpackAction("\002\000\002\001\001\002\001\003\001\004\003\001\001\005\001\006\001\007\001\b\001\t\001\n\001\013\001\f\001\r\005\000\001\f\001\016\001\017\001\020\001\021\001\022\001\023\001\024\001\000\001\025\001\000\001\025\004\000\001\026\001\027\002\000\001\030", 0, arrayOfInt);
    return arrayOfInt;
  }
  
  private static int zzUnpackAttribute(String paramString, int paramInt, int[] paramArrayOfInt)
  {
    int i = 0;
    int k = paramString.length();
    int m;
    int j;
    int n;
    if (i < k)
    {
      m = i + 1;
      j = paramString.charAt(i);
      n = paramString.charAt(m);
      i = paramInt;
      paramInt = j;
    }
    for (;;)
    {
      j = i + 1;
      paramArrayOfInt[i] = n;
      paramInt -= 1;
      if (paramInt <= 0)
      {
        paramInt = j;
        i = m + 1;
        break;
        return paramInt;
      }
      i = j;
    }
  }
  
  private static int[] zzUnpackAttribute()
  {
    int[] arrayOfInt = new int[45];
    zzUnpackAttribute("\002\000\001\t\003\001\001\t\003\001\006\t\002\001\001\t\005\000\b\t\001\000\001\001\001\000\001\001\004\000\002\t\002\000\001\t", 0, arrayOfInt);
    return arrayOfInt;
  }
  
  private static char[] zzUnpackCMap(String paramString)
  {
    int j = 0;
    char[] arrayOfChar = new char[65536];
    int k = 0;
    int n;
    int m;
    int i;
    if (k < 90)
    {
      n = k + 1;
      m = paramString.charAt(k);
      i = paramString.charAt(n);
      k = j;
      j = m;
    }
    for (;;)
    {
      m = k + 1;
      arrayOfChar[k] = i;
      j -= 1;
      if (j <= 0)
      {
        j = m;
        k = n + 1;
        break;
        return arrayOfChar;
      }
      k = m;
    }
  }
  
  private static int zzUnpackRowMap(String paramString, int paramInt, int[] paramArrayOfInt)
  {
    int i = 0;
    int j = paramString.length();
    while (i < j)
    {
      int k = i + 1;
      i = paramString.charAt(i);
      paramArrayOfInt[paramInt] = (paramString.charAt(k) | i << 16);
      paramInt += 1;
      i = k + 1;
    }
    return paramInt;
  }
  
  private static int[] zzUnpackRowMap()
  {
    int[] arrayOfInt = new int[45];
    zzUnpackRowMap("\000\000\000\033\0006\000Q\000l\000\0006\000¢\000½\000Ø\0006\0006\0006\0006\0006\0006\000ó\000Ď\0006\000ĩ\000ń\000ş\000ź\000ƕ\0006\0006\0006\0006\0006\0006\0006\0006\000ư\000ǋ\000Ǧ\000Ǧ\000ȁ\000Ȝ\000ȷ\000ɒ\0006\0006\000ɭ\000ʈ\0006", 0, arrayOfInt);
    return arrayOfInt;
  }
  
  int getPosition()
  {
    return yychar;
  }
  
  public final void yybegin(int paramInt)
  {
    zzLexicalState = paramInt;
  }
  
  public final char yycharat(int paramInt)
  {
    return zzBuffer[(zzStartRead + paramInt)];
  }
  
  public final void yyclose()
  {
    zzAtEOF = true;
    zzEndRead = zzStartRead;
    if (zzReader != null) {
      zzReader.close();
    }
  }
  
  public final int yylength()
  {
    return zzMarkedPos - zzStartRead;
  }
  
  public Yytoken yylex()
  {
    int m = zzEndRead;
    Object localObject2 = zzBuffer;
    char[] arrayOfChar = ZZ_CMAP;
    int[] arrayOfInt1 = ZZ_TRANS;
    int[] arrayOfInt2 = ZZ_ROWMAP;
    int[] arrayOfInt3 = ZZ_ATTRIBUTE;
    int k = zzMarkedPos;
    yychar += k - zzStartRead;
    int j = -1;
    zzStartRead = k;
    zzCurrentPos = k;
    zzState = ZZ_LEXSTATE[zzLexicalState];
    int i = k;
    Object localObject1 = localObject2;
    label82:
    int i1;
    int n;
    if (i < m)
    {
      i1 = i + 1;
      n = localObject1[i];
      i = i1;
      label102:
      i1 = arrayOfInt1[(arrayOfInt2[zzState] + arrayOfChar[n])];
      if (i1 != -1) {
        break label467;
      }
      i = m;
    }
    for (;;)
    {
      zzMarkedPos = k;
      if (j >= 0) {
        break label518;
      }
      label138:
      localObject2 = localObject1;
      m = i;
      switch (j)
      {
      case 3: 
      case 25: 
      case 26: 
      case 27: 
      case 28: 
      case 29: 
      case 30: 
      case 31: 
      case 32: 
      case 33: 
      case 34: 
      case 35: 
      case 36: 
      case 37: 
      case 38: 
      case 39: 
      case 40: 
      case 41: 
      case 42: 
      case 43: 
      case 44: 
      case 45: 
      case 46: 
      case 47: 
      case 48: 
      default: 
        if ((n != -1) || (zzStartRead != zzCurrentPos)) {
          break label956;
        }
        zzAtEOF = true;
        return null;
        if (zzAtEOF)
        {
          n = -1;
          i = m;
        }
        else
        {
          zzCurrentPos = i;
          zzMarkedPos = k;
          boolean bool = zzRefill();
          m = zzCurrentPos;
          k = zzMarkedPos;
          localObject1 = zzBuffer;
          i = zzEndRead;
          if (bool)
          {
            n = -1;
          }
          else
          {
            n = m + 1;
            i1 = localObject1[m];
            m = i;
            i = n;
            n = i1;
            break label102;
            label467:
            zzState = i1;
            i1 = arrayOfInt3[zzState];
            if ((i1 & 0x1) != 1) {
              break label971;
            }
            j = zzState;
            if ((i1 & 0x8) != 8) {
              break label513;
            }
            k = i;
            i = m;
          }
        }
        break;
      }
    }
    label513:
    k = i;
    label518:
    label956:
    label971:
    for (;;)
    {
      break label82;
      j = ZZ_ACTION[j];
      break label138;
      sb.append(yytext());
      localObject2 = localObject1;
      m = i;
      break;
      sb.delete(0, sb.length());
      yybegin(2);
      localObject2 = localObject1;
      m = i;
      break;
      sb.append('\b');
      localObject2 = localObject1;
      m = i;
      break;
      return new Yytoken(2, null);
      return new Yytoken(0, Boolean.valueOf(yytext()));
      return new Yytoken(0, null);
      yybegin(0);
      return new Yytoken(0, sb.toString());
      sb.append('\\');
      localObject2 = localObject1;
      m = i;
      break;
      return new Yytoken(0, Double.valueOf(yytext()));
      throw new ParseException(yychar, 0, new Character(yycharat(0)));
      return new Yytoken(4, null);
      sb.append('\r');
      localObject2 = localObject1;
      m = i;
      break;
      sb.append('/');
      localObject2 = localObject1;
      m = i;
      break;
      return new Yytoken(6, null);
      sb.append('"');
      localObject2 = localObject1;
      m = i;
      break;
      return new Yytoken(1, null);
      sb.append('\f');
      localObject2 = localObject1;
      m = i;
      break;
      try
      {
        j = Integer.parseInt(yytext().substring(2), 16);
        sb.append((char)j);
        localObject2 = localObject1;
        m = i;
      }
      catch (Exception localException)
      {
        throw new ParseException(yychar, 2, localException);
      }
      sb.append('\t');
      localObject2 = localException;
      m = i;
      break;
      return new Yytoken(3, null);
      return new Yytoken(0, Long.valueOf(yytext()));
      sb.append('\n');
      localObject2 = localException;
      m = i;
      break;
      return new Yytoken(5, null);
      zzScanError(1);
      localObject2 = localException;
      m = i;
      break;
    }
  }
  
  public void yypushback(int paramInt)
  {
    if (paramInt > yylength()) {
      zzScanError(2);
    }
    zzMarkedPos -= paramInt;
  }
  
  public final void yyreset(Reader paramReader)
  {
    zzReader = paramReader;
    zzAtBOL = true;
    zzAtEOF = false;
    zzStartRead = 0;
    zzEndRead = 0;
    zzMarkedPos = 0;
    zzCurrentPos = 0;
    yycolumn = 0;
    yychar = 0;
    yyline = 0;
    zzLexicalState = 0;
  }
  
  public final int yystate()
  {
    return zzLexicalState;
  }
  
  public final String yytext()
  {
    return new String(zzBuffer, zzStartRead, zzMarkedPos - zzStartRead);
  }
}

/* Location:
 * Qualified Name:     org.json.simple.parser.Yylex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */