package com.dianxinos.library.notify.j;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;

public class c
{
  public static boolean a(File paramFile)
  {
    if (paramFile == null) {}
    int i;
    File localFile;
    do
    {
      do
      {
        return false;
        if (!paramFile.exists()) {
          return true;
        }
      } while (!paramFile.isDirectory());
      String[] arrayOfString = paramFile.list();
      if (arrayOfString == null) {
        break label81;
      }
      i = 0;
      if (i >= arrayOfString.length) {
        break label81;
      }
      localFile = new File(paramFile, arrayOfString[i]);
      if (!localFile.isDirectory()) {
        break;
      }
    } while (!a(localFile));
    while (localFile.delete())
    {
      i += 1;
      break;
    }
    return false;
    label81:
    return paramFile.delete();
  }
  
  public static boolean a(File paramFile1, File paramFile2)
  {
    if ((paramFile1.isDirectory()) || (paramFile2.isDirectory())) {
      return false;
    }
    paramFile1 = new FileInputStream(paramFile1);
    paramFile2 = new FileOutputStream(paramFile2);
    byte[] arrayOfByte = new byte['Ѐ'];
    for (int i = paramFile1.read(arrayOfByte); i >= 0; i = paramFile1.read(arrayOfByte)) {
      paramFile2.write(arrayOfByte, 0, i);
    }
    paramFile1.close();
    paramFile2.close();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.j.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */