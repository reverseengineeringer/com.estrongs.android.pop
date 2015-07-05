package com.gmail.yuyang226.flickr.b;

import com.gmail.yuyang226.flickr.d.c;
import java.io.PrintStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class a
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private int f;
  
  public String a()
  {
    return e;
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  public void b(String paramString)
  {
    b = paramString;
  }
  
  public void c(String paramString)
  {
    d = paramString;
  }
  
  public void d(String paramString)
  {
    e = paramString;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (paramObject.getClass() != getClass())) {
      return false;
    }
    paramObject = (a)paramObject;
    Method[] arrayOfMethod = getClass().getMethods();
    int i = 0;
    for (;;)
    {
      if (i >= arrayOfMethod.length) {
        return true;
      }
      if ((c.a.matcher(arrayOfMethod[i].getName()).find()) && (!arrayOfMethod[i].getName().equals("getClass"))) {
        try
        {
          Object localObject1 = arrayOfMethod[i].invoke(this, null);
          Object localObject2 = arrayOfMethod[i].invoke(paramObject, null);
          String str = arrayOfMethod[i].getReturnType().toString();
          if (str.indexOf("class") == 0)
          {
            if ((localObject1 == null) || (localObject2 == null)) {
              break label295;
            }
            if (!localObject1.equals(localObject2)) {
              break;
            }
            break label295;
          }
          if (str.equals("int"))
          {
            if (!((Integer)localObject1).equals((Integer)localObject2)) {
              return false;
            }
          }
          else {
            System.out.println(arrayOfMethod[i].getName() + "|" + arrayOfMethod[i].getReturnType().toString());
          }
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          System.out.println("Size equals " + arrayOfMethod[i].getName() + " " + localIllegalAccessException);
        }
        catch (Exception localException)
        {
          System.out.println("Size equals " + arrayOfMethod[i].getName() + " " + localException);
        }
        catch (InvocationTargetException localInvocationTargetException) {}
      }
      label295:
      i += 1;
    }
  }
  
  public int hashCode()
  {
    int j = 1 + new Integer(f).hashCode();
    int i = j;
    if (e != null) {
      i = j + e.hashCode();
    }
    j = i;
    if (d != null) {
      j = i + d.hashCode();
    }
    i = j;
    if (b != null) {
      i = j + b.hashCode();
    }
    j = i;
    if (c != null) {
      j = i + c.hashCode();
    }
    i = j;
    if (a != null) {
      i = j + a.hashCode();
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     com.gmail.yuyang226.flickr.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */