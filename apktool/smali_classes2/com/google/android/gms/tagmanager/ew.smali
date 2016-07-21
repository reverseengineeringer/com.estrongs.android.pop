.class public Lcom/google/android/gms/tagmanager/ew;
.super Lcom/google/android/gms/common/api/ac;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/ac",
        "<",
        "Lcom/google/android/gms/tagmanager/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/te;

.field private final b:Lcom/google/android/gms/tagmanager/ez;

.field private final c:Landroid/os/Looper;

.field private final d:Lcom/google/android/gms/tagmanager/cg;

.field private final e:I

.field private final f:Landroid/content/Context;

.field private final g:Lcom/google/android/gms/tagmanager/q;

.field private final h:Ljava/lang/String;

.field private j:Lcom/google/android/gms/tagmanager/fb;

.field private k:Lcom/google/android/gms/internal/xz;

.field private volatile l:Lcom/google/android/gms/tagmanager/et;

.field private m:Lcom/google/android/gms/internal/l;

.field private n:Ljava/lang/String;

.field private o:Lcom/google/android/gms/tagmanager/fa;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/q;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/fb;Lcom/google/android/gms/tagmanager/fa;Lcom/google/android/gms/internal/xz;Lcom/google/android/gms/internal/te;Lcom/google/android/gms/tagmanager/cg;)V
    .locals 2

    if-nez p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/ac;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ew;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/ew;->g:Lcom/google/android/gms/tagmanager/q;

    if-nez p3, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/ew;->c:Landroid/os/Looper;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/ew;->h:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/tagmanager/ew;->e:I

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/ew;->j:Lcom/google/android/gms/tagmanager/fb;

    iput-object p7, p0, Lcom/google/android/gms/tagmanager/ew;->o:Lcom/google/android/gms/tagmanager/fa;

    iput-object p8, p0, Lcom/google/android/gms/tagmanager/ew;->k:Lcom/google/android/gms/internal/xz;

    new-instance v0, Lcom/google/android/gms/tagmanager/ez;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/tagmanager/ez;-><init>(Lcom/google/android/gms/tagmanager/ew;Lcom/google/android/gms/tagmanager/ex;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/ew;->b:Lcom/google/android/gms/tagmanager/ez;

    new-instance v0, Lcom/google/android/gms/internal/l;

    invoke-direct {v0}, Lcom/google/android/gms/internal/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/ew;->m:Lcom/google/android/gms/internal/l;

    iput-object p9, p0, Lcom/google/android/gms/tagmanager/ew;->a:Lcom/google/android/gms/internal/te;

    iput-object p10, p0, Lcom/google/android/gms/tagmanager/ew;->d:Lcom/google/android/gms/tagmanager/cg;

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/ew;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzcb;->a()Lcom/google/android/gms/tagmanager/zzcb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/ew;->b(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    move-object v0, p3

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/q;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/fe;)V
    .locals 14

    new-instance v13, Lcom/google/android/gms/tagmanager/cu;

    move-object/from16 v0, p4

    invoke-direct {v13, p1, v0}, Lcom/google/android/gms/tagmanager/cu;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v10, Lcom/google/android/gms/tagmanager/cp;

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    invoke-direct {v10, p1, v0, v1}, Lcom/google/android/gms/tagmanager/cp;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/fe;)V

    new-instance v11, Lcom/google/android/gms/internal/xz;

    invoke-direct {v11, p1}, Lcom/google/android/gms/internal/xz;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/tf;->d()Lcom/google/android/gms/internal/te;

    move-result-object v12

    new-instance v2, Lcom/google/android/gms/tagmanager/bf;

    const/16 v3, 0x1e

    const-wide/32 v4, 0xdbba0

    const-wide/16 v6, 0x1388

    const-string v8, "refreshing"

    invoke-static {}, Lcom/google/android/gms/internal/tf;->d()Lcom/google/android/gms/internal/te;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/tagmanager/bf;-><init>(IJJLjava/lang/String;Lcom/google/android/gms/internal/te;)V

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object v9, v13

    move-object v13, v2

    invoke-direct/range {v3 .. v13}, Lcom/google/android/gms/tagmanager/ew;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/q;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/fb;Lcom/google/android/gms/tagmanager/fa;Lcom/google/android/gms/internal/xz;Lcom/google/android/gms/internal/te;Lcom/google/android/gms/tagmanager/cg;)V

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ew;->k:Lcom/google/android/gms/internal/xz;

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/tagmanager/fe;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/xz;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/ew;Lcom/google/android/gms/tagmanager/et;)Lcom/google/android/gms/tagmanager/et;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ew;->l:Lcom/google/android/gms/tagmanager/et;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/ew;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ew;->h:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized a(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ew;->o:Lcom/google/android/gms/tagmanager/fa;

    if-nez v0, :cond_0

    const-string v0, "Refresh requested, but no network load scheduler."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bg;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ew;->o:Lcom/google/android/gms/tagmanager/fa;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ew;->m:Lcom/google/android/gms/internal/l;

    iget-object v1, v1, Lcom/google/android/gms/internal/l;->c:Ljava/lang/String;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/tagmanager/fa;->a(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/ew;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/ew;->a(J)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/tagmanager/ew;)Lcom/google/android/gms/tagmanager/q;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ew;->g:Lcom/google/android/gms/tagmanager/q;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/tagmanager/ew;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ew;->c:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/tagmanager/ew;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ew;->f:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/tagmanager/ew;)Lcom/google/android/gms/tagmanager/cg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ew;->d:Lcom/google/android/gms/tagmanager/cg;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/tagmanager/ew;)Lcom/google/android/gms/tagmanager/et;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ew;->l:Lcom/google/android/gms/tagmanager/et;

    return-object v0
.end method

.method private f()Z
    .locals 3

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzcb;->a()Lcom/google/android/gms/tagmanager/zzcb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcb;->b()Lcom/google/android/gms/tagmanager/zzcb$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/zzcb$zza;->zzaRd:Lcom/google/android/gms/tagmanager/zzcb$zza;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcb;->b()Lcom/google/android/gms/tagmanager/zzcb$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/zzcb$zza;->zzaRe:Lcom/google/android/gms/tagmanager/zzcb$zza;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ew;->h:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcb;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ew;->l:Lcom/google/android/gms/tagmanager/et;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ew;->l:Lcom/google/android/gms/tagmanager/et;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->d:Lcom/google/android/gms/common/api/Status;

    if-ne p1, v0, :cond_1

    const-string v0, "timer expired: setting result to failure"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bg;->a(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/google/android/gms/tagmanager/et;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/et;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/tagmanager/ew;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/tagmanager/ew;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ew;->k:Lcom/google/android/gms/internal/xz;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ew;->h:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/tagmanager/ex;

    invoke-direct {v3, p0, p1}, Lcom/google/android/gms/tagmanager/ex;-><init>(Lcom/google/android/gms/tagmanager/ew;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/google/android/gms/internal/xz;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/google/android/gms/internal/yb;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/z;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/ew;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/g;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ew;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ew;->o:Lcom/google/android/gms/tagmanager/fa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ew;->o:Lcom/google/android/gms/tagmanager/fa;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/fa;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized e()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ew;->n:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
