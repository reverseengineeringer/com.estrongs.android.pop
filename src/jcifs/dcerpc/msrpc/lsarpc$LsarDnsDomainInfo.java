package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrException;
import jcifs.dcerpc.ndr.NdrObject;
import jcifs.dcerpc.rpc.sid_t;
import jcifs.dcerpc.rpc.unicode_string;
import jcifs.dcerpc.rpc.uuid_t;

public class lsarpc$LsarDnsDomainInfo
  extends NdrObject
{
  public rpc.unicode_string dns_domain;
  public rpc.unicode_string dns_forest;
  public rpc.uuid_t domain_guid;
  public rpc.unicode_string name;
  public rpc.sid_t sid;
  
  public void decode(NdrBuffer paramNdrBuffer)
  {
    paramNdrBuffer.align(4);
    paramNdrBuffer.align(4);
    if (name == null) {
      name = new rpc.unicode_string();
    }
    name.length = ((short)paramNdrBuffer.dec_ndr_short());
    name.maximum_length = ((short)paramNdrBuffer.dec_ndr_short());
    int i = paramNdrBuffer.dec_ndr_long();
    paramNdrBuffer.align(4);
    if (dns_domain == null) {
      dns_domain = new rpc.unicode_string();
    }
    dns_domain.length = ((short)paramNdrBuffer.dec_ndr_short());
    dns_domain.maximum_length = ((short)paramNdrBuffer.dec_ndr_short());
    int n = paramNdrBuffer.dec_ndr_long();
    paramNdrBuffer.align(4);
    if (dns_forest == null) {
      dns_forest = new rpc.unicode_string();
    }
    dns_forest.length = ((short)paramNdrBuffer.dec_ndr_short());
    dns_forest.maximum_length = ((short)paramNdrBuffer.dec_ndr_short());
    int m = paramNdrBuffer.dec_ndr_long();
    paramNdrBuffer.align(4);
    if (domain_guid == null) {
      domain_guid = new rpc.uuid_t();
    }
    domain_guid.time_low = paramNdrBuffer.dec_ndr_long();
    domain_guid.time_mid = ((short)paramNdrBuffer.dec_ndr_short());
    domain_guid.time_hi_and_version = ((short)paramNdrBuffer.dec_ndr_short());
    domain_guid.clock_seq_hi_and_reserved = ((byte)paramNdrBuffer.dec_ndr_small());
    domain_guid.clock_seq_low = ((byte)paramNdrBuffer.dec_ndr_small());
    int k = index;
    paramNdrBuffer.advance(6);
    int j = paramNdrBuffer.dec_ndr_long();
    int i1;
    if (i != 0)
    {
      paramNdrBuffer = deferred;
      i = paramNdrBuffer.dec_ndr_long();
      paramNdrBuffer.dec_ndr_long();
      i1 = paramNdrBuffer.dec_ndr_long();
      int i2 = index;
      paramNdrBuffer.advance(i1 * 2);
      if (name.buffer == null)
      {
        if ((i < 0) || (i > 65535)) {
          throw new NdrException("invalid array conformance");
        }
        name.buffer = new short[i];
      }
      paramNdrBuffer = paramNdrBuffer.derive(i2);
      i = 0;
      for (;;)
      {
        localNdrBuffer = paramNdrBuffer;
        if (i >= i1) {
          break;
        }
        name.buffer[i] = ((short)paramNdrBuffer.dec_ndr_short());
        i += 1;
      }
    }
    NdrBuffer localNdrBuffer = paramNdrBuffer;
    paramNdrBuffer = localNdrBuffer;
    if (n != 0)
    {
      paramNdrBuffer = deferred;
      i = paramNdrBuffer.dec_ndr_long();
      paramNdrBuffer.dec_ndr_long();
      n = paramNdrBuffer.dec_ndr_long();
      i1 = index;
      paramNdrBuffer.advance(n * 2);
      if (dns_domain.buffer == null)
      {
        if ((i < 0) || (i > 65535)) {
          throw new NdrException("invalid array conformance");
        }
        dns_domain.buffer = new short[i];
      }
      localNdrBuffer = paramNdrBuffer.derive(i1);
      i = 0;
      for (;;)
      {
        paramNdrBuffer = localNdrBuffer;
        if (i >= n) {
          break;
        }
        dns_domain.buffer[i] = ((short)localNdrBuffer.dec_ndr_short());
        i += 1;
      }
    }
    localNdrBuffer = paramNdrBuffer;
    if (m != 0)
    {
      paramNdrBuffer = deferred;
      i = paramNdrBuffer.dec_ndr_long();
      paramNdrBuffer.dec_ndr_long();
      m = paramNdrBuffer.dec_ndr_long();
      n = index;
      paramNdrBuffer.advance(m * 2);
      if (dns_forest.buffer == null)
      {
        if ((i < 0) || (i > 65535)) {
          throw new NdrException("invalid array conformance");
        }
        dns_forest.buffer = new short[i];
      }
      paramNdrBuffer = paramNdrBuffer.derive(n);
      i = 0;
      for (;;)
      {
        localNdrBuffer = paramNdrBuffer;
        if (i >= m) {
          break;
        }
        dns_forest.buffer[i] = ((short)paramNdrBuffer.dec_ndr_short());
        i += 1;
      }
    }
    if (domain_guid.node == null) {
      domain_guid.node = new byte[6];
    }
    paramNdrBuffer = localNdrBuffer.derive(k);
    i = 0;
    while (i < 6)
    {
      domain_guid.node[i] = ((byte)paramNdrBuffer.dec_ndr_small());
      i += 1;
    }
    if (j != 0)
    {
      if (sid == null) {
        sid = new rpc.sid_t();
      }
      paramNdrBuffer = deferred;
      sid.decode(paramNdrBuffer);
    }
  }
  
  public void encode(NdrBuffer paramNdrBuffer)
  {
    int j = 0;
    paramNdrBuffer.align(4);
    paramNdrBuffer.enc_ndr_short(name.length);
    paramNdrBuffer.enc_ndr_short(name.maximum_length);
    paramNdrBuffer.enc_ndr_referent(name.buffer, 1);
    paramNdrBuffer.enc_ndr_short(dns_domain.length);
    paramNdrBuffer.enc_ndr_short(dns_domain.maximum_length);
    paramNdrBuffer.enc_ndr_referent(dns_domain.buffer, 1);
    paramNdrBuffer.enc_ndr_short(dns_forest.length);
    paramNdrBuffer.enc_ndr_short(dns_forest.maximum_length);
    paramNdrBuffer.enc_ndr_referent(dns_forest.buffer, 1);
    paramNdrBuffer.enc_ndr_long(domain_guid.time_low);
    paramNdrBuffer.enc_ndr_short(domain_guid.time_mid);
    paramNdrBuffer.enc_ndr_short(domain_guid.time_hi_and_version);
    paramNdrBuffer.enc_ndr_small(domain_guid.clock_seq_hi_and_reserved);
    paramNdrBuffer.enc_ndr_small(domain_guid.clock_seq_low);
    int k = index;
    paramNdrBuffer.advance(6);
    paramNdrBuffer.enc_ndr_referent(sid, 1);
    NdrBuffer localNdrBuffer = paramNdrBuffer;
    int m;
    if (name.buffer != null)
    {
      paramNdrBuffer = deferred;
      m = name.length / 2;
      paramNdrBuffer.enc_ndr_long(name.maximum_length / 2);
      paramNdrBuffer.enc_ndr_long(0);
      paramNdrBuffer.enc_ndr_long(m);
      i = index;
      paramNdrBuffer.advance(m * 2);
      paramNdrBuffer = paramNdrBuffer.derive(i);
      i = 0;
      for (;;)
      {
        localNdrBuffer = paramNdrBuffer;
        if (i >= m) {
          break;
        }
        paramNdrBuffer.enc_ndr_short(name.buffer[i]);
        i += 1;
      }
    }
    paramNdrBuffer = localNdrBuffer;
    if (dns_domain.buffer != null)
    {
      paramNdrBuffer = deferred;
      m = dns_domain.length / 2;
      paramNdrBuffer.enc_ndr_long(dns_domain.maximum_length / 2);
      paramNdrBuffer.enc_ndr_long(0);
      paramNdrBuffer.enc_ndr_long(m);
      i = index;
      paramNdrBuffer.advance(m * 2);
      localNdrBuffer = paramNdrBuffer.derive(i);
      i = 0;
      for (;;)
      {
        paramNdrBuffer = localNdrBuffer;
        if (i >= m) {
          break;
        }
        localNdrBuffer.enc_ndr_short(dns_domain.buffer[i]);
        i += 1;
      }
    }
    localNdrBuffer = paramNdrBuffer;
    if (dns_forest.buffer != null)
    {
      paramNdrBuffer = deferred;
      m = dns_forest.length / 2;
      paramNdrBuffer.enc_ndr_long(dns_forest.maximum_length / 2);
      paramNdrBuffer.enc_ndr_long(0);
      paramNdrBuffer.enc_ndr_long(m);
      i = index;
      paramNdrBuffer.advance(m * 2);
      paramNdrBuffer = paramNdrBuffer.derive(i);
      i = 0;
      for (;;)
      {
        localNdrBuffer = paramNdrBuffer;
        if (i >= m) {
          break;
        }
        paramNdrBuffer.enc_ndr_short(dns_forest.buffer[i]);
        i += 1;
      }
    }
    paramNdrBuffer = localNdrBuffer.derive(k);
    int i = j;
    while (i < 6)
    {
      paramNdrBuffer.enc_ndr_small(domain_guid.node[i]);
      i += 1;
    }
    if (sid != null)
    {
      paramNdrBuffer = deferred;
      sid.encode(paramNdrBuffer);
    }
  }
}

/* Location:
 * Qualified Name:     jcifs.dcerpc.msrpc.lsarpc.LsarDnsDomainInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */