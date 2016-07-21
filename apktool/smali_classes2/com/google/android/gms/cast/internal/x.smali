.class public Lcom/google/android/gms/cast/internal/x;
.super Lcom/google/android/gms/cast/internal/c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private g:J

.field private h:Lcom/google/android/gms/cast/ah;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/cast/internal/aa;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/android/gms/cast/internal/aa;

.field private final k:Lcom/google/android/gms/cast/internal/aa;

.field private final l:Lcom/google/android/gms/cast/internal/aa;

.field private final m:Lcom/google/android/gms/cast/internal/aa;

.field private final n:Lcom/google/android/gms/cast/internal/aa;

.field private final o:Lcom/google/android/gms/cast/internal/aa;

.field private final p:Lcom/google/android/gms/cast/internal/aa;

.field private final q:Lcom/google/android/gms/cast/internal/aa;

.field private final r:Lcom/google/android/gms/cast/internal/aa;

.field private final s:Lcom/google/android/gms/cast/internal/aa;

.field private final t:Lcom/google/android/gms/cast/internal/aa;

.field private final u:Lcom/google/android/gms/cast/internal/aa;

.field private final v:Lcom/google/android/gms/cast/internal/aa;

.field private final w:Lcom/google/android/gms/cast/internal/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.google.cast.media"

    invoke-static {v0}, Lcom/google/android/gms/cast/internal/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/cast/internal/x;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const-wide/32 v6, 0x5265c00

    sget-object v1, Lcom/google/android/gms/cast/internal/x;->a:Ljava/lang/String;

    const-string v2, "MediaControlChannel"

    const-wide/16 v4, 0x3e8

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/cast/internal/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v0, Lcom/google/android/gms/cast/internal/aa;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/aa;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/x;->j:Lcom/google/android/gms/cast/internal/aa;

    new-instance v0, Lcom/google/android/gms/cast/internal/aa;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/aa;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/x;->k:Lcom/google/android/gms/cast/internal/aa;

    new-instance v0, Lcom/google/android/gms/cast/internal/aa;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/aa;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/x;->l:Lcom/google/android/gms/cast/internal/aa;

    new-instance v0, Lcom/google/android/gms/cast/internal/aa;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/aa;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/x;->m:Lcom/google/android/gms/cast/internal/aa;

    new-instance v0, Lcom/google/android/gms/cast/internal/aa;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/aa;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/x;->n:Lcom/google/android/gms/cast/internal/aa;

    new-instance v0, Lcom/google/android/gms/cast/internal/aa;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/aa;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/x;->o:Lcom/google/android/gms/cast/internal/aa;

    new-instance v0, Lcom/google/android/gms/cast/internal/aa;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/aa;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/x;->p:Lcom/google/android/gms/cast/internal/aa;

    new-instance v0, Lcom/google/android/gms/cast/internal/aa;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/aa;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/x;->q:Lcom/google/android/gms/cast/internal/aa;

    new-instance v0, Lcom/google/android/gms/cast/internal/aa;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/aa;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/x;->r:Lcom/google/android/gms/cast/internal/aa;

    new-instance v0, Lcom/google/android/gms/cast/internal/aa;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/aa;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/x;->s:Lcom/google/android/gms/cast/internal/aa;

    new-instance v0, Lcom/google/android/gms/cast/internal/aa;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/aa;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/x;->t:Lcom/google/android/gms/cast/internal/aa;

    new-instance v0, Lcom/google/android/gms/cast/internal/aa;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/aa;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/x;->u:Lcom/google/android/gms/cast/internal/aa;

    new-instance v0, Lcom/google/android/gms/cast/internal/aa;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/aa;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/x;->v:Lcom/google/android/gms/cast/internal/aa;

    new-instance v0, Lcom/google/android/gms/cast/internal/aa;

    invoke-direct {v0, v6, v7}, Lcom/google/android/gms/cast/internal/aa;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/x;->w:Lcom/google/android/gms/cast/internal/aa;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/x;->i:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->j:Lcom/google/android/gms/cast/internal/aa;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->k:Lcom/google/android/gms/cast/internal/aa;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->l:Lcom/google/android/gms/cast/internal/aa;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->m:Lcom/google/android/gms/cast/internal/aa;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->n:Lcom/google/android/gms/cast/internal/aa;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->o:Lcom/google/android/gms/cast/internal/aa;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->p:Lcom/google/android/gms/cast/internal/aa;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->q:Lcom/google/android/gms/cast/internal/aa;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->r:Lcom/google/android/gms/cast/internal/aa;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->s:Lcom/google/android/gms/cast/internal/aa;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->t:Lcom/google/android/gms/cast/internal/aa;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->u:Lcom/google/android/gms/cast/internal/aa;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->v:Lcom/google/android/gms/cast/internal/aa;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->w:Lcom/google/android/gms/cast/internal/aa;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/x;->m()V

    return-void
.end method

.method private a(JLorg/json/JSONObject;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->j:Lcom/google/android/gms/cast/internal/aa;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/internal/aa;->a(J)Z

    move-result v3

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->n:Lcom/google/android/gms/cast/internal/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->n:Lcom/google/android/gms/cast/internal/aa;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/internal/aa;->a(J)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/x;->o:Lcom/google/android/gms/cast/internal/aa;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/internal/aa;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/cast/internal/x;->o:Lcom/google/android/gms/cast/internal/aa;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/cast/internal/aa;->a(J)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/cast/internal/x;->p:Lcom/google/android/gms/cast/internal/aa;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/internal/aa;->b()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/google/android/gms/cast/internal/x;->p:Lcom/google/android/gms/cast/internal/aa;

    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/cast/internal/aa;->a(J)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_1
    :goto_1
    if-eqz v0, :cond_d

    const/4 v0, 0x2

    :goto_2
    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->h:Lcom/google/android/gms/cast/ah;

    if-nez v1, :cond_b

    :cond_3
    new-instance v0, Lcom/google/android/gms/cast/ah;

    invoke-direct {v0, p3}, Lcom/google/android/gms/cast/ah;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/x;->h:Lcom/google/android/gms/cast/ah;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/cast/internal/x;->g:J

    const/16 v0, 0x1f

    :goto_3
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/cast/internal/x;->g:J

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/x;->a()V

    :cond_4
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/cast/internal/x;->g:J

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/x;->a()V

    :cond_5
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/x;->b()V

    :cond_6
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/x;->c()V

    :cond_7
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/x;->d()V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/aa;

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/gms/cast/internal/aa;->a(JI)Z

    goto :goto_4

    :cond_9
    move v0, v2

    goto/16 :goto_0

    :cond_a
    move v1, v2

    goto :goto_1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->h:Lcom/google/android/gms/cast/ah;

    invoke-virtual {v1, p3, v0}, Lcom/google/android/gms/cast/ah;->a(Lorg/json/JSONObject;I)I

    move-result v0

    goto :goto_3

    :cond_c
    return-void

    :cond_d
    move v0, v2

    goto :goto_2
.end method

.method private m()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/cast/internal/x;->g:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/x;->h:Lcom/google/android/gms/cast/ah;

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/aa;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/cast/internal/z;)J
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/x;->g()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->q:Lcom/google/android/gms/cast/internal/aa;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/cast/internal/aa;->a(JLcom/google/android/gms/cast/internal/z;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/internal/x;->a(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "GET_STATUS"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->h:Lcom/google/android/gms/cast/ah;

    if-eqz v1, :cond_0

    const-string v1, "mediaSessionId"

    iget-object v4, p0, Lcom/google/android/gms/cast/internal/x;->h:Lcom/google/android/gms/cast/ah;

    invoke-virtual {v4}, Lcom/google/android/gms/cast/ah;->a()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/x;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/cast/internal/z;JILorg/json/JSONObject;)J
    .locals 8

    const/4 v6, 0x1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/x;->g()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->n:Lcom/google/android/gms/cast/internal/aa;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/cast/internal/aa;->a(JLcom/google/android/gms/cast/internal/z;)V

    invoke-virtual {p0, v6}, Lcom/google/android/gms/cast/internal/x;->a(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "SEEK"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/x;->l()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "currentTime"

    invoke-static {p2, p3}, Lcom/google/android/gms/cast/internal/n;->a(J)D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    if-ne p4, v6, :cond_2

    const-string v1, "resumeState"

    const-string v4, "PLAYBACK_START"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    const-string v1, "customData"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/x;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :cond_2
    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    :try_start_1
    const-string v1, "resumeState"

    const-string v4, "PLAYBACK_PAUSE"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/cast/internal/z;Lcom/google/android/gms/cast/aa;ZJ[JLorg/json/JSONObject;)J
    .locals 8

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/x;->g()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->j:Lcom/google/android/gms/cast/internal/aa;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/cast/internal/aa;->a(JLcom/google/android/gms/cast/internal/z;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/internal/x;->a(Z)V

    :try_start_0
    const-string v0, "requestId"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "type"

    const-string v4, "LOAD"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "media"

    invoke-virtual {p2}, Lcom/google/android/gms/cast/aa;->c()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "autoplay"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "currentTime"

    invoke-static {p4, p5}, Lcom/google/android/gms/cast/internal/n;->a(J)D

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    if-eqz p6, :cond_1

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v5, p6

    if-ge v0, v5, :cond_0

    aget-wide v6, p6, v0

    invoke-virtual {v4, v0, v6, v7}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "activeTrackIds"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p7, :cond_2

    const-string v0, "customData"

    invoke-virtual {v1, v0, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/x;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/cast/internal/z;Lorg/json/JSONObject;)J
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/x;->g()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->k:Lcom/google/android/gms/cast/internal/aa;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/cast/internal/aa;->a(JLcom/google/android/gms/cast/internal/z;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/internal/x;->a(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "PAUSE"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/x;->l()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v1, "customData"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/x;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method public a(JI)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/aa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/cast/internal/aa;->a(JI)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(J)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/aa;

    const/16 v2, 0x836

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/gms/cast/internal/aa;->b(JI)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/cast/internal/aa;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/aa;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/aa;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public b(Lcom/google/android/gms/cast/internal/z;Lorg/json/JSONObject;)J
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/x;->g()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->m:Lcom/google/android/gms/cast/internal/aa;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/cast/internal/aa;->a(JLcom/google/android/gms/cast/internal/z;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/internal/x;->a(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "STOP"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/x;->l()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v1, "customData"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/x;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->f:Lcom/google/android/gms/cast/internal/w;

    const-string v1, "message received: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/w;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "requestId"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "MEDIA_STATUS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/gms/cast/internal/x;->a(JLorg/json/JSONObject;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/internal/x;->h:Lcom/google/android/gms/cast/ah;

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/x;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/x;->b()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/x;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/x;->d()V

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->q:Lcom/google/android/gms/cast/internal/aa;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/aa;->a(JI)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->f:Lcom/google/android/gms/cast/internal/w;

    const-string v2, "Message is malformed (%s); ignoring: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    aput-object p1, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/cast/internal/w;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v4, "INVALID_PLAYER_STATE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->f:Lcom/google/android/gms/cast/internal/w;

    const-string v4, "received unexpected error: Invalid Player State."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/cast/internal/w;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "customData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/aa;

    const/16 v5, 0x834

    invoke-virtual {v0, v2, v3, v5, v1}, Lcom/google/android/gms/cast/internal/aa;->a(JILjava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v4, "LOAD_FAILED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v1, "customData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->j:Lcom/google/android/gms/cast/internal/aa;

    const/16 v4, 0x834

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/cast/internal/aa;->a(JILjava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v4, "LOAD_CANCELLED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v1, "customData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->j:Lcom/google/android/gms/cast/internal/aa;

    const/16 v4, 0x835

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/cast/internal/aa;->a(JILjava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const-string v4, "INVALID_REQUEST"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->f:Lcom/google/android/gms/cast/internal/w;

    const-string v4, "received unexpected error: Invalid Request."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/cast/internal/w;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "customData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/internal/aa;

    const/16 v5, 0x834

    invoke-virtual {v0, v2, v3, v5, v1}, Lcom/google/android/gms/cast/internal/aa;->a(JILjava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public c(Lcom/google/android/gms/cast/internal/z;Lorg/json/JSONObject;)J
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/x;->g()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/x;->l:Lcom/google/android/gms/cast/internal/aa;

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/gms/cast/internal/aa;->a(JLcom/google/android/gms/cast/internal/z;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/cast/internal/x;->a(Z)V

    :try_start_0
    const-string v1, "requestId"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v4, "PLAY"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mediaSessionId"

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/x;->l()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string v1, "customData"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/x;->a(Ljava/lang/String;JLjava/lang/String;)V

    return-wide v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/cast/internal/c;->e()V

    invoke-direct {p0}, Lcom/google/android/gms/cast/internal/x;->m()V

    return-void
.end method

.method public h()J
    .locals 12

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/x;->k()Lcom/google/android/gms/cast/aa;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/cast/internal/x;->g:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->h:Lcom/google/android/gms/cast/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/ah;->d()D

    move-result-wide v10

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->h:Lcom/google/android/gms/cast/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/ah;->f()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->h:Lcom/google/android/gms/cast/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/ah;->b()I

    move-result v0

    const-wide/16 v6, 0x0

    cmpl-double v1, v10, v6

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    :cond_2
    move-wide v2, v4

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/google/android/gms/cast/internal/x;->g:J

    sub-long/2addr v0, v6

    cmp-long v6, v0, v2

    if-gez v6, :cond_7

    move-wide v6, v2

    :goto_1
    cmp-long v0, v6, v2

    if-nez v0, :cond_4

    move-wide v2, v4

    goto :goto_0

    :cond_4
    invoke-virtual {v8}, Lcom/google/android/gms/cast/aa;->a()J

    move-result-wide v0

    long-to-double v6, v6

    mul-double/2addr v6, v10

    double-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v6, v0, v2

    if-lez v6, :cond_5

    cmp-long v6, v4, v0

    if-lez v6, :cond_5

    :goto_2
    move-wide v2, v0

    goto :goto_0

    :cond_5
    cmp-long v0, v4, v2

    if-gez v0, :cond_6

    move-wide v0, v2

    goto :goto_2

    :cond_6
    move-wide v0, v4

    goto :goto_2

    :cond_7
    move-wide v6, v0

    goto :goto_1
.end method

.method public i()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/internal/x;->k()Lcom/google/android/gms/cast/aa;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/aa;->a()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public j()Lcom/google/android/gms/cast/ah;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->h:Lcom/google/android/gms/cast/ah;

    return-object v0
.end method

.method public k()Lcom/google/android/gms/cast/aa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->h:Lcom/google/android/gms/cast/ah;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->h:Lcom/google/android/gms/cast/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/ah;->e()Lcom/google/android/gms/cast/aa;

    move-result-object v0

    goto :goto_0
.end method

.method public l()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->h:Lcom/google/android/gms/cast/ah;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current media session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/x;->h:Lcom/google/android/gms/cast/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/ah;->a()J

    move-result-wide v0

    return-wide v0
.end method
