package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.ads.internal.formats.a;
import com.google.android.gms.ads.internal.formats.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;
import org.json.JSONObject;

@me
public class ma
  implements ly<d>
{
  private final boolean a;
  private final boolean b;
  
  public ma(boolean paramBoolean1, boolean paramBoolean2)
  {
    a = paramBoolean1;
    b = paramBoolean2;
  }
  
  public d b(ls paramls, JSONObject paramJSONObject)
  {
    Object localObject = paramls.a(paramJSONObject, "images", true, a, b);
    po localpo = paramls.a(paramJSONObject, "app_icon", true, a);
    paramls = paramls.b(paramJSONObject);
    ArrayList localArrayList = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      localArrayList.add(((po)((Iterator)localObject).next()).get());
    }
    return new d(paramJSONObject.getString("headline"), localArrayList, paramJSONObject.getString("body"), (dr)localpo.get(), paramJSONObject.getString("call_to_action"), paramJSONObject.optDouble("rating", -1.0D), paramJSONObject.optString("store"), paramJSONObject.optString("price"), (a)paramls.get(), new Bundle());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ma
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */