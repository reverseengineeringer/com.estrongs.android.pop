package com.estrongs.fs.impl.local;

public class l
{
  private static String[] a = new String[35];
  
  static
  {
    a[1] = "Operation not permitted";
    a[2] = "No such file or directory";
    a[3] = "No such process";
    a[4] = "Interrupted system call";
    a[5] = "I/O error";
    a[6] = "No such device or address";
    a[7] = "Argument list too long";
    a[8] = "Exec format error";
    a[9] = "Bad file number";
    a[10] = "No child processes";
    a[11] = "Try again";
    a[12] = "Out of memory";
    a[13] = "Permission denied";
    a[14] = "Bad address";
    a[15] = "Block device required";
    a[16] = "Device or resource busy";
    a[17] = "File exists";
    a[18] = "Cross-device link";
    a[19] = "No such device";
    a[20] = "Not a directory";
    a[21] = "Is a directory";
    a[22] = "Invalid argument";
    a[23] = "File table overflow";
    a[24] = "Too many open files";
    a[25] = "Not a typewriter";
    a[26] = "Text file busy";
    a[27] = "File too large";
    a[28] = "No space left on device";
    a[29] = "Illegal seek";
    a[30] = "Read-only file system";
    a[31] = "Too many links";
    a[32] = "Broken pipe";
    a[33] = "Math argument out of domain of func";
    a[34] = "Math result not representable";
  }
  
  public static String a(int paramInt)
  {
    Object localObject1 = null;
    try
    {
      localObject2 = a[paramInt];
      localObject1 = localObject2;
    }
    catch (Exception localException)
    {
      Object localObject2;
      for (;;) {}
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = "error code:" + paramInt;
    }
    return (String)localObject2;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.local.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */