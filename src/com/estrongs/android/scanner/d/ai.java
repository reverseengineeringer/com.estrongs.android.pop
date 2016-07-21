package com.estrongs.android.scanner.d;

import android.content.ContentValues;
import com.estrongs.android.util.ap;

class ai
  implements Runnable
{
  ai(ah paramah, String paramString, int paramInt) {}
  
  public void run()
  {
    long l = System.currentTimeMillis();
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("path", ap.bV(a));
    localContentValues.put("timestamp", Long.valueOf(l));
    localContentValues.put("category", Integer.valueOf(b));
    ah.a(c).a("latestOpen", localContentValues);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.d.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */