.class public final Lcom/google/android/gms/cast/ah;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:J

.field private c:Lcom/google/android/gms/cast/aa;

.field private d:D

.field private e:I

.field private f:I

.field private g:J

.field private h:J

.field private i:D

.field private j:Z

.field private k:[J

.field private l:Lorg/json/JSONObject;

.field private m:I

.field private n:I

.field private final o:Lcom/google/android/gms/cast/ai;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/google/android/gms/cast/ah;->a:I

    iput v1, p0, Lcom/google/android/gms/cast/ah;->m:I

    iput v1, p0, Lcom/google/android/gms/cast/ah;->n:I

    new-instance v0, Lcom/google/android/gms/cast/ai;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/ai;-><init>(Lcom/google/android/gms/cast/ah;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/ah;->o:Lcom/google/android/gms/cast/ai;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/cast/ah;->a(Lorg/json/JSONObject;I)I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/cast/ah;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/ah;->a:I

    return v0
.end method

.method private a(II)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/cast/ah;)Lcom/google/android/gms/cast/aa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/ah;->c:Lcom/google/android/gms/cast/aa;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;I)I
    .locals 13

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "mediaSessionId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iget-wide v10, p0, Lcom/google/android/gms/cast/ah;->b:J

    cmp-long v0, v8, v10

    if-eqz v0, :cond_1e

    iput-wide v8, p0, Lcom/google/android/gms/cast/ah;->b:J

    move v0, v1

    :goto_0
    const-string v3, "playerState"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "playerState"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "IDLE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v3, v1

    :goto_1
    iget v7, p0, Lcom/google/android/gms/cast/ah;->e:I

    if-eq v3, v7, :cond_0

    iput v3, p0, Lcom/google/android/gms/cast/ah;->e:I

    or-int/lit8 v0, v0, 0x2

    :cond_0
    if-ne v3, v1, :cond_1

    const-string v3, "idleReason"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "idleReason"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "CANCELLED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    :goto_2
    iget v3, p0, Lcom/google/android/gms/cast/ah;->f:I

    if-eq v4, v3, :cond_1

    iput v4, p0, Lcom/google/android/gms/cast/ah;->f:I

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const-string v3, "playbackRate"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "playbackRate"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/cast/ah;->d:D

    cmpl-double v3, v6, v4

    if-eqz v3, :cond_2

    iput-wide v4, p0, Lcom/google/android/gms/cast/ah;->d:D

    or-int/lit8 v0, v0, 0x2

    :cond_2
    const-string v3, "currentTime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_3

    const-string v3, "currentTime"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/cast/internal/n;->a(D)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/cast/ah;->g:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    iput-wide v4, p0, Lcom/google/android/gms/cast/ah;->g:J

    or-int/lit8 v0, v0, 0x2

    :cond_3
    const-string v3, "supportedMediaCommands"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "supportedMediaCommands"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/cast/ah;->h:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    iput-wide v4, p0, Lcom/google/android/gms/cast/ah;->h:J

    or-int/lit8 v0, v0, 0x2

    :cond_4
    const-string v3, "volume"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_6

    const-string v3, "volume"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "level"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/cast/ah;->i:D

    cmpl-double v6, v4, v6

    if-eqz v6, :cond_5

    iput-wide v4, p0, Lcom/google/android/gms/cast/ah;->i:D

    or-int/lit8 v0, v0, 0x2

    :cond_5
    const-string v4, "muted"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-boolean v4, p0, Lcom/google/android/gms/cast/ah;->j:Z

    if-eq v3, v4, :cond_6

    iput-boolean v3, p0, Lcom/google/android/gms/cast/ah;->j:Z

    or-int/lit8 v0, v0, 0x2

    :cond_6
    const/4 v3, 0x0

    const-string v4, "activeTrackIds"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v3, "activeTrackIds"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v3, v6, [J

    move v4, v2

    :goto_3
    if-ge v4, v6, :cond_d

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    aput-wide v8, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    const-string v7, "PLAYING"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v3, v4

    goto/16 :goto_1

    :cond_8
    const-string v7, "PAUSED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move v3, v5

    goto/16 :goto_1

    :cond_9
    const-string v7, "BUFFERING"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v6

    goto/16 :goto_1

    :cond_a
    const-string v4, "INTERRUPTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v5

    goto/16 :goto_2

    :cond_b
    const-string v4, "FINISHED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v1

    goto/16 :goto_2

    :cond_c
    const-string v4, "ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move v4, v6

    goto/16 :goto_2

    :cond_d
    iget-object v4, p0, Lcom/google/android/gms/cast/ah;->k:[J

    if-nez v4, :cond_17

    :cond_e
    :goto_4
    if-eqz v1, :cond_f

    iput-object v3, p0, Lcom/google/android/gms/cast/ah;->k:[J

    :cond_f
    move-object v12, v3

    move v3, v1

    move-object v1, v12

    :goto_5
    if-eqz v3, :cond_10

    iput-object v1, p0, Lcom/google/android/gms/cast/ah;->k:[J

    or-int/lit8 v0, v0, 0x2

    :cond_10
    const-string v1, "customData"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "customData"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/cast/ah;->l:Lorg/json/JSONObject;

    or-int/lit8 v0, v0, 0x2

    :cond_11
    const-string v1, "media"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "media"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/cast/aa;

    invoke-direct {v3, v1}, Lcom/google/android/gms/cast/aa;-><init>(Lorg/json/JSONObject;)V

    iput-object v3, p0, Lcom/google/android/gms/cast/ah;->c:Lcom/google/android/gms/cast/aa;

    or-int/lit8 v0, v0, 0x2

    const-string v3, "metadata"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    or-int/lit8 v0, v0, 0x4

    :cond_12
    const-string v1, "currentItemId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "currentItemId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iget v3, p0, Lcom/google/android/gms/cast/ah;->a:I

    if-eq v3, v1, :cond_13

    iput v1, p0, Lcom/google/android/gms/cast/ah;->a:I

    or-int/lit8 v0, v0, 0x2

    :cond_13
    const-string v1, "preloadedItemId"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iget v3, p0, Lcom/google/android/gms/cast/ah;->n:I

    if-eq v3, v1, :cond_14

    iput v1, p0, Lcom/google/android/gms/cast/ah;->n:I

    or-int/lit8 v0, v0, 0x10

    :cond_14
    const-string v1, "loadingItemId"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iget v3, p0, Lcom/google/android/gms/cast/ah;->m:I

    if-eq v3, v1, :cond_15

    iput v1, p0, Lcom/google/android/gms/cast/ah;->m:I

    or-int/lit8 v0, v0, 0x2

    :cond_15
    iget v1, p0, Lcom/google/android/gms/cast/ah;->e:I

    iget v3, p0, Lcom/google/android/gms/cast/ah;->m:I

    invoke-direct {p0, v1, v3}, Lcom/google/android/gms/cast/ah;->a(II)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/cast/ah;->o:Lcom/google/android/gms/cast/ai;

    invoke-static {v1, p1}, Lcom/google/android/gms/cast/ai;->a(Lcom/google/android/gms/cast/ai;Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_16

    or-int/lit8 v0, v0, 0x8

    :cond_16
    :goto_6
    return v0

    :cond_17
    iget-object v4, p0, Lcom/google/android/gms/cast/ah;->k:[J

    array-length v4, v4

    if-ne v4, v6, :cond_e

    move v4, v2

    :goto_7
    if-ge v4, v6, :cond_1b

    iget-object v5, p0, Lcom/google/android/gms/cast/ah;->k:[J

    aget-wide v8, v5, v4

    aget-wide v10, v3, v4

    cmp-long v5, v8, v10

    if-nez v5, :cond_e

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_18
    iget-object v4, p0, Lcom/google/android/gms/cast/ah;->k:[J

    if-eqz v4, :cond_1a

    move-object v12, v3

    move v3, v1

    move-object v1, v12

    goto/16 :goto_5

    :cond_19
    iput v2, p0, Lcom/google/android/gms/cast/ah;->a:I

    iput v2, p0, Lcom/google/android/gms/cast/ah;->m:I

    iput v2, p0, Lcom/google/android/gms/cast/ah;->n:I

    iget-object v1, p0, Lcom/google/android/gms/cast/ah;->o:Lcom/google/android/gms/cast/ai;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/ai;->a()I

    move-result v1

    if-lez v1, :cond_16

    iget-object v1, p0, Lcom/google/android/gms/cast/ah;->o:Lcom/google/android/gms/cast/ai;

    invoke-static {v1}, Lcom/google/android/gms/cast/ai;->a(Lcom/google/android/gms/cast/ai;)V

    or-int/lit8 v0, v0, 0x8

    goto :goto_6

    :cond_1a
    move-object v1, v3

    move v3, v2

    goto/16 :goto_5

    :cond_1b
    move v1, v2

    goto/16 :goto_4

    :cond_1c
    move v4, v2

    goto/16 :goto_2

    :cond_1d
    move v3, v2

    goto/16 :goto_1

    :cond_1e
    move v0, v2

    goto/16 :goto_0
.end method

.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/ah;->b:J

    return-wide v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/ah;->e:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/ah;->f:I

    return v0
.end method

.method public d()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/ah;->d:D

    return-wide v0
.end method

.method public e()Lcom/google/android/gms/cast/aa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/ah;->c:Lcom/google/android/gms/cast/aa;

    return-object v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/ah;->g:J

    return-wide v0
.end method
