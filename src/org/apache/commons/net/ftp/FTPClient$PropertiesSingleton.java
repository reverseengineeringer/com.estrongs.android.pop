package org.apache.commons.net.ftp;

import java.util.Properties;

class FTPClient$PropertiesSingleton
{
  static final Properties PROPERTIES;
  
  /* Error */
  static
  {
    // Byte code:
    //   0: ldc 12
    //   2: ldc 14
    //   4: invokevirtual 20	java/lang/Class:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   7: astore_1
    //   8: aconst_null
    //   9: astore_0
    //   10: aload_1
    //   11: ifnull +20 -> 31
    //   14: new 22	java/util/Properties
    //   17: dup
    //   18: invokespecial 25	java/util/Properties:<init>	()V
    //   21: astore_0
    //   22: aload_0
    //   23: aload_1
    //   24: invokevirtual 29	java/util/Properties:load	(Ljava/io/InputStream;)V
    //   27: aload_1
    //   28: invokevirtual 34	java/io/InputStream:close	()V
    //   31: aload_0
    //   32: putstatic 36	org/apache/commons/net/ftp/FTPClient$PropertiesSingleton:PROPERTIES	Ljava/util/Properties;
    //   35: return
    //   36: astore_2
    //   37: aload_1
    //   38: invokevirtual 34	java/io/InputStream:close	()V
    //   41: goto -10 -> 31
    //   44: astore_1
    //   45: goto -14 -> 31
    //   48: astore_0
    //   49: aload_1
    //   50: invokevirtual 34	java/io/InputStream:close	()V
    //   53: aload_0
    //   54: athrow
    //   55: astore_1
    //   56: goto -3 -> 53
    //   59: astore_1
    //   60: goto -29 -> 31
    // Local variable table:
    //   start	length	slot	name	signature
    //   9	23	0	localProperties	Properties
    //   48	6	0	localObject	Object
    //   7	31	1	localInputStream	java.io.InputStream
    //   44	6	1	localIOException1	java.io.IOException
    //   55	1	1	localIOException2	java.io.IOException
    //   59	1	1	localIOException3	java.io.IOException
    //   36	1	2	localIOException4	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   22	27	36	java/io/IOException
    //   37	41	44	java/io/IOException
    //   22	27	48	finally
    //   49	53	55	java/io/IOException
    //   27	31	59	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.net.ftp.FTPClient.PropertiesSingleton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */