.class public Lcom/estrongs/android/pop/app/compress/ax;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/estrongs/io/archive/j;

.field private b:Landroid/content/Context;

.field private c:Lcom/estrongs/io/archive/c;

.field private d:Lcom/estrongs/android/pop/app/compress/ai;

.field private e:Lcom/estrongs/io/a/a/b;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/compress/ai;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->f:Z

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/ax;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/compress/ax;->d:Lcom/estrongs/android/pop/app/compress/ai;

    new-instance v0, Lcom/estrongs/io/archive/c;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ax;->b:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/estrongs/io/archive/c;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/compress/l;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->c:Lcom/estrongs/io/archive/c;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/android/pop/app/compress/ai;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->d:Lcom/estrongs/android/pop/app/compress/ai;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/ax;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/compress/ax;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/io/archive/c;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->c:Lcom/estrongs/io/archive/c;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/compress/ax;)Lcom/estrongs/io/a/a/b;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->e:Lcom/estrongs/io/a/a/b;

    return-object v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->c:Lcom/estrongs/io/archive/c;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ax;->d:Lcom/estrongs/android/pop/app/compress/ai;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ai;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->c:Lcom/estrongs/io/archive/c;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ax;->d:Lcom/estrongs/android/pop/app/compress/ai;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ai;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/c;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/io/a/a/b;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ax;->c:Lcom/estrongs/io/archive/c;

    invoke-direct {v0, v1}, Lcom/estrongs/io/a/a/b;-><init>(Lcom/estrongs/io/archive/e;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->e:Lcom/estrongs/io/a/a/b;

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/fs/h;
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ax;->d:Lcom/estrongs/android/pop/app/compress/ai;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ai;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/fs/impl/local/f;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    new-instance v0, Lcom/estrongs/fs/impl/d/a;

    invoke-direct {v0, v1}, Lcom/estrongs/fs/impl/d/a;-><init>(Lcom/estrongs/fs/h;)V

    return-object v0
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->c:Lcom/estrongs/io/archive/c;

    invoke-virtual {v0, p1}, Lcom/estrongs/io/archive/c;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method public a(Landroid/widget/ProgressBar;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->c:Lcom/estrongs/io/archive/c;

    invoke-virtual {v0, p1}, Lcom/estrongs/io/archive/c;->a(Landroid/widget/ProgressBar;)V

    return-void
.end method

.method public a(Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->c:Lcom/estrongs/io/archive/c;

    invoke-virtual {v0, p1}, Lcom/estrongs/io/archive/c;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method public b(Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->c:Lcom/estrongs/io/archive/c;

    invoke-virtual {v0, p1}, Lcom/estrongs/io/archive/c;->d(Landroid/widget/TextView;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->f:Z

    return v0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->f:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/compress/ax;->f()V

    new-instance v0, Lcom/estrongs/android/pop/app/compress/ay;

    const-string v1, "ArchiveCompress"

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/compress/ay;-><init>(Lcom/estrongs/android/pop/app/compress/ax;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/ay;->start()V

    return-void
.end method

.method public c(Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->c:Lcom/estrongs/io/archive/c;

    invoke-virtual {v0, p1}, Lcom/estrongs/io/archive/c;->c(Landroid/widget/TextView;)V

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->c:Lcom/estrongs/io/archive/c;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/c;->a()I

    move-result v0

    return v0
.end method

.method public d(Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->c:Lcom/estrongs/io/archive/c;

    invoke-virtual {v0, p1}, Lcom/estrongs/io/archive/c;->b(Landroid/widget/TextView;)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->e:Lcom/estrongs/io/a/a/b;

    invoke-virtual {v0}, Lcom/estrongs/io/a/a/b;->e()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->a:Lcom/estrongs/io/archive/j;

    instance-of v0, v0, Lcom/estrongs/io/archive/sevenzip/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->a:Lcom/estrongs/io/archive/j;

    check-cast v0, Lcom/estrongs/io/archive/sevenzip/x;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/sevenzip/x;->b()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ax;->d:Lcom/estrongs/android/pop/app/compress/ai;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/ai;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->d(Ljava/lang/String;)V

    return-void
.end method
