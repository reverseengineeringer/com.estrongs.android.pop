package android.support.multidex;

import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

final class b
{
  private static Object[] a(Object paramObject, ArrayList<File> paramArrayList, File paramFile)
  {
    return (Object[])a.a(paramObject, "makeDexElements", new Class[] { ArrayList.class, File.class }).invoke(paramObject, new Object[] { paramArrayList, paramFile });
  }
  
  private static void b(ClassLoader paramClassLoader, List<File> paramList, File paramFile)
  {
    paramClassLoader = a.a(paramClassLoader, "pathList").get(paramClassLoader);
    a.a(paramClassLoader, "dexElements", a(paramClassLoader, new ArrayList(paramList), paramFile));
  }
}

/* Location:
 * Qualified Name:     android.support.multidex.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */