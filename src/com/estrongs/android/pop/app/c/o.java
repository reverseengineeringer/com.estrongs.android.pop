package com.estrongs.android.pop.app.c;

import com.estrongs.android.pop.a;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;

class o
{
  o(m paramm) {}
  
  private String[] a()
  {
    int i = 0;
    Object localObject = new File(a.q);
    if (!((File)localObject).exists()) {
      return new String[0];
    }
    localObject = ((File)localObject).listFiles();
    if (localObject.length == 0) {
      return new String[0];
    }
    String[] arrayOfString = new String[localObject.length];
    while (i < localObject.length)
    {
      arrayOfString[i] = localObject[i].getName();
      i += 1;
    }
    return arrayOfString;
  }
  
  private String[] a(String paramString)
  {
    Object localObject = new File(a.q + "/" + paramString);
    try
    {
      if (!((File)localObject).exists()) {
        break label151;
      }
      paramString = new ArrayList();
      localObject = new DataInputStream(new FileInputStream((File)localObject));
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader((InputStream)localObject));
      for (;;)
      {
        String str = localBufferedReader.readLine();
        if (str == null) {
          break;
        }
        paramString.add(str);
      }
      ((DataInputStream)localObject).close();
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
      return null;
    }
    paramString = paramString.toArray();
    localObject = new String[paramString.length];
    int i = 0;
    while (i < paramString.length)
    {
      localObject[i] = ((String)paramString[i]);
      i += 1;
    }
    return (String[])localObject;
    label151:
    return null;
  }
  
  private boolean b(String paramString)
  {
    paramString = new File(a.q + "/" + paramString);
    if (paramString.exists()) {
      paramString.delete();
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.c.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */