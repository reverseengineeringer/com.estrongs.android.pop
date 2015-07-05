package com.gmail.yuyang226.flickr.a;

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
  private b d;
  private String e;
  
  public String a()
  {
    return a;
  }
  
  public void a(b paramb)
  {
    d = paramb;
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    a(new b(Integer.parseInt(paramString1), Integer.parseInt(paramString2), Integer.parseInt(paramString3), Integer.parseInt(paramString4)));
  }
  
  public b b()
  {
    return d;
  }
  
  public void b(String paramString)
  {
    b = paramString;
  }
  
  public String c()
  {
    return e;
  }
  
  public void c(String paramString)
  {
    c = paramString;
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
              break label323;
            }
            if (!localObject1.equals(localObject2)) {
              break;
            }
            break label323;
          }
          if (str.equals("int"))
          {
            if (!((Integer)localObject1).equals((Integer)localObject2)) {
              return false;
            }
          }
          else if (str.equals("boolean"))
          {
            if (!((Boolean)localObject1).equals((Boolean)localObject2)) {
              return false;
            }
          }
          else {
            System.out.println(arrayOfMethod[i].getName() + "|" + arrayOfMethod[i].getReturnType().toString());
          }
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          System.out.println("equals " + arrayOfMethod[i].getName() + " " + localIllegalAccessException);
        }
        catch (Exception localException)
        {
          System.out.println("equals " + arrayOfMethod[i].getName() + " " + localException);
        }
        catch (InvocationTargetException localInvocationTargetException) {}
      }
      label323:
      i += 1;
    }
  }
  
  public int hashCode()
  {
    int j = 1;
    if (a != null) {
      j = 1 + a.hashCode();
    }
    int i = j;
    if (b != null) {
      i = j + b.hashCode();
    }
    j = i;
    if (c != null) {
      j = i + c.hashCode();
    }
    i = j;
    if (e != null) {
      i = j + e.hashCode();
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     com.gmail.yuyang226.flickr.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */