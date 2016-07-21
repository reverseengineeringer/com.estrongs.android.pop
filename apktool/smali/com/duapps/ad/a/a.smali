.class public Lcom/duapps/ad/a/a;
.super Lcom/duapps/ad/entity/a/a;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/duapps/ad/entity/a/a",
        "<",
        "Lcom/duapps/ad/entity/a/c;",
        ">;",
        "Landroid/os/Handler$Callback;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duapps/ad/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Lcom/google/android/gms/ads/c;

.field private k:Lcom/google/android/gms/ads/formats/e;

.field private l:I

.field private m:Landroid/os/Handler;

.field private n:J


# direct methods
.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/duapps/ad/entity/a/a;-><init>(Landroid/content/Context;IJ)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/a/a;->a:Ljava/util/List;

    invoke-static {p1}, Lcom/duapps/ad/base/ag;->a(Landroid/content/Context;)Lcom/duapps/ad/base/ag;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/duapps/ad/base/ag;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duapps/ad/a/a;->i:Ljava/lang/String;

    invoke-direct {p0}, Lcom/duapps/ad/a/a;->e()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/duapps/ad/a/a;->l:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "adnative"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/duapps/ad/a/a;->m:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJI)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/duapps/ad/a/a;-><init>(Landroid/content/Context;IJ)V

    iput p5, p0, Lcom/duapps/ad/a/a;->l:I

    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/a/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/a/a;->a:Ljava/util/List;

    return-object v0
.end method

.method private a(II)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/duapps/ad/a/a;->f:Landroid/content/Context;

    iget v1, p0, Lcom/duapps/ad/a/a;->g:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/duapps/ad/a/a;->n:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, p2, v2, v3}, Lcom/duapps/ad/stats/b;->d(Landroid/content/Context;IIJ)V

    if-le p1, v7, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/a/a;->m:Landroid/os/Handler;

    const/4 v1, 0x2

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v0, v1, v2, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v6, p0, Lcom/duapps/ad/a/a;->c:Z

    const-string v0, "AdmobCacheManager"

    const-string v1, "Refresh result: DONE for geeen count"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_0

    iput-boolean v7, p0, Lcom/duapps/ad/a/a;->b:Z

    goto :goto_0
.end method

.method private a(Landroid/os/Message;I)V
    .locals 3

    new-instance v0, Lcom/duapps/ad/a/f;

    iget-object v1, p0, Lcom/duapps/ad/a/a;->f:Landroid/content/Context;

    iget v2, p0, Lcom/duapps/ad/a/a;->g:I

    invoke-direct {v0, v1, v2}, Lcom/duapps/ad/a/f;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/duapps/ad/a/d;

    invoke-direct {v1, p0, p2}, Lcom/duapps/ad/a/d;-><init>(Lcom/duapps/ad/a/a;I)V

    invoke-virtual {v0, v1}, Lcom/duapps/ad/a/f;->a(Lcom/duapps/ad/a/g;)V

    invoke-direct {p0, v0}, Lcom/duapps/ad/a/a;->c(Lcom/duapps/ad/a/f;)V

    iget-object v1, p0, Lcom/duapps/ad/a/a;->j:Lcom/google/android/gms/ads/c;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/c;->a(Lcom/google/android/gms/ads/a;)Lcom/google/android/gms/ads/c;

    move-result-object v0

    iget-object v1, p0, Lcom/duapps/ad/a/a;->k:Lcom/google/android/gms/ads/formats/e;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/e;->a()Lcom/google/android/gms/ads/formats/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/c;->a(Lcom/google/android/gms/ads/formats/c;)Lcom/google/android/gms/ads/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/c;->a()Lcom/google/android/gms/ads/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/duapps/ad/a/a;->c:Z

    const-string v1, "AdmobCacheManager"

    const-string v2, "AdmobCacheManager start refresh ad!"

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/ads/f;

    invoke-direct {v1}, Lcom/google/android/gms/ads/f;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/f;->a()Lcom/google/android/gms/ads/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/b;->a(Lcom/google/android/gms/ads/d;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duapps/ad/a/a;->n:J

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/duapps/ad/a/a;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/duapps/ad/a/a;->a(II)V

    return-void
.end method

.method private a(Lcom/duapps/ad/a/f;)V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/a/a;->j:Lcom/google/android/gms/ads/c;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/a/a;->j:Lcom/google/android/gms/ads/c;

    new-instance v1, Lcom/duapps/ad/a/b;

    invoke-direct {v1, p0, p1}, Lcom/duapps/ad/a/b;-><init>(Lcom/duapps/ad/a/a;Lcom/duapps/ad/a/f;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/c;->a(Lcom/google/android/gms/ads/formats/g;)Lcom/google/android/gms/ads/c;

    goto :goto_0
.end method

.method static synthetic b(Lcom/duapps/ad/a/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/a/a;->f:Landroid/content/Context;

    return-object v0
.end method

.method private b(Lcom/duapps/ad/a/f;)V
    .locals 2

    iget-object v0, p0, Lcom/duapps/ad/a/a;->j:Lcom/google/android/gms/ads/c;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/a/a;->j:Lcom/google/android/gms/ads/c;

    new-instance v1, Lcom/duapps/ad/a/c;

    invoke-direct {v1, p0, p1}, Lcom/duapps/ad/a/c;-><init>(Lcom/duapps/ad/a/a;Lcom/duapps/ad/a/f;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/c;->a(Lcom/google/android/gms/ads/formats/i;)Lcom/google/android/gms/ads/c;

    goto :goto_0
.end method

.method static synthetic c(Lcom/duapps/ad/a/a;)I
    .locals 1

    iget v0, p0, Lcom/duapps/ad/a/a;->g:I

    return v0
.end method

.method private c(Lcom/duapps/ad/a/f;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/ads/c;

    iget-object v1, p0, Lcom/duapps/ad/a/a;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/duapps/ad/a/a;->i:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/duapps/ad/a/a;->j:Lcom/google/android/gms/ads/c;

    invoke-direct {p0, p1}, Lcom/duapps/ad/a/a;->a(Lcom/duapps/ad/a/f;)V

    invoke-direct {p0, p1}, Lcom/duapps/ad/a/a;->b(Lcom/duapps/ad/a/f;)V

    return-void
.end method

.method static synthetic d(Lcom/duapps/ad/a/a;)Lcom/duapps/ad/d;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/a/a;->h:Lcom/duapps/ad/d;

    return-object v0
.end method

.method static synthetic e(Lcom/duapps/ad/a/a;)Lcom/duapps/ad/d;
    .locals 1

    iget-object v0, p0, Lcom/duapps/ad/a/a;->h:Lcom/duapps/ad/d;

    return-object v0
.end method

.method private e()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/formats/e;

    invoke-direct {v0}, Lcom/google/android/gms/ads/formats/e;-><init>()V

    iput-object v0, p0, Lcom/duapps/ad/a/a;->k:Lcom/google/android/gms/ads/formats/e;

    iget-object v0, p0, Lcom/duapps/ad/a/a;->k:Lcom/google/android/gms/ads/formats/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/e;->a(Z)Lcom/google/android/gms/ads/formats/e;

    iget-object v0, p0, Lcom/duapps/ad/a/a;->k:Lcom/google/android/gms/ads/formats/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/e;->a(I)Lcom/google/android/gms/ads/formats/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "AdmobCacheManager"

    const-string v1, "refresh request....!"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duapps/ad/a/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/ap;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AdmobCacheManager"

    const-string v1, "No Network!"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duapps/ad/a/a;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AdmobCacheManager"

    const-string v1, "amid is not legal!"

    invoke-static {v0, v1}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/duapps/ad/a/a;->m:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    if-gez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/duapps/ad/a/a;->l:I

    iget-object v0, p0, Lcom/duapps/ad/a/a;->f:Landroid/content/Context;

    iget v1, p0, Lcom/duapps/ad/a/a;->g:I

    invoke-static {v0, v1}, Lcom/duapps/ad/base/r;->d(Landroid/content/Context;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/duapps/ad/a/a;->d:J

    goto :goto_0
.end method

.method public b()Lcom/duapps/ad/entity/a/c;
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/duapps/ad/a/a;->a:Ljava/util/List;

    monitor-enter v2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/duapps/ad/a/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/duapps/ad/a/a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/a/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/duapps/ad/a/f;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    move-object v1, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/duapps/ad/a/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/duapps/ad/base/r;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/duapps/ad/a/a;->a()V

    :cond_2
    iget-object v2, p0, Lcom/duapps/ad/a/a;->f:Landroid/content/Context;

    if-nez v1, :cond_3

    const-string v0, "FAIL"

    :goto_0
    iget v3, p0, Lcom/duapps/ad/a/a;->g:I

    invoke-static {v2, v0, v3}, Lcom/duapps/ad/stats/b;->e(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    const-string v0, "OK"

    goto :goto_0
.end method

.method public c()I
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/duapps/ad/a/a;->a:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/duapps/ad/a/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duapps/ad/a/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/duapps/ad/a/f;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "AdmobCacheManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/duapps/ad/a/a;->b()Lcom/duapps/ad/entity/a/c;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/duapps/ad/a/a;->m:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v2, p0, Lcom/duapps/ad/a/a;->c:Z

    if-eqz v2, :cond_0

    const-string v1, "AdmobCacheManager"

    const-string v2, "Refresh request failed: already refreshing"

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/duapps/ad/a/a;->c:Z

    iput-boolean v0, p0, Lcom/duapps/ad/a/a;->e:Z

    iget v2, p0, Lcom/duapps/ad/a/a;->l:I

    invoke-virtual {p0}, Lcom/duapps/ad/a/a;->c()I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_1

    iget-object v3, p0, Lcom/duapps/ad/a/a;->m:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    const-string v2, "AdmobCacheManager"

    const-string v3, "Refresh request OK: green is full"

    invoke-static {v2, v3}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/duapps/ad/a/a;->c:Z

    goto :goto_0

    :cond_2
    if-ne v2, v4, :cond_4

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-lez v2, :cond_3

    invoke-direct {p0, p1, v2}, Lcom/duapps/ad/a/a;->a(Landroid/os/Message;I)V

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/duapps/ad/a/a;->c:Z

    const-string v1, "AdmobCacheManager"

    const-string v2, "Refresh result: DONE for geeen count"

    invoke-static {v1, v2}, Lcom/duapps/ad/base/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method
