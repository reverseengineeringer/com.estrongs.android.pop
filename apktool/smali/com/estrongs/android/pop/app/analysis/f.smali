.class public Lcom/estrongs/android/pop/app/analysis/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/pop/app/analysis/j;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/text/SimpleDateFormat;

.field private f:Landroid/os/Handler;

.field private g:Landroid/os/HandlerThread;

.field private h:Lcom/estrongs/android/pop/app/analysis/y;

.field private i:[Ljava/lang/String;

.field private j:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/android/pop/app/analysis/y;Lcom/estrongs/android/pop/app/analysis/j;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->e:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "redundancy"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "appcatalog"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apprelationfile"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duplicate"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "internal_storage"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "largefile"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->i:[Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/pop/app/analysis/i;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/analysis/i;-><init>(Lcom/estrongs/android/pop/app/analysis/f;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->j:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/f;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/f;->h:Lcom/estrongs/android/pop/app/analysis/y;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/analysis/f;->a:Lcom/estrongs/android/pop/app/analysis/j;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "analysis"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->g:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/f;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->f:Landroid/os/Handler;

    return-void
.end method

.method private a()Lcom/estrongs/android/b/a/a;
    .locals 2

    new-instance v0, Lcom/estrongs/android/b/a/a;

    const-string v1, "ad"

    invoke-direct {v0, v1}, Lcom/estrongs/android/b/a/a;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/estrongs/android/b/a/a;->a(I)V

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/f;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/f;->c:Ljava/util/List;

    return-object p1
.end method

.method private a(Lcom/estrongs/android/b/a/a/a;Lcom/estrongs/fs/h;)V
    .locals 2

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/estrongs/android/b/a/a/a;->t:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/estrongs/android/b/a/a/a;->a(Lcom/estrongs/fs/h;)V

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/a;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appcatalog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/estrongs/android/b/a/a/a;->u:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/a;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "internal_storage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Lcom/estrongs/android/a/b/f;

    invoke-virtual {p2}, Lcom/estrongs/android/a/b/f;->b()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/estrongs/android/b/a/a/a;->y:J

    invoke-virtual {p2}, Lcom/estrongs/android/a/b/f;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/estrongs/android/b/a/a/a;->u:Ljava/lang/String;

    goto :goto_0

    :cond_1
    check-cast p2, Lcom/estrongs/android/a/b/f;

    invoke-virtual {p2}, Lcom/estrongs/android/a/b/f;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/estrongs/android/b/a/a/a;->u:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/estrongs/android/a/b/f;->length()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/estrongs/android/b/a/a/a;->y:J

    goto :goto_0
.end method

.method private a(Lcom/estrongs/android/b/a/a;)V
    .locals 5

    const/4 v3, 0x1

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/f;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/c;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/k;->a()Lorg/json/JSONObject;

    move-result-object v2

    check-cast p1, Lcom/estrongs/android/b/a/a/a;

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/a;->a()Lcom/estrongs/android/pop/app/analysis/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/analysis/a;->f()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/estrongs/android/b/a/a/a;->d(Z)V

    invoke-virtual {p1, v3}, Lcom/estrongs/android/b/a/a/a;->b(Z)V

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/c;->e()I

    move-result v1

    iput v1, p1, Lcom/estrongs/android/b/a/a/a;->A:I

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/c;->f()I

    move-result v1

    iput v1, p1, Lcom/estrongs/android/b/a/a/a;->B:I

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/c;->i()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v3}, Lcom/estrongs/android/b/a/a/a;->c(Z)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/estrongs/android/pop/app/analysis/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/estrongs/android/pop/app/analysis/n;

    move-result-object v3

    invoke-static {v2, v1}, Lcom/estrongs/android/pop/app/analysis/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/estrongs/android/pop/app/analysis/n;

    move-result-object v2

    iget-object v4, v3, Lcom/estrongs/android/pop/app/analysis/n;->a:Ljava/lang/String;

    iput-object v4, p1, Lcom/estrongs/android/b/a/a/a;->t:Ljava/lang/String;

    iput-object v0, p1, Lcom/estrongs/android/b/a/a/a;->u:Ljava/lang/String;

    iget v0, v3, Lcom/estrongs/android/pop/app/analysis/n;->f:I

    iput v0, p1, Lcom/estrongs/android/b/a/a/a;->s:I

    iget-object v0, v2, Lcom/estrongs/android/pop/app/analysis/n;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/estrongs/android/b/a/a/a;->w:Ljava/lang/String;

    iget v0, v2, Lcom/estrongs/android/pop/app/analysis/n;->f:I

    iput v0, p1, Lcom/estrongs/android/b/a/a/a;->v:I

    iput-object v1, p1, Lcom/estrongs/android/b/a/a/a;->x:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/estrongs/android/pop/app/analysis/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/estrongs/android/pop/app/analysis/n;

    move-result-object v1

    iget-object v2, v1, Lcom/estrongs/android/pop/app/analysis/n;->a:Ljava/lang/String;

    iput-object v2, p1, Lcom/estrongs/android/b/a/a/a;->t:Ljava/lang/String;

    iput-object v0, p1, Lcom/estrongs/android/b/a/a/a;->u:Ljava/lang/String;

    iget v0, v1, Lcom/estrongs/android/pop/app/analysis/n;->f:I

    iput v0, p1, Lcom/estrongs/android/b/a/a/a;->s:I

    goto :goto_0
.end method

.method private a(Lcom/estrongs/android/b/a/a;Lcom/estrongs/android/a/b/a;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/b/a/a/a;

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/estrongs/android/pop/app/analysis/a;->a(Ljava/lang/String;Lcom/estrongs/android/a/b/a;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v4, :cond_1

    :cond_0
    invoke-virtual {v0, v4}, Lcom/estrongs/android/b/a/a/a;->c(Z)V

    :goto_0
    invoke-virtual {v0, v4}, Lcom/estrongs/android/b/a/a/a;->b(Z)V

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/h;

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/f;->a(Lcom/estrongs/android/b/a/a/a;Lcom/estrongs/fs/h;)V

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/h;

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/f;->b(Lcom/estrongs/android/b/a/a/a;Lcom/estrongs/fs/h;)V

    :goto_1
    invoke-virtual {v0, v5}, Lcom/estrongs/android/b/a/a/a;->c(Z)V

    goto :goto_0

    :cond_2
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/fs/h;

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/f;->a(Lcom/estrongs/android/b/a/a/a;Lcom/estrongs/fs/h;)V

    goto :goto_1
.end method

.method private a(Lcom/estrongs/android/b/a/a;Lcom/estrongs/android/a/b/a;Z)V
    .locals 4

    if-nez p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/estrongs/android/b/a/a;->c(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Lcom/estrongs/android/a/b/c;

    const-string v0, "size"

    invoke-virtual {p2}, Lcom/estrongs/android/a/b/c;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/estrongs/android/b/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "number"

    invoke-virtual {p2}, Lcom/estrongs/android/a/b/c;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/estrongs/android/b/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "cache"

    invoke-virtual {p2}, Lcom/estrongs/android/a/b/c;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/estrongs/android/b/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "memory"

    invoke-virtual {p2}, Lcom/estrongs/android/a/b/c;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/estrongs/android/b/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/estrongs/android/b/a/a;->c(Z)V

    invoke-virtual {p1, p3}, Lcom/estrongs/android/b/a/a;->b(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "size"

    invoke-virtual {p2}, Lcom/estrongs/android/a/b/a;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/estrongs/android/b/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "number"

    invoke-virtual {p2}, Lcom/estrongs/android/a/b/a;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/estrongs/android/b/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private a(Lcom/estrongs/android/b/a/a;Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/b/a/a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/a/b/a;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/l;->d(Ljava/lang/String;)V

    :cond_0
    instance-of v0, p1, Lcom/estrongs/android/b/a/a/b;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/pop/app/analysis/f;->b(Lcom/estrongs/android/b/a/a;Ljava/util/Map;Z)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    instance-of v0, p1, Lcom/estrongs/android/b/a/a/d;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pandect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/estrongs/android/b/a/a;->b(Z)V

    :cond_4
    invoke-static {}, Lcom/estrongs/android/b/a/f;->a()Lcom/estrongs/android/b/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/b/a/f;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/a/b;->g(Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/estrongs/android/pop/app/analysis/f;->a(Lcom/estrongs/android/b/a/a;Lcom/estrongs/android/a/b/a;Z)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b;->d()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/estrongs/android/pop/app/analysis/f;->c(Lcom/estrongs/android/b/a/a;Ljava/util/Map;Z)V

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_1

    add-int/lit8 v0, v1, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v1, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/estrongs/android/b/a/a;
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/estrongs/android/b/a/f;->a()Lcom/estrongs/android/b/a/f;

    move-result-object v0

    const-string v2, "analysis-sd-card"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/b/a/e;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/e;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "recommend"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/f;->b(Lcom/estrongs/android/b/a/a;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/estrongs/android/b/a/a;->a(I)V

    :goto_2
    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/estrongs/android/b/a/f;->a()Lcom/estrongs/android/b/a/f;

    move-result-object v0

    const-string v2, "analysis-app-card"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/b/a/e;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/analysis/f;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->c:Ljava/util/List;

    return-object v0
.end method

.method private b(Ljava/util/List;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;)",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->h:Lcom/estrongs/android/pop/app/analysis/y;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->h:Lcom/estrongs/android/pop/app/analysis/y;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/analysis/y;->a(Ljava/util/List;)Ljava/util/List;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/f;->a()Lcom/estrongs/android/b/a/a;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/f;->a()Lcom/estrongs/android/b/a/a;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/f;->b(Ljava/lang/String;)Lcom/estrongs/android/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/b/a/a;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/f;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lt v1, v3, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/f;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/f;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "A_sd_recom_show"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v1, "recommend_card"

    const-string v2, "A_sd_recom_show"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0

    :cond_3
    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/a;->a()Lcom/estrongs/android/pop/app/analysis/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/analysis/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/f;->c(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-gt v0, v3, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/f;->a()Lcom/estrongs/android/b/a/a;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/f;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_6
    :try_start_3
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/f;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "A_app_recom_show"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V

    const-string v1, "recommend_card"

    const-string v2, "A_app_recom_show"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private b(Lcom/estrongs/android/b/a/a/a;Lcom/estrongs/fs/h;)V
    .locals 2

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/estrongs/android/b/a/a/a;->w:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/estrongs/android/b/a/a/a;->b(Lcom/estrongs/fs/h;)V

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/a;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appcatalog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/estrongs/android/b/a/a/a;->x:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/a;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "internal_storage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Lcom/estrongs/android/a/b/f;

    invoke-virtual {p2}, Lcom/estrongs/android/a/b/f;->b()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/estrongs/android/b/a/a/a;->z:J

    invoke-virtual {p2}, Lcom/estrongs/android/a/b/f;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/estrongs/android/b/a/a/a;->x:Ljava/lang/String;

    goto :goto_0

    :cond_1
    check-cast p2, Lcom/estrongs/android/a/b/f;

    invoke-virtual {p2}, Lcom/estrongs/android/a/b/f;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/estrongs/android/b/a/a/a;->x:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/estrongs/android/a/b/f;->length()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/estrongs/android/b/a/a/a;->z:J

    goto :goto_0
.end method

.method private b(Lcom/estrongs/android/b/a/a;Ljava/util/Map;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/b/a/a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/a/b/a;",
            ">;Z)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    check-cast p1, Lcom/estrongs/android/b/a/a/b;

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/b;->m()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/a;

    if-nez v0, :cond_1

    invoke-virtual {p1, v7}, Lcom/estrongs/android/b/a/a/b;->c(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v7}, Lcom/estrongs/android/b/a/a/b;->b(Z)V

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/b;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/b;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1, v7}, Lcom/estrongs/android/b/a/a/b;->c(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/estrongs/android/a/b/a;->d()I

    move-result v1

    iput v1, p1, Lcom/estrongs/android/b/a/a/b;->s:I

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/a;->b()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/estrongs/android/b/a/a/b;->t:J

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/a;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_4

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/estrongs/android/b/a/a/b;->u:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a/b;->m()Ljava/lang/String;

    move-result-object v0

    const-string v2, "newcreate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/f;->e:Ljava/text/SimpleDateFormat;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->createdTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/estrongs/android/b/a/a/b;->v:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/f;->e:Ljava/text/SimpleDateFormat;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->createdTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/estrongs/android/b/a/a/b;->y:Ljava/lang/String;

    :goto_1
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-virtual {p1, v0}, Lcom/estrongs/android/b/a/a/b;->a(Lcom/estrongs/fs/h;)V

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/estrongs/android/b/a/a/b;->w:J

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/estrongs/android/b/a/a/b;->x:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/estrongs/android/b/a/a/b;->z:J

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-virtual {p1, v0}, Lcom/estrongs/android/b/a/a/b;->b(Lcom/estrongs/fs/h;)V

    :goto_2
    invoke-virtual {p1, v6}, Lcom/estrongs/android/b/a/a/b;->c(Z)V

    goto/16 :goto_0

    :cond_3
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/estrongs/android/b/a/a/b;->v:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/estrongs/android/b/a/a/b;->y:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/estrongs/android/b/a/a/b;->u:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/estrongs/android/b/a/a/b;->v:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/estrongs/android/b/a/a/b;->w:J

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-virtual {p1, v0}, Lcom/estrongs/android/b/a/a/b;->a(Lcom/estrongs/fs/h;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/estrongs/android/b/a/a/b;->b(Lcom/estrongs/fs/h;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v7}, Lcom/estrongs/android/b/a/a/b;->c(Z)V

    goto/16 :goto_0
.end method

.method private b(Lcom/estrongs/android/b/a/a;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/estrongs/android/b/a/p;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/estrongs/android/b/a/p;

    const-string v0, "key"

    invoke-virtual {p1, v0}, Lcom/estrongs/android/b/a/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/estrongs/android/b/a/a;Ljava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/b/a/a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/a/b/a;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/estrongs/android/b/a/a;->c(Z)V

    :goto_0
    return-void

    :cond_1
    const-string v1, "img"

    const-string v0, "pic://"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/a;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/estrongs/android/b/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "video"

    const-string v0, "video://"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/a;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/estrongs/android/b/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "audio"

    const-string v0, "music://"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/a;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/estrongs/android/b/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "doc"

    const-string v0, "book://"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/a;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/estrongs/android/b/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "apk"

    const-string v0, "apk://"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/a;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/estrongs/android/b/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "other"

    const-string v0, "file://"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/a;

    invoke-virtual {v0}, Lcom/estrongs/android/a/b/a;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/estrongs/android/b/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/estrongs/android/b/a/a;->c(Z)V

    invoke-virtual {p1, p3}, Lcom/estrongs/android/b/a/a;->b(Z)V

    goto/16 :goto_0
.end method

.method private c(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/f;->i:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->m()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/b/a/a;->d(Z)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->f:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/g;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/app/analysis/g;-><init>(Lcom/estrongs/android/pop/app/analysis/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected declared-synchronized a(Ljava/util/Map;ZLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/a/b/a;",
            ">;Z",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/b/a/a;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->V(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->Z(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ae(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->X(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    invoke-direct {p0, v0, p1, p2}, Lcom/estrongs/android/pop/app/analysis/f;->a(Lcom/estrongs/android/b/a/a;Ljava/util/Map;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/a/b;->e()Lcom/estrongs/android/a/b/a;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    instance-of v3, v0, Lcom/estrongs/android/b/a/a/a;

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->m()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sensitive_permission"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/f;->a(Lcom/estrongs/android/b/a/a;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/analysis/f;->a(Lcom/estrongs/android/b/a/a;Lcom/estrongs/android/a/b/a;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->l()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pandect"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/estrongs/android/a/b;->a()Lcom/estrongs/android/a/b;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/f;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/a/b/a;

    move-result-object v3

    invoke-direct {p0, v0, v3, p2}, Lcom/estrongs/android/pop/app/analysis/f;->a(Lcom/estrongs/android/b/a/a;Lcom/estrongs/android/a/b/a;Z)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, p3}, Lcom/estrongs/android/pop/app/analysis/f;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/f;->a:Lcom/estrongs/android/pop/app/analysis/j;

    invoke-direct {p0, p3}, Lcom/estrongs/android/pop/app/analysis/f;->b(Ljava/util/List;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/f;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/pop/app/analysis/j;->a(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method
