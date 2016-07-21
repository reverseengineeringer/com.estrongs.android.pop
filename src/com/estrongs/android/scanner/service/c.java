package com.estrongs.android.scanner.service;

import android.os.FileObserver;
import com.estrongs.android.scanner.ae;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.l;

class c
  extends FileObserver
{
  private final String b;
  
  public c(a parama, String paramString)
  {
    super(paramString, 4044);
    b = paramString;
  }
  
  private void a(int paramInt, String paramString1, String paramString2)
  {
    switch (paramInt)
    {
    default: 
      l.e("FileObserver", "DEFAULT(" + paramInt + " : " + paramString1);
      return;
    case 1: 
      l.e("FileObserver", "ACCESS: " + paramString1);
      return;
    case 4: 
      l.e("FileObserver", "ATTRIB: " + paramString1);
      return;
    case 16: 
      l.e("FileObserver", "CLOSE_NOWRITE: " + paramString1);
      return;
    case 8: 
      l.e("FileObserver", "CLOSE_WRITE: " + paramString1);
      return;
    case 128: 
      l.e("FileObserver", "MOVED_TO: " + paramString1);
      return;
    case 256: 
      l.e("FileObserver", "CREATE: " + paramString1);
      return;
    case 64: 
      l.e("FileObserver", "MOVED_FROM: " + paramString1);
      return;
    case 512: 
      l.e("FileObserver", "DELETE: " + paramString1);
      return;
    case 1024: 
      l.e("FileObserver", "DELETE_SELF: " + paramString1);
      return;
    case 2: 
      l.e("FileObserver", "MODIFY: " + paramString1);
      return;
    case 2048: 
      l.e("FileObserver", "MOVE_SELF: " + paramString1);
      return;
    }
    l.e("FileObserver", "OPEN: " + paramString1);
  }
  
  private boolean a(String paramString)
  {
    paramString = ap.bR(paramString);
    if (paramString == null) {}
    do
    {
      return true;
      paramString = paramString.toLowerCase();
      if (paramString.equals(".db")) {
        return false;
      }
      if (paramString.equals(".db-journal")) {
        return false;
      }
      if (paramString.equals(".confd")) {
        return false;
      }
    } while (!paramString.equals(".confd-journal"));
    return false;
  }
  
  public void onEvent(int paramInt, String paramString)
  {
    int i = paramInt & 0xFCC;
    if (i == 0) {}
    String str;
    do
    {
      return;
      paramInt = 0;
      str = b;
      if (paramString == null) {
        break;
      }
      str = b + paramString;
    } while (!a(paramString));
    for (;;)
    {
      a(i, str, paramString);
      if (a.a(a).c(paramString)) {
        break;
      }
      paramString = ap.bR(paramString);
      if (paramString != null)
      {
        paramString = paramString.toLowerCase();
        if (a.a(a).b(paramString)) {
          break;
        }
      }
      a.b(a).a(i, str, paramInt);
      return;
      paramInt = 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.service.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */