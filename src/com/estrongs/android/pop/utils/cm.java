package com.estrongs.android.pop.utils;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.media.ExifInterface;
import android.net.Uri;
import android.provider.MediaStore;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

public class cm
{
  public static int a(File paramFile, List<String> paramList1, List<String> paramList2, List<String> paramList3, List<String> paramList4)
  {
    int k = 1;
    int i;
    int j;
    if (paramFile.isDirectory())
    {
      paramFile = paramFile.listFiles();
      i = k;
      if (paramFile != null)
      {
        int m = paramFile.length;
        j = 0;
        for (;;)
        {
          i = k;
          if (j >= m) {
            break;
          }
          a(paramFile[j], paramList1, paramList2, paramList3, paramList4);
          j += 1;
        }
      }
    }
    else
    {
      j = 0x1 | com.estrongs.fs.a.a.g(paramFile.getAbsolutePath());
      if (!bk.f()) {
        break label99;
      }
      paramList4.add(paramFile.getAbsolutePath());
      i = j;
    }
    label99:
    do
    {
      return i;
      if (com.estrongs.fs.impl.media.b.a(paramFile.getAbsolutePath()))
      {
        paramList1.add(paramFile.getAbsolutePath());
        return j;
      }
      if (com.estrongs.fs.impl.media.b.b(paramFile.getAbsolutePath()))
      {
        paramList2.add(paramFile.getAbsolutePath());
        return j;
      }
      i = j;
    } while (!com.estrongs.fs.impl.media.b.c(paramFile.getAbsolutePath()));
    paramList3.add(paramFile.getAbsolutePath());
    return j;
  }
  
  public static void a(String paramString)
  {
    if (bk.k()) {}
    for (;;)
    {
      return;
      if (paramString != null) {}
      try
      {
        com.estrongs.android.pop.b.b();
        paramString = ap.bU(paramString);
        if (paramString == null) {
          continue;
        }
        FexApplication.a().sendBroadcast(new Intent("android.intent.action.MEDIA_MOUNTED", Uri.parse("file://" + paramString)));
        return;
      }
      catch (Exception paramString) {}
      paramString = ap.a().iterator();
      while (paramString.hasNext())
      {
        String str = (String)paramString.next();
        FexApplication.a().sendBroadcast(new Intent("android.intent.action.MEDIA_MOUNTED", Uri.fromFile(new File(str))));
      }
    }
  }
  
  public static boolean a()
  {
    Cursor localCursor = FexApplication.a().getContentResolver().query(MediaStore.getMediaScannerUri(), new String[] { "volume" }, null, null, null);
    if (localCursor != null)
    {
      if (localCursor.getCount() == 1) {
        localCursor.moveToFirst();
      }
      for (boolean bool = "external".equals(localCursor.getString(0));; bool = false)
      {
        localCursor.close();
        return bool;
      }
    }
    return false;
  }
  
  public static boolean a(TypedMap paramTypedMap)
  {
    com.estrongs.a.a locala = com.estrongs.a.a.getCurrentTask();
    if (locala == null) {}
    do
    {
      return true;
      if ((paramTypedMap != null) && (paramTypedMap.getBoolean("updateMediaStore")))
      {
        IntentFilter localIntentFilter = new IntentFilter("android.intent.action.MEDIA_SCANNER_FINISHED");
        localIntentFilter.addDataScheme("file");
        BroadcastReceiver[] arrayOfBroadcastReceiver = new BroadcastReceiver[1];
        arrayOfBroadcastReceiver[0] = new cn(locala);
        FexApplication.a().registerReceiver(arrayOfBroadcastReceiver[0], localIntentFilter);
        if (!a()) {
          a(null);
        }
        if (!locala.taskStopped()) {
          locala.suspend();
        }
        FexApplication.a().unregisterReceiver(arrayOfBroadcastReceiver[0]);
        if (locala.taskStopped())
        {
          paramTypedMap.remove("updateMediaStore");
          return false;
        }
        paramTypedMap.remove("updateMediaStore");
        paramTypedMap.put("resultUpdatedMediaStore", Boolean.valueOf(true));
        return true;
      }
    } while (!paramTypedMap.containsKey("resultUpdatedMediaStore"));
    paramTypedMap.remove("resultUpdatedMediaStore");
    return true;
  }
  
  public static void b()
  {
    a(com.estrongs.android.pop.b.b());
  }
  
  public static void b(String paramString)
  {
    if (paramString != null) {
      FexApplication.a().sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.fromFile(new File(paramString))));
    }
  }
  
  public static int c(String paramString)
  {
    try
    {
      int i = bk.a(new ExifInterface(paramString).getAttribute("Orientation"));
      switch (i)
      {
      case 0: 
      case 1: 
      case 2: 
      case 4: 
      case 5: 
      case 7: 
      default: 
        return 0;
      case 3: 
        return 180;
      case 6: 
        return 90;
      }
      return 270;
    }
    catch (IOException paramString)
    {
      paramString.printStackTrace();
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.cm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */