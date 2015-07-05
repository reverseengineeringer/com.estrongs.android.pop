package com.jcraft.jsch;

import java.util.Hashtable;
import java.util.Vector;

public class OpenSSHConfig
  implements ConfigRepository
{
  private static final Hashtable e = new Hashtable();
  private final Hashtable c;
  private final Vector d;
  
  static
  {
    e.put("kex", "KexAlgorithms");
    e.put("server_host_key", "HostKeyAlgorithms");
    e.put("cipher.c2s", "Ciphers");
    e.put("cipher.s2c", "Ciphers");
    e.put("mac.c2s", "Macs");
    e.put("mac.s2c", "Macs");
    e.put("compression.s2c", "Compression");
    e.put("compression.c2s", "Compression");
    e.put("compression_level", "CompressionLevel");
    e.put("MaxAuthTries", "NumberOfPasswordPrompts");
  }
  
  public ConfigRepository.Config a(String paramString)
  {
    return new OpenSSHConfig.MyConfig(this, paramString);
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.OpenSSHConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */