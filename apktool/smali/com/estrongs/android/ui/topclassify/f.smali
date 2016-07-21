.class public Lcom/estrongs/android/ui/topclassify/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/estrongs/android/scanner/h;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/estrongs/android/ui/topclassify/l;

.field private e:Z

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/estrongs/android/ui/topclassify/k;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/estrongs/android/ui/topclassify/g;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/topclassify/g;-><init>(Lcom/estrongs/android/ui/topclassify/f;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/topclassify/f;->g:Landroid/os/Handler;

    iput-object p1, p0, Lcom/estrongs/android/ui/topclassify/f;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/ui/topclassify/f;->c()V

    new-instance v0, Lcom/estrongs/android/ui/topclassify/h;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/topclassify/h;-><init>(Lcom/estrongs/android/ui/topclassify/f;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/topclassify/f;->a:Lcom/estrongs/android/scanner/h;

    sget-boolean v0, Lcom/estrongs/android/pop/FexApplication;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/scanner/a;->a()Lcom/estrongs/android/scanner/a;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/topclassify/f;->a:Lcom/estrongs/android/scanner/h;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/a;->a(Lcom/estrongs/android/scanner/h;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/topclassify/i;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/topclassify/i;-><init>(Lcom/estrongs/android/ui/topclassify/f;)V

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/d;->a(Lcom/estrongs/android/pop/app/b/h;)V

    goto :goto_0
.end method

.method private a(J)I
    .locals 9

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->b(I)Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-wide v2, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gtz v5, :cond_0

    iget-wide v2, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    :cond_0
    cmp-long v0, v2, p1

    if-ltz v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private a(I)J
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/ad;->f(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf731400

    sub-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/topclassify/f;I)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/topclassify/f;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/topclassify/f;)Lcom/estrongs/android/ui/topclassify/l;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/f;->d:Lcom/estrongs/android/ui/topclassify/l;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/topclassify/f;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/topclassify/f;->f:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/topclassify/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/topclassify/f;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/topclassify/f;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/f;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/topclassify/f;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/f;->b:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/topclassify/f;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/f;->c:Ljava/util/List;

    const/16 v1, 0x4ec5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/f;->c:Ljava/util/List;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/f;->c:Ljava/util/List;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/f;->c:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/f;->c:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/f;->c:Ljava/util/List;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/f;->c:Ljava/util/List;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/ui/topclassify/f;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/topclassify/f;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/scanner/a;->a()Lcom/estrongs/android/scanner/a;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/topclassify/f;->a:Lcom/estrongs/android/scanner/h;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/a;->b(Lcom/estrongs/android/scanner/h;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/topclassify/l;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/topclassify/f;->d:Lcom/estrongs/android/ui/topclassify/l;

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/topclassify/f;->e:Z

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/topclassify/f;->a(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/topclassify/f;->a(J)I

    move-result v0

    new-instance v1, Lcom/estrongs/android/ui/topclassify/j;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/ui/topclassify/j;-><init>(Lcom/estrongs/android/ui/topclassify/f;I)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/topclassify/j;->start()V

    return-void
.end method
