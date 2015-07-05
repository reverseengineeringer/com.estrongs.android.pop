package jcifs.dcerpc;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import jcifs.dcerpc.msrpc.lsarpc;
import jcifs.dcerpc.msrpc.netdfs;
import jcifs.dcerpc.msrpc.samr;
import jcifs.dcerpc.msrpc.srvsvc;

public class DcerpcBinding
{
  private static HashMap INTERFACES = new HashMap();
  String endpoint = null;
  int major;
  int minor;
  HashMap options = null;
  String proto;
  String server;
  UUID uuid = null;
  
  static
  {
    INTERFACES.put("srvsvc", srvsvc.getSyntax());
    INTERFACES.put("lsarpc", lsarpc.getSyntax());
    INTERFACES.put("samr", samr.getSyntax());
    INTERFACES.put("netdfs", netdfs.getSyntax());
  }
  
  DcerpcBinding(String paramString1, String paramString2)
  {
    proto = paramString1;
    server = paramString2;
  }
  
  public static void addInterface(String paramString1, String paramString2)
  {
    INTERFACES.put(paramString1, paramString2);
  }
  
  Object getOption(String paramString)
  {
    if (paramString.equals("endpoint")) {
      return endpoint;
    }
    if (options != null) {
      return options.get(paramString);
    }
    return null;
  }
  
  void setOption(String paramString, Object paramObject)
  {
    if (paramString.equals("endpoint"))
    {
      endpoint = paramObject.toString().toLowerCase();
      if (endpoint.startsWith("\\pipe\\"))
      {
        paramString = (String)INTERFACES.get(endpoint.substring(6));
        if (paramString != null)
        {
          int i = paramString.indexOf(':');
          int j = paramString.indexOf('.', i + 1);
          uuid = new UUID(paramString.substring(0, i));
          major = Integer.parseInt(paramString.substring(i + 1, j));
          minor = Integer.parseInt(paramString.substring(j + 1));
          return;
        }
      }
      throw new DcerpcException("Bad endpoint: " + endpoint);
    }
    if (options == null) {
      options = new HashMap();
    }
    options.put(paramString, paramObject);
  }
  
  public String toString()
  {
    String str = proto + ":" + server + "[" + endpoint;
    Object localObject1 = str;
    if (options != null)
    {
      Iterator localIterator = options.keySet().iterator();
      for (;;)
      {
        localObject1 = str;
        if (!localIterator.hasNext()) {
          break;
        }
        localObject1 = localIterator.next();
        Object localObject2 = options.get(localObject1);
        str = str + "," + localObject1 + "=" + localObject2;
      }
    }
    return (String)localObject1 + "]";
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.DcerpcBinding
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */