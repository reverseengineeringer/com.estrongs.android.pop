.class public Lcom/flurry/sdk/ii;
.super Lcom/flurry/sdk/ks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/ks",
        "<",
        "Lcom/flurry/sdk/ij;",
        ">;"
    }
.end annotation


# static fields
.field public static a:J

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/ii;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ii;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/flurry/sdk/ks;-><init>()V

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/ii;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ii;Lcom/flurry/sdk/ik;Lcom/flurry/sdk/ij;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ii;->b(Lcom/flurry/sdk/ik;Lcom/flurry/sdk/ij;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ii;Lcom/flurry/sdk/ik;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/kn;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/ik;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/kn;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ii;Lcom/flurry/sdk/ik;Lcom/flurry/sdk/ij;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/ik;Lcom/flurry/sdk/ij;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/flurry/sdk/ik;Lcom/flurry/sdk/ij;)V
    .locals 4

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ii;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/flurry/sdk/ij;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " report sent successfully to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/flurry/sdk/ij;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/im;->a()Lcom/flurry/sdk/im;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/im;->a(Lcom/flurry/sdk/ik;)V

    invoke-virtual {p0, p2}, Lcom/flurry/sdk/ii;->c(Lcom/flurry/sdk/kr;)V

    return-void
.end method

.method private a(Lcom/flurry/sdk/ik;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/kn;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ik;",
            "Lcom/flurry/sdk/ij;",
            "Lcom/flurry/sdk/kn",
            "<**>;)V"
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v0, 0x0

    const-string v1, "Location"

    invoke-virtual {p3, v1}, Lcom/flurry/sdk/kn;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/flurry/sdk/ij;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/ma;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/im;->a()Lcom/flurry/sdk/im;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/flurry/sdk/im;->a(Lcom/flurry/sdk/ik;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v2, Lcom/flurry/sdk/ii;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received redirect url. Retrying: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/ij;->c(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;)V

    const-string v0, "Location"

    invoke-virtual {p3, v0}, Lcom/flurry/sdk/kn;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/jq;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Lcom/flurry/sdk/jq;->a(Ljava/lang/Object;Lcom/flurry/sdk/lz;)V

    :goto_1
    return-void

    :cond_1
    sget-object v2, Lcom/flurry/sdk/ii;->b:Ljava/lang/String;

    const-string v3, "Received redirect url. Retrying: false"

    invoke-static {v5, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/ii;->c(Lcom/flurry/sdk/kr;)V

    goto :goto_1
.end method

.method private a(Lcom/flurry/sdk/ik;Lcom/flurry/sdk/ij;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/flurry/sdk/im;->a()Lcom/flurry/sdk/im;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/flurry/sdk/im;->b(Lcom/flurry/sdk/ik;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/ii;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed report retrying: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/flurry/sdk/ii;->d(Lcom/flurry/sdk/kr;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/ii;->c(Lcom/flurry/sdk/kr;)V

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/ii;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/sdk/ii;Lcom/flurry/sdk/ik;Lcom/flurry/sdk/ij;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/ik;Lcom/flurry/sdk/ij;)V

    return-void
.end method

.method private b(Lcom/flurry/sdk/ik;Lcom/flurry/sdk/ij;)V
    .locals 1

    invoke-static {}, Lcom/flurry/sdk/im;->a()Lcom/flurry/sdk/im;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/im;->b(Lcom/flurry/sdk/ik;)V

    invoke-virtual {p0, p2}, Lcom/flurry/sdk/ii;->c(Lcom/flurry/sdk/kr;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/flurry/sdk/jz;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/jz",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ij;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/flurry/sdk/jz;

    invoke-static {}, Lcom/flurry/sdk/js;->a()Lcom/flurry/sdk/js;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/js;->c()Landroid/content/Context;

    move-result-object v1

    const-string v2, ".yflurryanpulsecallbackreporter"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".yflurryanpulsecallbackreporter"

    const/4 v3, 0x2

    new-instance v4, Lcom/flurry/sdk/ii$1;

    invoke-direct {v4, p0}, Lcom/flurry/sdk/ii$1;-><init>(Lcom/flurry/sdk/ii;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/flurry/sdk/jz;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/le;)V

    return-object v0
.end method

.method protected a(Lcom/flurry/sdk/ij;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ii;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending next pulse report to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/ij;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/sdk/ij;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->d()J

    move-result-wide v2

    cmp-long v0, v2, v8

    if-nez v0, :cond_0

    sget-wide v2, Lcom/flurry/sdk/ii;->a:J

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/je;->a()Lcom/flurry/sdk/je;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->g()J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v4, v0, v2

    :cond_1
    invoke-virtual {p1}, Lcom/flurry/sdk/ij;->r()I

    move-result v6

    new-instance v0, Lcom/flurry/sdk/ik;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/ik;-><init>(Lcom/flurry/sdk/ij;JJI)V

    new-instance v3, Lcom/flurry/sdk/kn;

    invoke-direct {v3}, Lcom/flurry/sdk/kn;-><init>()V

    invoke-virtual {p1}, Lcom/flurry/sdk/ij;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;)V

    const v1, 0x186a0

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/kn;->d(I)V

    invoke-virtual {p1}, Lcom/flurry/sdk/ij;->f()Lcom/flurry/sdk/iq;

    move-result-object v1

    sget-object v2, Lcom/flurry/sdk/iq;->c:Lcom/flurry/sdk/iq;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/iq;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/flurry/sdk/kx;

    invoke-direct {v1}, Lcom/flurry/sdk/kx;-><init>()V

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/lb;)V

    invoke-virtual {p1}, Lcom/flurry/sdk/ij;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/flurry/sdk/ij;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/kn;->a(Ljava/lang/Object;)V

    :cond_2
    sget-object v1, Lcom/flurry/sdk/kp$a;->c:Lcom/flurry/sdk/kp$a;

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kp$a;)V

    :goto_0
    invoke-virtual {p1}, Lcom/flurry/sdk/ij;->j()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/kn;->a(I)V

    invoke-virtual {p1}, Lcom/flurry/sdk/ij;->k()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/kn;->b(I)V

    invoke-virtual {v3, v7}, Lcom/flurry/sdk/kn;->c(Z)V

    invoke-virtual {v3, v7}, Lcom/flurry/sdk/kn;->a(Z)V

    invoke-virtual {p1}, Lcom/flurry/sdk/ij;->j()I

    move-result v1

    invoke-virtual {p1}, Lcom/flurry/sdk/ij;->k()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/kn;->c(I)V

    invoke-virtual {p1}, Lcom/flurry/sdk/ij;->h()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/flurry/sdk/ij;->h()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lcom/flurry/sdk/kn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/flurry/sdk/kp$a;->b:Lcom/flurry/sdk/kp$a;

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kp$a;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/kn;->b(Z)V

    new-instance v1, Lcom/flurry/sdk/ii$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/flurry/sdk/ii$2;-><init>(Lcom/flurry/sdk/ii;Lcom/flurry/sdk/ij;Lcom/flurry/sdk/ik;)V

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/kn;->a(Lcom/flurry/sdk/kn$a;)V

    invoke-static {}, Lcom/flurry/sdk/jq;->a()Lcom/flurry/sdk/jq;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/flurry/sdk/jq;->a(Ljava/lang/Object;Lcom/flurry/sdk/lz;)V

    return-void
.end method

.method protected bridge synthetic a(Lcom/flurry/sdk/kr;)V
    .locals 0

    check-cast p1, Lcom/flurry/sdk/ij;

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ii;->a(Lcom/flurry/sdk/ij;)V

    return-void
.end method

.method protected declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ij;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/im;->a()Lcom/flurry/sdk/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/im;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ij;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/im;->a()Lcom/flurry/sdk/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/im;->e()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/ii;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from report queue."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/in;

    invoke-static {}, Lcom/flurry/sdk/im;->a()Lcom/flurry/sdk/im;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/flurry/sdk/im;->b(Lcom/flurry/sdk/in;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/flurry/sdk/im;->a()Lcom/flurry/sdk/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/im;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/in;

    invoke-virtual {v0}, Lcom/flurry/sdk/in;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ij;

    invoke-virtual {v0}, Lcom/flurry/sdk/ij;->n()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x3

    sget-object v4, Lcom/flurry/sdk/ii;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Callback for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/flurry/sdk/ij;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/flurry/sdk/ij;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not completed.  Adding to reporter queue."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
