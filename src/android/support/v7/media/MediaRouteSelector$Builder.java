package android.support.v7.media;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class MediaRouteSelector$Builder
{
  private ArrayList<String> mControlCategories;
  
  public MediaRouteSelector$Builder() {}
  
  public MediaRouteSelector$Builder(MediaRouteSelector paramMediaRouteSelector)
  {
    if (paramMediaRouteSelector == null) {
      throw new IllegalArgumentException("selector must not be null");
    }
    MediaRouteSelector.access$000(paramMediaRouteSelector);
    if (!MediaRouteSelector.access$100(paramMediaRouteSelector).isEmpty()) {
      mControlCategories = new ArrayList(MediaRouteSelector.access$100(paramMediaRouteSelector));
    }
  }
  
  public Builder addControlCategories(Collection<String> paramCollection)
  {
    if (paramCollection == null) {
      throw new IllegalArgumentException("categories must not be null");
    }
    if (!paramCollection.isEmpty())
    {
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext()) {
        addControlCategory((String)paramCollection.next());
      }
    }
    return this;
  }
  
  public Builder addControlCategory(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("category must not be null");
    }
    if (mControlCategories == null) {
      mControlCategories = new ArrayList();
    }
    if (!mControlCategories.contains(paramString)) {
      mControlCategories.add(paramString);
    }
    return this;
  }
  
  public Builder addSelector(MediaRouteSelector paramMediaRouteSelector)
  {
    if (paramMediaRouteSelector == null) {
      throw new IllegalArgumentException("selector must not be null");
    }
    addControlCategories(paramMediaRouteSelector.getControlCategories());
    return this;
  }
  
  public MediaRouteSelector build()
  {
    if (mControlCategories == null) {
      return MediaRouteSelector.EMPTY;
    }
    Bundle localBundle = new Bundle();
    localBundle.putStringArrayList("controlCategories", mControlCategories);
    return new MediaRouteSelector(localBundle, mControlCategories, null);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouteSelector.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */