.class public Lcom/google/android/gms/cast/ac;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Lcom/google/android/gms/cast/ad;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/os/Bundle;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const-string v1, "String"

    aput-object v1, v0, v3

    const-string v1, "int"

    aput-object v1, v0, v4

    const-string v1, "double"

    aput-object v1, v0, v6

    const-string v1, "ISO-8601 date String"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/cast/ac;->a:[Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/cast/ad;

    invoke-direct {v0}, Lcom/google/android/gms/cast/ad;-><init>()V

    const-string v1, "com.google.android.gms.cast.metadata.CREATION_DATE"

    const-string v2, "creationDateTime"

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/gms/cast/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/ad;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    const-string v2, "releaseDate"

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/gms/cast/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/ad;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    const-string v2, "originalAirdate"

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/gms/cast/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/ad;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/ad;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.SUBTITLE"

    const-string v2, "subtitle"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/ad;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.ARTIST"

    const-string v2, "artist"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/ad;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    const-string v2, "albumArtist"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/ad;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    const-string v2, "albumName"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/ad;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.COMPOSER"

    const-string v2, "composer"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/ad;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    const-string v2, "discNumber"

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/ad;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    const-string v2, "trackNumber"

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/ad;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    const-string v2, "season"

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/ad;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    const-string v2, "episode"

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/ad;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    const-string v2, "seriesTitle"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/ad;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.STUDIO"

    const-string v2, "studio"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/ad;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.WIDTH"

    const-string v2, "width"

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/ad;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.HEIGHT"

    const-string v2, "height"

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/ad;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    const-string v2, "location"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/cast/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/ad;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    const-string v2, "latitude"

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/gms/cast/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/ad;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    const-string v2, "longitude"

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/gms/cast/ad;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/ad;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/cast/ac;->b:Lcom/google/android/gms/cast/ad;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/ac;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/ac;->c:Ljava/util/List;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/ac;->d:Landroid/os/Bundle;

    iput p1, p0, Lcom/google/android/gms/cast/ac;->e:I

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null and empty keys are not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/cast/ac;->b:Lcom/google/android/gms/cast/ad;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/ad;->c(Ljava/lang/String;)I

    move-result v0

    if-eq v0, p2, :cond_1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/cast/ac;->a:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private varargs a(Lorg/json/JSONObject;[Ljava/lang/String;)V
    .locals 6

    :try_start_0
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p2, v0

    iget-object v3, p0, Lcom/google/android/gms/cast/ac;->d:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/google/android/gms/cast/ac;->b:Lcom/google/android/gms/cast/ad;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/ad;->c(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v3, Lcom/google/android/gms/cast/ac;->b:Lcom/google/android/gms/cast/ad;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/cast/ac;->d:Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_1
    return-void

    :pswitch_1
    sget-object v3, Lcom/google/android/gms/cast/ac;->b:Lcom/google/android/gms/cast/ad;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/cast/ac;->d:Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :pswitch_2
    sget-object v3, Lcom/google/android/gms/cast/ac;->b:Lcom/google/android/gms/cast/ad;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/cast/ac;->d:Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/cast/ac;->d:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "com.google."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/cast/ac;->d:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_5

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_5
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_3

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v1, v2, Landroid/os/Bundle;

    if-eqz v1, :cond_2

    instance-of v1, v4, Landroid/os/Bundle;

    if-eqz v1, :cond_2

    move-object v1, v2

    check-cast v1, Landroid/os/Bundle;

    move-object v3, v4

    check-cast v3, Landroid/os/Bundle;

    invoke-direct {p0, v1, v3}, Lcom/google/android/gms/cast/ac;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    if-nez v2, :cond_4

    if-nez v4, :cond_3

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private varargs b(Lorg/json/JSONObject;[Ljava/lang/String;)V
    .locals 10

    new-instance v4, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "metadataType"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/android/gms/cast/ac;->b:Lcom/google/android/gms/cast/ad;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/ad;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/google/android/gms/cast/ac;->b:Lcom/google/android/gms/cast/ad;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/cast/ad;->c(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/cast/ac;->d:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :pswitch_1
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/rl;->a(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/cast/ac;->d:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/cast/ac;->d:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/cast/ac;->d:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v3, v6, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v6, v3, Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/google/android/gms/cast/ac;->d:Landroid/os/Bundle;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    :cond_2
    return-void

    :cond_3
    instance-of v6, v3, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/google/android/gms/cast/ac;->d:Landroid/os/Bundle;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    instance-of v6, v3, Ljava/lang/Double;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/google/android/gms/cast/ac;->d:Landroid/os/Bundle;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v6, v2, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/ac;->d:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/cast/ac;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/images/WebImage;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/ac;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/ac;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/cast/ac;->d:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/ac;->a()V

    iput v2, p0, Lcom/google/android/gms/cast/ac;->e:I

    :try_start_0
    const-string v0, "metadataType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/ac;->e:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/cast/ac;->c:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/rl;->a(Ljava/util/List;Lorg/json/JSONObject;)V

    iget v0, p0, Lcom/google/android/gms/cast/ac;->e:I

    packed-switch v0, :pswitch_data_0

    new-array v0, v2, [Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/ac;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_0
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v1, v0, v2

    const-string v1, "com.google.android.gms.cast.metadata.ARTIST"

    aput-object v1, v0, v3

    const-string v1, "com.google.android.gms.cast.metadata.SUBTITLE"

    aput-object v1, v0, v4

    const-string v1, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    aput-object v1, v0, v5

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/ac;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v1, v0, v2

    const-string v1, "com.google.android.gms.cast.metadata.STUDIO"

    aput-object v1, v0, v3

    const-string v1, "com.google.android.gms.cast.metadata.SUBTITLE"

    aput-object v1, v0, v4

    const-string v1, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    aput-object v1, v0, v5

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/ac;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v1, v0, v2

    const-string v1, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    aput-object v1, v0, v3

    const-string v1, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    aput-object v1, v0, v4

    const-string v1, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    aput-object v1, v0, v5

    const-string v1, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    aput-object v1, v0, v6

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/ac;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v1, v0, v2

    const-string v1, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    aput-object v1, v0, v3

    const-string v1, "com.google.android.gms.cast.metadata.ARTIST"

    aput-object v1, v0, v4

    const-string v1, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    aput-object v1, v0, v5

    const-string v1, "com.google.android.gms.cast.metadata.COMPOSER"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/ac;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v1, v0, v2

    const-string v1, "com.google.android.gms.cast.metadata.ARTIST"

    aput-object v1, v0, v3

    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    aput-object v1, v0, v4

    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    aput-object v1, v0, v5

    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "com.google.android.gms.cast.metadata.WIDTH"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.android.gms.cast.metadata.HEIGHT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.google.android.gms.cast.metadata.CREATION_DATE"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/ac;->b(Lorg/json/JSONObject;[Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public b()Lorg/json/JSONObject;
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "metadataType"

    iget v2, p0, Lcom/google/android/gms/cast/ac;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/cast/ac;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/rl;->a(Lorg/json/JSONObject;Ljava/util/List;)V

    iget v1, p0, Lcom/google/android/gms/cast/ac;->e:I

    packed-switch v1, :pswitch_data_0

    new-array v1, v3, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/ac;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V

    :goto_1
    return-object v0

    :pswitch_0
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v2, v1, v3

    const-string v2, "com.google.android.gms.cast.metadata.ARTIST"

    aput-object v2, v1, v4

    const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"

    aput-object v2, v1, v5

    const-string v2, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    aput-object v2, v1, v6

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/ac;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v2, v1, v3

    const-string v2, "com.google.android.gms.cast.metadata.STUDIO"

    aput-object v2, v1, v4

    const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"

    aput-object v2, v1, v5

    const-string v2, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    aput-object v2, v1, v6

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/ac;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v2, v1, v3

    const-string v2, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    aput-object v2, v1, v4

    const-string v2, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    aput-object v2, v1, v5

    const-string v2, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    aput-object v2, v1, v6

    const-string v2, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    aput-object v2, v1, v7

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/ac;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v2, v1, v3

    const-string v2, "com.google.android.gms.cast.metadata.ARTIST"

    aput-object v2, v1, v4

    const-string v2, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    aput-object v2, v1, v5

    const-string v2, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    aput-object v2, v1, v6

    const-string v2, "com.google.android.gms.cast.metadata.COMPOSER"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/ac;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v2, v1, v3

    const-string v2, "com.google.android.gms.cast.metadata.ARTIST"

    aput-object v2, v1, v4

    const-string v2, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    aput-object v2, v1, v5

    const-string v2, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    aput-object v2, v1, v6

    const-string v2, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "com.google.android.gms.cast.metadata.WIDTH"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "com.google.android.gms.cast.metadata.HEIGHT"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "com.google.android.gms.cast.metadata.CREATION_DATE"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/ac;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/cast/ac;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/cast/ac;

    iget-object v2, p0, Lcom/google/android/gms/cast/ac;->d:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/google/android/gms/cast/ac;->d:Landroid/os/Bundle;

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/cast/ac;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/cast/ac;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/ac;->c:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/android/gms/cast/ac;->d:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    mul-int/lit8 v1, v1, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/cast/ac;->d:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v1, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/cast/ac;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
