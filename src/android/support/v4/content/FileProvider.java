package android.support.v4.content;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParserException;

public class FileProvider
  extends ContentProvider
{
  private static final String[] a = { "_display_name", "_size" };
  private static final File b = new File("/");
  private static HashMap<String, a> c = new HashMap();
  private a d;
  
  private static int a(String paramString)
  {
    if ("r".equals(paramString)) {
      return 268435456;
    }
    if (("w".equals(paramString)) || ("wt".equals(paramString))) {
      return 738197504;
    }
    if ("wa".equals(paramString)) {
      return 704643072;
    }
    if ("rw".equals(paramString)) {
      return 939524096;
    }
    if ("rwt".equals(paramString)) {
      return 1006632960;
    }
    throw new IllegalArgumentException("Invalid mode: " + paramString);
  }
  
  private static a a(Context paramContext, String paramString)
  {
    a locala1;
    synchronized (c)
    {
      a locala2 = (a)c.get(paramString);
      locala1 = locala2;
      if (locala2 != null) {}
    }
    try
    {
      locala1 = b(paramContext, paramString);
      c.put(paramString, locala1);
      return locala1;
    }
    catch (IOException paramContext)
    {
      throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", paramContext);
      paramContext = finally;
      throw paramContext;
    }
    catch (XmlPullParserException paramContext)
    {
      throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", paramContext);
    }
  }
  
  private static File a(File paramFile, String... paramVarArgs)
  {
    int j = paramVarArgs.length;
    int i = 0;
    if (i < j)
    {
      String str = paramVarArgs[i];
      if (str == null) {
        break label40;
      }
      paramFile = new File(paramFile, str);
    }
    label40:
    for (;;)
    {
      i += 1;
      break;
      return paramFile;
    }
  }
  
  private static Object[] a(Object[] paramArrayOfObject, int paramInt)
  {
    Object[] arrayOfObject = new Object[paramInt];
    System.arraycopy(paramArrayOfObject, 0, arrayOfObject, 0, paramInt);
    return arrayOfObject;
  }
  
  private static String[] a(String[] paramArrayOfString, int paramInt)
  {
    String[] arrayOfString = new String[paramInt];
    System.arraycopy(paramArrayOfString, 0, arrayOfString, 0, paramInt);
    return arrayOfString;
  }
  
  private static a b(Context paramContext, String paramString)
  {
    b localb = new b(paramString);
    XmlResourceParser localXmlResourceParser = paramContext.getPackageManager().resolveContentProvider(paramString, 128).loadXmlMetaData(paramContext.getPackageManager(), "android.support.FILE_PROVIDER_PATHS");
    if (localXmlResourceParser == null) {
      throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
    }
    label226:
    for (;;)
    {
      int i = localXmlResourceParser.next();
      String str1;
      String str2;
      if (i != 1)
      {
        if (i != 2) {
          continue;
        }
        paramString = localXmlResourceParser.getName();
        str1 = localXmlResourceParser.getAttributeValue(null, "name");
        str2 = localXmlResourceParser.getAttributeValue(null, "path");
        if ("root-path".equals(paramString)) {
          paramString = a(b, new String[] { str2 });
        }
      }
      for (;;)
      {
        if (paramString == null) {
          break label226;
        }
        localb.a(str1, paramString);
        break;
        if ("files-path".equals(paramString))
        {
          paramString = a(paramContext.getFilesDir(), new String[] { str2 });
        }
        else if ("cache-path".equals(paramString))
        {
          paramString = a(paramContext.getCacheDir(), new String[] { str2 });
        }
        else if ("external-path".equals(paramString))
        {
          paramString = a(Environment.getExternalStorageDirectory(), new String[] { str2 });
          continue;
          return localb;
        }
        else
        {
          paramString = null;
        }
      }
    }
  }
  
  public void attachInfo(Context paramContext, ProviderInfo paramProviderInfo)
  {
    super.attachInfo(paramContext, paramProviderInfo);
    if (exported) {
      throw new SecurityException("Provider must not be exported");
    }
    if (!grantUriPermissions) {
      throw new SecurityException("Provider must grant uri permissions");
    }
    d = a(paramContext, authority);
  }
  
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    if (d.a(paramUri).delete()) {
      return 1;
    }
    return 0;
  }
  
  public String getType(Uri paramUri)
  {
    paramUri = d.a(paramUri);
    int i = paramUri.getName().lastIndexOf('.');
    if (i >= 0)
    {
      paramUri = paramUri.getName().substring(i + 1);
      paramUri = MimeTypeMap.getSingleton().getMimeTypeFromExtension(paramUri);
      if (paramUri != null) {
        return paramUri;
      }
    }
    return "application/octet-stream";
  }
  
  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    throw new UnsupportedOperationException("No external inserts");
  }
  
  public boolean onCreate()
  {
    return true;
  }
  
  public ParcelFileDescriptor openFile(Uri paramUri, String paramString)
  {
    return ParcelFileDescriptor.open(d.a(paramUri), a(paramString));
  }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    paramString1 = d.a(paramUri);
    paramUri = paramArrayOfString1;
    if (paramArrayOfString1 == null) {
      paramUri = a;
    }
    paramArrayOfString2 = new String[paramUri.length];
    paramArrayOfString1 = new Object[paramUri.length];
    int m = paramUri.length;
    int j = 0;
    int i = 0;
    int k;
    if (j < m)
    {
      paramString2 = paramUri[j];
      if ("_display_name".equals(paramString2))
      {
        paramArrayOfString2[i] = "_display_name";
        k = i + 1;
        paramArrayOfString1[i] = paramString1.getName();
        i = k;
      }
    }
    for (;;)
    {
      j += 1;
      break;
      if ("_size".equals(paramString2))
      {
        paramArrayOfString2[i] = "_size";
        k = i + 1;
        paramArrayOfString1[i] = Long.valueOf(paramString1.length());
        i = k;
        continue;
        paramUri = a(paramArrayOfString2, i);
        paramArrayOfString1 = a(paramArrayOfString1, i);
        paramUri = new MatrixCursor(paramUri, 1);
        paramUri.addRow(paramArrayOfString1);
        return paramUri;
      }
    }
  }
  
  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    throw new UnsupportedOperationException("No external updates");
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.FileProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */