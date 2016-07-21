.class public Lcom/google/android/gms/internal/xz;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/yd",
            "<",
            "Lcom/google/android/gms/internal/yl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/yq;

.field private final d:Lcom/google/android/gms/internal/te;

.field private e:Ljava/lang/String;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/za;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/yq;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/yq;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/tf;->d()Lcom/google/android/gms/internal/te;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/xz;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/yq;Lcom/google/android/gms/internal/te;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/yq;Lcom/google/android/gms/internal/te;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/za;",
            ">;",
            "Lcom/google/android/gms/internal/yq;",
            "Lcom/google/android/gms/internal/te;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/xz;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/xz;->a:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/xz;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/xz;->d:Lcom/google/android/gms/internal/te;

    iput-object p3, p0, Lcom/google/android/gms/internal/xz;->c:Lcom/google/android/gms/internal/yq;

    iput-object p2, p0, Lcom/google/android/gms/internal/xz;->f:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/xz;)Lcom/google/android/gms/internal/yq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/xz;->c:Lcom/google/android/gms/internal/yq;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/internal/yh;Lcom/google/android/gms/internal/yb;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/yh;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/bn;->b(Z)V

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xx;

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/xz;->a(Lcom/google/android/gms/internal/xx;Lcom/google/android/gms/internal/yb;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/google/android/gms/internal/xx;Lcom/google/android/gms/internal/yb;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/xz;->c:Lcom/google/android/gms/internal/yq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xx;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/xx;->b()Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/yf;->a:Lcom/google/android/gms/internal/ye;

    new-instance v4, Lcom/google/android/gms/internal/ya;

    invoke-direct {v4, p0, p1, p2}, Lcom/google/android/gms/internal/ya;-><init>(Lcom/google/android/gms/internal/xz;Lcom/google/android/gms/internal/xx;Lcom/google/android/gms/internal/yb;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/yq;->a(Ljava/lang/String;Ljava/lang/Integer;Lcom/google/android/gms/internal/ye;Lcom/google/android/gms/internal/yp;)V

    return-void
.end method

.method a(Lcom/google/android/gms/internal/yh;Lcom/google/android/gms/internal/yb;Lcom/google/android/gms/internal/zzqx;)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/yh;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/xx;

    iget-object v1, p0, Lcom/google/android/gms/internal/xz;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xx;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/yd;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/yd;->a()J

    move-result-wide v0

    :goto_1
    const-wide/32 v4, 0xdbba0

    add-long/2addr v0, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/xz;->d:Lcom/google/android/gms/internal/te;

    invoke-interface {v4}, Lcom/google/android/gms/internal/te;->a()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gez v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/xz;->c:Lcom/google/android/gms/internal/yq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/yq;->a(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/xz;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/yh;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/za;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/xz;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/za;

    invoke-direct {v0}, Lcom/google/android/gms/internal/za;-><init>()V

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/xz;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/yh;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/xz;->b:Landroid/content/Context;

    const-wide/16 v4, 0x0

    move-object v3, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/za;->a(Landroid/content/Context;Lcom/google/android/gms/internal/yh;JLcom/google/android/gms/internal/zzqx;)V

    :goto_5
    return-void

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/za;

    iget-object v1, p0, Lcom/google/android/gms/internal/xz;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/za;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/xz;->a(Lcom/google/android/gms/internal/yh;Lcom/google/android/gms/internal/yb;)V

    goto :goto_5

    :cond_4
    move-object v1, v0

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method a(Lcom/google/android/gms/internal/zzqo$zza;)V
    .locals 8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqo$zza;->d()Lcom/google/android/gms/internal/xx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/xx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqo$zza;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzqo$zza;->e()Lcom/google/android/gms/internal/yl;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/xz;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/xz;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/yd;

    iget-object v3, p0, Lcom/google/android/gms/internal/xz;->d:Lcom/google/android/gms/internal/te;

    invoke-interface {v3}, Lcom/google/android/gms/internal/te;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/yd;->a(J)V

    sget-object v3, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    if-ne v1, v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/yd;->a(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/yd;->a(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/xz;->a:Ljava/util/Map;

    new-instance v4, Lcom/google/android/gms/internal/yd;

    iget-object v5, p0, Lcom/google/android/gms/internal/xz;->d:Lcom/google/android/gms/internal/te;

    invoke-interface {v5}, Lcom/google/android/gms/internal/te;->a()J

    move-result-wide v6

    invoke-direct {v4, v1, v2, v6, v7}, Lcom/google/android/gms/internal/yd;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;J)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xz;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/android/gms/internal/yb;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/yh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/yh;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/xx;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/google/android/gms/internal/xx;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/yh;->a(Lcom/google/android/gms/internal/xx;)Lcom/google/android/gms/internal/yh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/yc;

    sget-object v2, Lcom/google/android/gms/internal/yf;->a:Lcom/google/android/gms/internal/ye;

    invoke-direct {v1, p0, v0, v2, p4}, Lcom/google/android/gms/internal/yc;-><init>(Lcom/google/android/gms/internal/xz;Lcom/google/android/gms/internal/yh;Lcom/google/android/gms/internal/ye;Lcom/google/android/gms/internal/yb;)V

    invoke-virtual {p0, v0, p4, v1}, Lcom/google/android/gms/internal/xz;->a(Lcom/google/android/gms/internal/yh;Lcom/google/android/gms/internal/yb;Lcom/google/android/gms/internal/zzqx;)V

    return-void
.end method
