package com.duapps.ad.stats;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import com.duapps.ad.base.l;
import com.duapps.ad.coin.e;

public final class DuAdCacheProvider
  extends ContentProvider
{
  private static Uri b;
  private static Uri c;
  private static Uri d;
  private static Uri e;
  private static Uri f;
  private static Uri g;
  private static Uri h;
  private static Uri i;
  private static final Object j = new Object();
  private static final Object l = new Object();
  private static final Object n = new Object();
  private static final Object p = new Object();
  private static UriMatcher r;
  private String a = DuAdCacheProvider.class.getSimpleName();
  private z k;
  private aa m;
  private t o;
  private e q;
  private Context s;
  
  private int a(Uri paramUri)
  {
    if ((paramUri == null) || (Uri.EMPTY == paramUri)) {
      return -1;
    }
    return r.match(paramUri);
  }
  
  private static UriMatcher a(String paramString)
  {
    b = Uri.parse("content://" + paramString);
    c = Uri.withAppendedPath(b, "parse");
    d = Uri.withAppendedPath(b, "click");
    e = Uri.withAppendedPath(b, "cache");
    f = Uri.withAppendedPath(b, "record");
    g = Uri.withAppendedPath(b, "coinRecord");
    h = Uri.withAppendedPath(b, "item");
    i = Uri.withAppendedPath(b, "preparse");
    UriMatcher localUriMatcher = new UriMatcher(-1);
    localUriMatcher.addURI(paramString, "parse", 1);
    localUriMatcher.addURI(paramString, "click", 2);
    localUriMatcher.addURI(paramString, "cache", 3);
    localUriMatcher.addURI(paramString, "record", 4);
    localUriMatcher.addURI(paramString, "coinRecord", 5);
    localUriMatcher.addURI(paramString, "item", 6);
    localUriMatcher.addURI(paramString, "preparse", 7);
    return localUriMatcher;
  }
  
  public static Uri a(Context paramContext, int paramInt)
  {
    Uri localUri = Uri.EMPTY;
    if (b == null)
    {
      paramContext = paramContext.getPackageName() + ".DuAdCacheProvider";
      b = Uri.parse("content://" + paramContext);
    }
    if (c == null) {
      c = Uri.withAppendedPath(b, "parse");
    }
    if (d == null) {
      d = Uri.withAppendedPath(b, "click");
    }
    if (e == null) {
      e = Uri.withAppendedPath(b, "cache");
    }
    if (f == null) {
      f = Uri.withAppendedPath(b, "record");
    }
    if (g == null) {
      g = Uri.withAppendedPath(b, "coinRecord");
    }
    if (h == null) {
      h = Uri.withAppendedPath(b, "item");
    }
    if (i == null) {
      i = Uri.withAppendedPath(b, "preparse");
    }
    switch (paramInt)
    {
    default: 
      return localUri;
    case 1: 
      return c;
    case 3: 
      return e;
    case 2: 
      return d;
    case 7: 
      return i;
    case 4: 
      return f;
    case 5: 
      return g;
    }
    return h;
  }
  
  private String a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 1: 
      return "td_parse";
    case 3: 
      return "cache";
    case 2: 
      return "tbvc";
    case 7: 
      return "appcache";
    case 4: 
      return "srecord";
    case 5: 
      return "record";
    }
    return "items";
  }
  
  private void a(Context paramContext)
  {
    r = a(paramContext.getPackageName() + ".DuAdCacheProvider");
  }
  
  private SQLiteDatabase b(Context paramContext, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 1: 
      if (m == null) {
        m = new aa(paramContext);
      }
      return m.getWritableDatabase();
    case 2: 
    case 3: 
    case 7: 
      if (k == null) {
        k = new z(paramContext);
      }
      return k.getWritableDatabase();
    case 4: 
      if (o == null) {
        o = new t(paramContext);
      }
      return o.getWritableDatabase();
    }
    if (q == null) {
      q = new e(s);
    }
    return q.getWritableDatabase();
  }
  
  private Object b(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 1: 
      return l;
    case 2: 
    case 3: 
    case 7: 
      return j;
    case 4: 
      return n;
    }
    return p;
  }
  
  public int delete(Uri arg1, String paramString, String[] paramArrayOfString)
  {
    String str2 = a;
    if ("del selcetion  = " + paramString + " , selectionArgs = " + paramString != null) {}
    int i1;
    for (String str1 = paramString.toString();; str1 = null)
    {
      l.c(str2, str1);
      i1 = a(???);
      if ((i1 > 0) && (i1 <= 7)) {
        break;
      }
      return -1;
    }
    synchronized (b(i1))
    {
      i1 = b(getContext(), i1).delete(a(i1), paramString, paramArrayOfString);
      return i1;
    }
  }
  
  public String getType(Uri paramUri)
  {
    switch (r.match(paramUri))
    {
    default: 
      return "vnd.android.cursor.dir/unkown";
    case 1: 
      return "vnd.android.cursor.dir/parse";
    case 2: 
      return "vnd.android.cursor.dir/click";
    case 3: 
      return "vnd.android.cursor.dir/cache";
    case 7: 
      return "vnd.android.cursor.dir/preparse";
    case 4: 
      return "vnd.android.cursor.dir/record";
    case 5: 
      return "vnd.android.cursor.dir/coinRecord";
    }
    return "vnd.android.cursor.dir/item";
  }
  
  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    int i1 = a(paramUri);
    if ((i1 <= 0) || (i1 > 7)) {
      return null;
    }
    synchronized (b(i1))
    {
      b(getContext(), i1).insert(a(i1), null, paramContentValues);
      return paramUri;
    }
  }
  
  public boolean onCreate()
  {
    s = getContext();
    a(s);
    return true;
  }
  
  public Cursor query(Uri arg1, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    int i1 = a(???);
    if ((i1 <= 0) || (i1 > 7)) {
      return null;
    }
    synchronized (b(i1))
    {
      paramArrayOfString1 = b(getContext(), i1).query(a(i1), paramArrayOfString1, paramString1, paramArrayOfString2, null, null, paramString2);
      return paramArrayOfString1;
    }
  }
  
  public int update(Uri arg1, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    int i1 = a(???);
    if ((i1 <= 0) || (i1 > 7)) {
      return -1;
    }
    synchronized (b(i1))
    {
      i1 = b(getContext(), i1).update(a(i1), paramContentValues, paramString, paramArrayOfString);
      return i1;
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.stats.DuAdCacheProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */