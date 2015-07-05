.class public Lcom/estrongs/android/ui/c/b/l;
.super Lcom/estrongs/android/ui/c/b/a;


# static fields
.field static i:Lcom/estrongs/android/ui/c/b/s;

.field static j:Ljava/lang/Object;


# instance fields
.field private k:Landroid/os/Handler;

.field private l:Landroid/view/animation/Interpolator;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/estrongs/android/ui/c/b/q;

.field private o:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/c/b/l;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/widget/LinearLayout;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/ui/c/b/a;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/widget/LinearLayout;Z)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/l;->m:Ljava/util/List;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/l;->n:Lcom/estrongs/android/ui/c/b/q;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/l;->o:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/b/l;Lcom/estrongs/android/ui/c/b/q;)Lcom/estrongs/android/ui/c/b/q;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/b/l;->n:Lcom/estrongs/android/ui/c/b/q;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Lcom/estrongs/android/ui/c/b/s;
    .locals 6

    const-wide/16 v4, 0x0

    sget-object v1, Lcom/estrongs/android/ui/c/b/l;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/ui/c/b/l;->i:Lcom/estrongs/android/ui/c/b/s;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/c/b/l;->i:Lcom/estrongs/android/ui/c/b/s;

    iget-wide v2, v0, Lcom/estrongs/android/ui/c/b/s;->c:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/c/b/l;->i:Lcom/estrongs/android/ui/c/b/s;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_2
    new-instance v0, Lcom/estrongs/android/ui/c/b/s;

    invoke-direct {v0}, Lcom/estrongs/android/ui/c/b/s;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/c/b/l;->i:Lcom/estrongs/android/ui/c/b/s;

    sget-object v0, Lcom/estrongs/android/ui/c/b/l;->i:Lcom/estrongs/android/ui/c/b/s;

    iput-object p0, v0, Lcom/estrongs/android/ui/c/b/s;->a:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/util/ak;->b()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :try_start_3
    sget-object v0, Lcom/estrongs/android/ui/c/b/l;->i:Lcom/estrongs/android/ui/c/b/s;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/b/s;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/j/b;->k(Ljava/lang/String;)[J

    move-result-object v0

    sget-object v2, Lcom/estrongs/android/ui/c/b/l;->i:Lcom/estrongs/android/ui/c/b/s;

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    iput-wide v4, v2, Lcom/estrongs/android/ui/c/b/s;->b:J

    sget-object v2, Lcom/estrongs/android/ui/c/b/l;->i:Lcom/estrongs/android/ui/c/b/s;

    const/4 v3, 0x0

    aget-wide v4, v0, v3

    iput-wide v4, v2, Lcom/estrongs/android/ui/c/b/s;->c:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    sget-object v0, Lcom/estrongs/android/ui/c/b/l;->i:Lcom/estrongs/android/ui/c/b/s;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/estrongs/android/ui/c/b/l;->i:Lcom/estrongs/android/ui/c/b/s;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/estrongs/android/ui/c/b/s;->b:J

    sget-object v0, Lcom/estrongs/android/ui/c/b/l;->i:Lcom/estrongs/android/ui/c/b/s;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/estrongs/android/ui/c/b/s;->c:J

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/estrongs/android/ui/c/b/l;->i:Lcom/estrongs/android/ui/c/b/s;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/estrongs/android/ui/c/b/s;->b:J

    sget-object v0, Lcom/estrongs/android/ui/c/b/l;->i:Lcom/estrongs/android/ui/c/b/s;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/estrongs/android/ui/c/b/s;->c:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/b/l;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/l;->m:Ljava/util/List;

    return-object v0
.end method

.method private a(Lcom/estrongs/android/ui/c/a/f;)V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f02019d

    invoke-static {}, Lcom/estrongs/android/ui/pcs/w;->f()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/estrongs/android/ui/c/a/f;->a(IZ)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f02019b

    invoke-virtual {p1, v0}, Lcom/estrongs/android/ui/c/a/f;->a(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f02019c

    invoke-static {}, Lcom/estrongs/android/ui/pcs/w;->f()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/estrongs/android/ui/c/a/f;->a(IZ)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/b/l;Lcom/estrongs/android/ui/c/b/s;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/c/b/l;->a(Lcom/estrongs/android/ui/c/b/s;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/b/l;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/c/b/l;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/estrongs/android/ui/c/b/s;)V
    .locals 6

    iget-object v0, p1, Lcom/estrongs/android/ui/c/b/s;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/l;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/c/a/f;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v2, p1, Lcom/estrongs/android/ui/c/b/s;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/estrongs/android/ui/c/b/l;->h:Z

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/ui/c/b/o;

    invoke-direct {v2, p0, p1, v0}, Lcom/estrongs/android/ui/c/b/o;-><init>(Lcom/estrongs/android/ui/c/b/l;Lcom/estrongs/android/ui/c/b/s;Lcom/estrongs/android/ui/c/a/f;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_1
    iget-wide v2, p1, Lcom/estrongs/android/ui/c/b/s;->b:J

    iget-wide v4, p1, Lcom/estrongs/android/ui/c/b/s;->c:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/estrongs/android/ui/c/a/f;->a(JJ)V

    goto :goto_0

    :cond_1
    iget-wide v2, p1, Lcom/estrongs/android/ui/c/b/s;->b:J

    iget-wide v4, p1, Lcom/estrongs/android/ui/c/b/s;->c:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/estrongs/android/ui/c/a/f;->b(JJ)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/c/b/l;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/l;->o:Ljava/lang/Object;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, 0x0

    new-instance v0, Lcom/estrongs/android/ui/c/a/f;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/l;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/c/a/f;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/f;->a(I)V

    invoke-static {p1}, Lcom/estrongs/android/pop/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/f;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v2, v3}, Lcom/estrongs/android/ui/c/a/f;->b(JJ)V

    new-instance v1, Lcom/estrongs/android/ui/c/b/n;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/c/b/n;-><init>(Lcom/estrongs/android/ui/c/b/l;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/a/f;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/c/a/f;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/l;->m:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/l;->m:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/l;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/c/b/l;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/c/b/l;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/c/b/l;)Lcom/estrongs/android/ui/c/b/q;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/l;->n:Lcom/estrongs/android/ui/c/b/q;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/l;->e:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/l;->e:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/l;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/l;->m:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/l;->m:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/l;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v0, v1

    :cond_1
    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/c/b/l;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/l;->l:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/c/b/l;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/l;->k:Landroid/os/Handler;

    return-object v0
.end method

.method public static m()Z
    .locals 4

    sget-object v0, Lcom/estrongs/android/ui/c/b/l;->i:Lcom/estrongs/android/ui/c/b/s;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/c/b/l;->i:Lcom/estrongs/android/ui/c/b/s;

    iget-wide v0, v0, Lcom/estrongs/android/ui/c/b/s;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/util/am;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private o()V
    .locals 3

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/l;->o:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/l;->n:Lcom/estrongs/android/ui/c/b/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/c/b/q;

    iget-object v2, p0, Lcom/estrongs/android/ui/c/b/l;->d:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcom/estrongs/android/ui/c/b/q;-><init>(Lcom/estrongs/android/ui/c/b/l;Ljava/util/List;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/l;->n:Lcom/estrongs/android/ui/c/b/q;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/l;->n:Lcom/estrongs/android/ui/c/b/q;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/c/b/q;->start()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private p()Lcom/estrongs/android/ui/c/a/f;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/l;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->az(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/b/l;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/c/a/f;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected b()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/l;->k:Landroid/os/Handler;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3f333333    # 0.7f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/l;->l:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/l;->o()V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/l;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    new-instance v1, Lcom/estrongs/android/ui/c/b/m;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/b/m;-><init>(Lcom/estrongs/android/ui/c/b/l;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/ui/c/b/t;)V

    return-void
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    const-string v0, "storage_device_block"

    return-object v0
.end method

.method protected g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/l;->m:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/l;->n()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/l;->m:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/b/l;->m:Ljava/util/List;

    return-object v0
.end method

.method protected h()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/b/l;->e:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/c/b/l;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/c/b/l;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected i()I
    .locals 1

    const v0, 0x7f030018

    return v0
.end method

.method protected j()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected k()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/ui/c/b/a;->l()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/l;->o()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/b/l;->p()Lcom/estrongs/android/ui/c/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/c/b/l;->a(Lcom/estrongs/android/ui/c/a/f;)V

    :cond_0
    return-void
.end method
