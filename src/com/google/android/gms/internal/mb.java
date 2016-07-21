package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.ads.internal.formats.a;
import com.google.android.gms.ads.internal.formats.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;
import org.json.JSONObject;

@me
public class mb
  implements ly<e>
{
  private final boolean a;
  private final boolean b;
  
  public mb(boolean paramBoolean1, boolean paramBoolean2)
  {
    a = paramBoolean1;
    b = paramBoolean2;
  }
  
  public e b(ls paramls, JSONObject paramJSONObject)
  {
    Object localObject = paramls.a(paramJSONObject, "images", true, a, b);
    po localpo = paramls.a(paramJSONObject, "secondary_image", false, a);
    paramls = paramls.b(paramJSONObject);
    ArrayList localArrayList = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      localArrayList.add(((po)((Iterator)localObject).next()).get());
    }
    return new e(paramJSONObject.getString("headline"), localArrayList, paramJSONObject.getString("body"), (dr)localpo.get(), paramJSONObject.getString("call_to_action"), paramJSONObject.getString("advertiser"), (a)paramls.get(), new Bundle());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.mb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */