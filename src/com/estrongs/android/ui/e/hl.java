package com.estrongs.android.ui.e;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.media.RingtoneManager;
import android.net.Uri;
import android.provider.MediaStore.Audio.Media;
import android.util.Log;
import android.view.ViewGroup;
import com.estrongs.a.p;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.pop.app.a.ak;
import com.estrongs.android.pop.app.a.ao;
import com.estrongs.android.pop.b;
import com.estrongs.android.ui.pcs.aj;
import com.estrongs.android.util.am;
import com.estrongs.fs.b.r;
import com.estrongs.fs.d;
import com.estrongs.fs.impl.local.f;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class hl
  extends c
{
  protected Map<String, com.estrongs.android.view.a.a> j;
  private PopAudioPlayer k;
  private int l = -1;
  private String[] m;
  private String[] n;
  private String[] o;
  private String[] p;
  private boolean q = false;
  
  public hl(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, paramBoolean);
    k();
  }
  
  private Uri a(String paramString1, String paramString2, int paramInt, long paramLong)
  {
    boolean bool2 = false;
    int i = paramString1.lastIndexOf(".");
    if (i == -1)
    {
      String str = am.bE(paramString2);
      paramString2 = new ContentValues();
      paramString2.put("_data", str);
      paramString2.put("title", paramString1);
      paramString2.put("_size", Long.valueOf(paramLong));
      paramString2.put("mime_type", "audio/*");
      if (paramInt != 1) {
        break label166;
      }
      bool1 = true;
      label73:
      paramString2.put("is_ringtone", Boolean.valueOf(bool1));
      if (paramInt != 2) {
        break label172;
      }
    }
    label166:
    label172:
    for (boolean bool1 = true;; bool1 = false)
    {
      paramString2.put("is_notification", Boolean.valueOf(bool1));
      bool1 = bool2;
      if (paramInt == 4) {
        bool1 = true;
      }
      paramString2.put("is_alarm", Boolean.valueOf(bool1));
      paramString2.put("is_music", Boolean.valueOf(true));
      paramString1 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
      try
      {
        paramString1 = k.getContentResolver().insert(paramString1, paramString2);
        return paramString1;
      }
      catch (Exception paramString1)
      {
        paramString1.printStackTrace();
      }
      paramString1 = paramString1.substring(0, i);
      break;
      bool1 = false;
      break label73;
    }
    return null;
  }
  
  private void b(String paramString, int paramInt)
  {
    new hz(this, paramString, paramInt).start();
  }
  
  private String c(String paramString, int paramInt)
  {
    Object localObject1 = null;
    Object localObject2 = am.bE(paramString);
    if (paramInt == 1) {
      paramString = "is_ringtone";
    }
    for (;;)
    {
      String str = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI.toString();
      try
      {
        localObject2 = k.getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[] { "_id", paramString }, "_data=?", new String[] { localObject2 }, null);
        if (localObject2 != null) {}
        try
        {
          paramInt = ((Cursor)localObject2).getCount();
          if (paramInt == 0)
          {
            if (localObject2 != null) {
              ((Cursor)localObject2).close();
            }
            paramString = null;
          }
          for (;;)
          {
            return paramString;
            if (paramInt == 2)
            {
              paramString = "is_notification";
              break;
            }
            paramString = "is_alarm";
            break;
            ((Cursor)localObject2).moveToFirst();
            paramInt = ((Cursor)localObject2).getInt(0);
            int i = ((Cursor)localObject2).getInt(1);
            Uri.parse(str + "/" + paramInt);
            if (i == 0)
            {
              localObject1 = new ContentValues();
              ((ContentValues)localObject1).put(paramString, Boolean.valueOf(true));
            }
            try
            {
              k.getContentResolver().update(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, (ContentValues)localObject1, "_id=" + paramInt, null);
              localObject1 = str + "/" + paramInt;
              paramString = (String)localObject1;
              if (localObject2 != null)
              {
                ((Cursor)localObject2).close();
                return (String)localObject1;
              }
            }
            catch (Exception paramString)
            {
              for (;;)
              {
                paramString.printStackTrace();
              }
            }
          }
          if (localObject1 == null) {
            break label297;
          }
        }
        finally
        {
          localObject1 = localObject2;
        }
      }
      finally {}
    }
    ((Cursor)localObject1).close();
    label297:
    throw paramString;
  }
  
  private void l()
  {
    m = new String[] { "play", "add_to", "ringtone", "share", "property", "delete", "backup_pcs" };
    n = new String[] { "play", "add_to" };
    o = new String[] { "play", "moveout", "ringtone", "share", "property", "delete", "backup_pcs" };
    p = new String[] { "play", "moveout" };
    if (!aj.a(b))
    {
      m = a(m, "backup_pcs");
      o = a(o, "backup_pcs");
    }
  }
  
  public boolean a(String paramString, int paramInt)
  {
    String str;
    Object localObject;
    label138:
    File localFile;
    if (am.bb(paramString))
    {
      if (paramInt == 1) {
        str = b.b() + "/media/ringtones";
      }
      for (;;)
      {
        localObject = new File(str);
        if ((((File)localObject).exists()) || (((File)localObject).mkdirs())) {
          break label138;
        }
        Log.e("ES", "can't create ringtone folder");
        return false;
        if (paramInt == 2)
        {
          str = b.b() + "/media/notifications";
        }
        else
        {
          if (paramInt != 4) {
            break;
          }
          str = b.b() + "/media/alarms";
        }
      }
      return false;
      localObject = am.d(paramString);
      str = str + "/" + (String)localObject;
      localFile = new File(str);
      if (localFile.exists()) {
        break label360;
      }
      paramString = new r(d.a(k), d.a(k).j(paramString), new f(new File(str)));
      paramString.execute(false);
      if (getTaskResulta != 0) {
        return false;
      }
    }
    label360:
    for (int i = 0;; i = 1)
    {
      paramString = null;
      if (i != 0) {
        paramString = c(str, paramInt);
      }
      if (paramString == null) {
        paramString = a((String)localObject, str, paramInt, localFile.length());
      }
      while (paramString == null)
      {
        return false;
        paramString = Uri.parse(paramString);
        continue;
        str = c(paramString, paramInt);
        localObject = new File(paramString);
        if (str == null) {
          paramString = a(am.d(paramString), paramString, paramInt, ((File)localObject).length());
        } else {
          paramString = Uri.parse(str);
        }
      }
      RingtoneManager.setActualDefaultRingtoneUri(k, paramInt, paramString);
      return true;
    }
  }
  
  public void d(int paramInt)
  {
    l = paramInt;
    if (k.q() == ao.a().e()) {
      paramInt = 1;
    }
    Object localObject1;
    Object localObject2;
    label138:
    String str;
    switch (l)
    {
    default: 
    case 1: 
    case 2: 
      do
      {
        return;
        paramInt = 0;
        break;
        if (paramInt != 0)
        {
          localObject1 = m;
          a((String[])localObject1);
          if (paramInt == 0) {
            break label138;
          }
        }
        for (localObject1 = m;; localObject1 = o)
        {
          localObject2 = localObject1;
          if (localObject1.length > 5) {
            localObject2 = new String[] { localObject1[0], localObject1[1], localObject1[2], localObject1[3], "extra" };
          }
          b((String[])localObject2);
          return;
          localObject1 = o;
          break;
        }
        localObject1 = k.v();
      } while (((List)localObject1).size() <= 0);
      str = get0b;
      if (!am.ba(str)) {
        str = am.bq(str);
      }
      break;
    }
    while (str != null)
    {
      if (paramInt != 0)
      {
        localObject2 = m;
        label207:
        localObject1 = localObject2;
        if (am.aB(str))
        {
          localObject1 = localObject2;
          if (aj.a(b)) {
            localObject1 = a(m, "backup_pcs");
          }
        }
        if ((!str.startsWith("http://")) || (str.startsWith("http://127.0.0.1:"))) {
          break label336;
        }
      }
      label336:
      for (paramInt = 0;; paramInt = 1)
      {
        localObject2 = localObject1;
        if (paramInt == 0) {
          localObject2 = a((String[])localObject1, "delete");
        }
        a((String[])localObject2);
        if (am.ba(str)) {
          break;
        }
        b(new String[] { "ringtone" });
        return;
        localObject2 = o;
        break label207;
        if (paramInt != 0) {}
        for (localObject1 = n;; localObject1 = p)
        {
          a((String[])localObject1);
          return;
        }
      }
    }
  }
  
  protected void h()
  {
    if ((b instanceof PopAudioPlayer))
    {
      k = ((PopAudioPlayer)b);
      j = new HashMap();
      com.estrongs.android.view.a.a locala2 = new com.estrongs.android.view.a.a(2130838180, b.getString(2131427356)).a(new hm(this));
      com.estrongs.android.view.a.a locala3 = new com.estrongs.android.view.a.a(2130838165, b.getString(2131428324)).a(new hn(this));
      com.estrongs.android.view.a.a locala4 = new com.estrongs.android.view.a.a(2130838172, b.getString(2131427347)).a(new hr(this));
      com.estrongs.android.view.a.a locala5 = new com.estrongs.android.view.a.a(2130838209, b.getString(2131428308)).a(new ht(this));
      com.estrongs.android.view.a.a locala6 = new com.estrongs.android.view.a.a(2130838232, b.getString(2131427939)).a(new hu(this));
      com.estrongs.android.view.a.a locala7 = new com.estrongs.android.view.a.a(2130838188, b.getString(2131427388)).a(new hw(this));
      com.estrongs.android.view.a.a locala8 = new com.estrongs.android.view.a.a(2130838182, b.getString(2131428025)).a(new hx(this));
      com.estrongs.android.view.a.a locala1 = null;
      if (aj.a(b)) {
        locala1 = new com.estrongs.android.view.a.a(2130838152, b.getString(2131428596)).a(new hy(this));
      }
      j.put("play", locala2);
      j.put("add_to", locala3);
      j.put("moveout", locala5);
      j.put("ringtone", locala6);
      j.put("share", locala7);
      j.put("property", locala8);
      j.put("delete", locala4);
      if (aj.a(b)) {
        j.put("backup_pcs", locala1);
      }
      return;
    }
    throw new IllegalArgumentException("Need PopAudioPlayer as the first argument");
  }
  
  protected Map<String, com.estrongs.android.view.a.a> i()
  {
    return j;
  }
  
  protected void k()
  {
    c.setBackgroundResource(2130838154);
    l();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */