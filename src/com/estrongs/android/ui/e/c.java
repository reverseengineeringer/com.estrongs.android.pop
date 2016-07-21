package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.util.l;
import com.estrongs.android.view.a.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class c
{
  protected Map<String, a> a;
  protected String[] b;
  
  public void a(boolean paramBoolean, String... paramVarArgs)
  {
    int i = 0;
    while (i < paramVarArgs.length)
    {
      Object localObject = paramVarArgs[i];
      localObject = (MenuItem)a.get(localObject);
      if (localObject != null) {
        ((MenuItem)localObject).setEnabled(paramBoolean);
      }
      i += 1;
    }
  }
  
  public void a(String... paramVarArgs)
  {
    a(false, paramVarArgs);
  }
  
  public String[] a()
  {
    return b;
  }
  
  public String[] a(String[] paramArrayOfString, String paramString)
  {
    int j = 0;
    int i = 0;
    if (i < paramArrayOfString.length) {
      if (!paramArrayOfString[i].equals(paramString)) {}
    }
    for (;;)
    {
      if (i == -1)
      {
        return paramArrayOfString;
        i += 1;
        break;
      }
      paramString = new String[paramArrayOfString.length - 1];
      int k = 0;
      if (j < paramArrayOfString.length)
      {
        if (j == i) {}
        for (;;)
        {
          j += 1;
          break;
          paramString[k] = paramArrayOfString[j];
          k += 1;
        }
      }
      return paramString;
      i = -1;
    }
  }
  
  protected String[] a(String[] paramArrayOfString, String paramString, int paramInt)
  {
    int j = 0;
    if (paramInt > paramArrayOfString.length) {
      throw new IllegalStateException("Error occured when making a new MenuSet. Illegal index!");
    }
    int k = paramArrayOfString.length + 1;
    String[] arrayOfString = new String[k];
    int i = paramInt;
    if (paramInt < 0) {
      i = k - 1;
    }
    paramInt = 0;
    if (paramInt < k)
    {
      if (paramInt == i) {
        arrayOfString[paramInt] = paramString;
      }
      for (;;)
      {
        paramInt += 1;
        break;
        arrayOfString[paramInt] = paramArrayOfString[j];
        j += 1;
      }
    }
    return arrayOfString;
  }
  
  protected String[] a(String[] paramArrayOfString, String paramString1, String paramString2)
  {
    String[] arrayOfString = new String[paramArrayOfString.length];
    int i = 0;
    if (i < paramArrayOfString.length)
    {
      if (paramArrayOfString[i].equals(paramString1)) {
        arrayOfString[i] = paramString2;
      }
      for (;;)
      {
        i += 1;
        break;
        arrayOfString[i] = paramArrayOfString[i];
      }
    }
    return arrayOfString;
  }
  
  public List<a> b(String[] paramArrayOfString)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramArrayOfString == null) || (paramArrayOfString == null)) {
      return localArrayList;
    }
    int j = paramArrayOfString.length;
    int i = 0;
    if (i < j)
    {
      String str = paramArrayOfString[i];
      a locala = (a)a.get(str);
      if (locala != null) {
        localArrayList.add(locala);
      }
      for (;;)
      {
        i += 1;
        break;
        l.e("Menu", "Cannot find menu for key : " + str);
      }
    }
    return localArrayList;
  }
  
  public String[] b()
  {
    if ((b == null) || (a == null))
    {
      localObject1 = b;
      return (String[])localObject1;
    }
    Object localObject1 = new ArrayList();
    String[] arrayOfString = b;
    int j = arrayOfString.length;
    int i = 0;
    while (i < j)
    {
      localObject2 = arrayOfString[i];
      if (!((a)a.get(localObject2)).isEnabled()) {
        ((ArrayList)localObject1).add(localObject2);
      }
      i += 1;
    }
    arrayOfString = b;
    Object localObject2 = ((ArrayList)localObject1).iterator();
    for (;;)
    {
      localObject1 = arrayOfString;
      if (!((Iterator)localObject2).hasNext()) {
        break;
      }
      arrayOfString = a(arrayOfString, (String)((Iterator)localObject2).next());
    }
  }
  
  public Map<String, a> c()
  {
    return a;
  }
  
  public void d() {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */