package com.estrongs.android.k;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;

class b
  implements c
{
  b(a parama, d paramd) {}
  
  public boolean a()
  {
    boolean bool = true;
    ContentValues localContentValues = a.a();
    if (a.a(b).replace("lock", null, localContentValues) < 0L) {
      bool = false;
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.k.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */