package de.innosystec.unrar;

import de.innosystec.unrar.rarfile.g;
import de.innosystec.unrar.rarfile.k;
import java.io.File;
import java.io.PrintStream;

public class e
{
  public static String a(String paramString, boolean paramBoolean)
  {
    int m;
    int j;
    if (!paramBoolean)
    {
      m = paramString.length();
      j = m - 1;
      while ((j >= 0) && (!a(paramString.charAt(j)))) {
        j -= 1;
      }
      k = j - 1;
      while ((k >= 0) && (a(paramString.charAt(k)))) {
        k -= 1;
      }
      if (k >= 0) {}
    }
    char[] arrayOfChar;
    int i;
    do
    {
      return null;
      k += 1;
      localStringBuilder = new StringBuilder(m);
      localStringBuilder.append(paramString, 0, k);
      arrayOfChar = new char[j - k + 1];
      paramString.getChars(k, j + 1, arrayOfChar, 0);
      k = arrayOfChar.length - 1;
      while (k >= 0)
      {
        i = (char)(arrayOfChar[k] + '\001');
        arrayOfChar[k] = i;
        if (i != 58) {
          break;
        }
        arrayOfChar[k] = '0';
        k -= 1;
      }
      if (k < 0) {
        localStringBuilder.append('1');
      }
      localStringBuilder.append(arrayOfChar);
      localStringBuilder.append(paramString, j + 1, m);
      return localStringBuilder.toString();
      j = paramString.length();
    } while ((j <= 4) || (paramString.charAt(j - 4) != '.'));
    StringBuilder localStringBuilder = new StringBuilder();
    int k = j - 3;
    localStringBuilder.append(paramString, 0, k);
    if ((!a(paramString.charAt(k + 1))) || (!a(paramString.charAt(k + 2)))) {
      localStringBuilder.append("r00");
    }
    for (;;)
    {
      return localStringBuilder.toString();
      arrayOfChar = new char[3];
      paramString.getChars(k, j, arrayOfChar, 0);
      j = arrayOfChar.length - 1;
      for (;;)
      {
        i = (char)(arrayOfChar[j] + '\001');
        arrayOfChar[j] = i;
        if (i != 58) {
          break;
        }
        arrayOfChar[j] = '0';
        j -= 1;
      }
      localStringBuilder.append(arrayOfChar);
    }
  }
  
  private static boolean a(char paramChar)
  {
    return (paramChar >= '0') && (paramChar <= '9');
  }
  
  public static boolean a(a parama, de.innosystec.unrar.unpack.a parama1)
  {
    Object localObject = parama1.c();
    if ((((g)localObject).r() >= 20) && (((g)localObject).m() != -1) && (parama1.a() != (((g)localObject).m() ^ 0xFFFFFFFF))) {
      System.err.println("Data Bad CRC");
    }
    boolean bool;
    if ((!parama.f().v()) || (parama.g()))
    {
      bool = true;
      localObject = new File(a(parama.a().getAbsolutePath(), bool));
      d locald = parama.e();
      if ((locald == null) || (locald.a((File)localObject))) {
        break label112;
      }
    }
    label112:
    do
    {
      do
      {
        return false;
        bool = false;
        break;
      } while (!((File)localObject).exists());
      parama.a((File)localObject);
      parama = parama.c();
    } while (parama == null);
    parama1.a(parama);
    return true;
  }
  
  public static String b(String paramString, boolean paramBoolean)
  {
    int k = 0;
    if (!paramBoolean)
    {
      int m = paramString.length();
      i = m - 1;
      while ((i >= 0) && (!a(paramString.charAt(i)))) {
        i -= 1;
      }
      int j = i - 1;
      while ((j >= 0) && (a(paramString.charAt(j)))) {
        j -= 1;
      }
      if (j < 0) {
        return null;
      }
      j += 1;
      localStringBuilder = new StringBuilder(m);
      localStringBuilder.append(paramString, 0, j);
      char[] arrayOfChar = new char[i - j + 1];
      paramString.getChars(j, i + 1, arrayOfChar, 0);
      int n = arrayOfChar.length;
      j = k;
      while (j < arrayOfChar.length)
      {
        arrayOfChar[j] = '0';
        j += 1;
      }
      if (n - 1 < 0) {
        localStringBuilder.append('1');
      }
      arrayOfChar[(arrayOfChar.length - 1)] = '1';
      localStringBuilder.append(arrayOfChar);
      localStringBuilder.append(paramString, i + 1, m);
      return localStringBuilder.toString();
    }
    int i = paramString.length();
    if ((i <= 4) || (paramString.charAt(i - 4) != '.')) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString, 0, i - 3);
    localStringBuilder.append("rar");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */