.class public Lcom/estrongs/android/pop/app/compress/bb;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/estrongs/io/archive/c;

.field private d:Landroid/os/HandlerThread;

.field private e:Ljava/lang/String;

.field private f:Lcom/estrongs/io/archive/i;

.field private g:Lcom/estrongs/io/a/a/a;

.field private h:Lcom/estrongs/android/pop/app/compress/cb;

.field private i:Lcom/estrongs/android/pop/app/compress/ba;

.field private j:Landroid/widget/ProgressBar;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/estrongs/android/pop/app/compress/br;

.field private q:Lcom/estrongs/android/ui/dialog/ci;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/estrongs/android/pop/app/compress/bb;->d:Landroid/os/HandlerThread;

    iput-object v3, p0, Lcom/estrongs/android/pop/app/compress/bb;->f:Lcom/estrongs/io/archive/i;

    iput-object v3, p0, Lcom/estrongs/android/pop/app/compress/bb;->h:Lcom/estrongs/android/pop/app/compress/cb;

    iput-object v3, p0, Lcom/estrongs/android/pop/app/compress/bb;->j:Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/estrongs/android/pop/app/compress/bb;->p:Lcom/estrongs/android/pop/app/compress/br;

    iput-object v3, p0, Lcom/estrongs/android/pop/app/compress/bb;->q:Lcom/estrongs/android/ui/dialog/ci;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bb;->b:Landroid/content/Context;

    new-instance v0, Lcom/estrongs/android/pop/app/compress/bc;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/bb;->b:Landroid/content/Context;

    const-string v4, ""

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/compress/bc;-><init>(Lcom/estrongs/android/pop/app/compress/bb;Landroid/content/Context;Lcom/estrongs/android/pop/app/compress/l;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->c:Lcom/estrongs/io/archive/c;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/bb;)Lcom/estrongs/android/ui/dialog/ci;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->q:Lcom/estrongs/android/ui/dialog/ci;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/bb;Lcom/estrongs/io/archive/i;)Lcom/estrongs/io/archive/i;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bb;->f:Lcom/estrongs/io/archive/i;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/bb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bb;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/compress/bb;)Lcom/estrongs/io/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->g:Lcom/estrongs/io/a/a/a;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/compress/bb;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/compress/bb;)Lcom/estrongs/android/pop/app/compress/cb;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->h:Lcom/estrongs/android/pop/app/compress/cb;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/compress/bb;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/compress/bb;->g()V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/compress/bb;)Lcom/estrongs/android/pop/app/compress/ba;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->i:Lcom/estrongs/android/pop/app/compress/ba;

    return-object v0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->c:Lcom/estrongs/io/archive/c;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/bb;->i:Lcom/estrongs/android/pop/app/compress/ba;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ba;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->c:Lcom/estrongs/io/archive/c;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/bb;->i:Lcom/estrongs/android/pop/app/compress/ba;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/ba;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/c;->d(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/pop/app/compress/bf;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/bb;->c:Lcom/estrongs/io/archive/c;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/bb;->i:Lcom/estrongs/android/pop/app/compress/ba;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/compress/ba;->c:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/estrongs/android/pop/app/compress/bf;-><init>(Lcom/estrongs/android/pop/app/compress/bb;Lcom/estrongs/io/archive/e;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->g:Lcom/estrongs/io/a/a/a;

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/compress/bb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->b:Landroid/content/Context;

    return-object v0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->h:Lcom/estrongs/android/pop/app/compress/cb;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/compress/bb;->a()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->h:Lcom/estrongs/android/pop/app/compress/cb;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/cb;->show()V

    return-void
.end method

.method private h()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/pop/app/compress/bp;

    const-string v1, "ArchiveExtract"

    const/4 v2, 0x5

    invoke-direct {v0, p0, v1, v2}, Lcom/estrongs/android/pop/app/compress/bp;-><init>(Lcom/estrongs/android/pop/app/compress/bb;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->d:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/compress/bb;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/compress/bb;->h()V

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/compress/bb;)Lcom/estrongs/io/archive/c;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->c:Lcom/estrongs/io/archive/c;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/compress/bb;)Lcom/estrongs/android/pop/app/compress/br;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->p:Lcom/estrongs/android/pop/app/compress/br;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/compress/bb;)Lcom/estrongs/io/archive/i;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->f:Lcom/estrongs/io/archive/i;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->h:Lcom/estrongs/android/pop/app/compress/cb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/compress/cb;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/bb;->b:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/compress/cb;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->h:Lcom/estrongs/android/pop/app/compress/cb;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->h:Lcom/estrongs/android/pop/app/compress/cb;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/bb;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080226

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/compress/bh;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/compress/bh;-><init>(Lcom/estrongs/android/pop/app/compress/bb;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/compress/cb;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->h:Lcom/estrongs/android/pop/app/compress/cb;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/bb;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080221

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/compress/bi;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/compress/bi;-><init>(Lcom/estrongs/android/pop/app/compress/bb;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/compress/cb;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->h:Lcom/estrongs/android/pop/app/compress/cb;

    new-instance v1, Lcom/estrongs/android/pop/app/compress/bj;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/compress/bj;-><init>(Lcom/estrongs/android/pop/app/compress/bb;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/compress/cb;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bb;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->c:Lcom/estrongs/io/archive/c;

    invoke-virtual {v0, p1}, Lcom/estrongs/io/archive/c;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method public a(Landroid/widget/ProgressBar;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bb;->j:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->c:Lcom/estrongs/io/archive/c;

    invoke-virtual {v0, p1}, Lcom/estrongs/io/archive/c;->a(Landroid/widget/ProgressBar;)V

    return-void
.end method

.method public a(Landroid/widget/TextView;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bb;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->c:Lcom/estrongs/io/archive/c;

    invoke-virtual {v0, p1}, Lcom/estrongs/io/archive/c;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/compress/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bb;->i:Lcom/estrongs/android/pop/app/compress/ba;

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/compress/br;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bb;->p:Lcom/estrongs/android/pop/app/compress/br;

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->q:Lcom/estrongs/android/ui/dialog/ci;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/d/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/bb;->b:Landroid/content/Context;

    new-instance v2, Lcom/estrongs/android/pop/app/compress/bd;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/compress/bd;-><init>(Lcom/estrongs/android/pop/app/compress/bb;)V

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/d/e;-><init>(Landroid/content/Context;Lcom/estrongs/android/d/h;Z)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->q:Lcom/estrongs/android/ui/dialog/ci;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->q:Lcom/estrongs/android/ui/dialog/ci;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/bb;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0803e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->q:Lcom/estrongs/android/ui/dialog/ci;

    new-instance v1, Lcom/estrongs/android/pop/app/compress/be;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/compress/be;-><init>(Lcom/estrongs/android/pop/app/compress/bb;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->q:Lcom/estrongs/android/ui/dialog/ci;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/bb;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08026c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->i:Lcom/estrongs/android/pop/app/compress/ba;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/ba;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/estrongs/android/view/ak;->a(Ljava/lang/String;Lcom/estrongs/android/pop/app/compress/bb;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/compress/bb;->f()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->i:Lcom/estrongs/android/pop/app/compress/ba;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/ba;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->i:Lcom/estrongs/android/pop/app/compress/ba;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/ba;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/app/compress/bk;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/compress/bk;-><init>(Lcom/estrongs/android/pop/app/compress/bb;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/compress/bb;->h()V

    goto :goto_0
.end method

.method public b(Landroid/widget/TextView;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bb;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->c:Lcom/estrongs/io/archive/c;

    invoke-virtual {v0, p1}, Lcom/estrongs/io/archive/c;->d(Landroid/widget/TextView;)V

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->c:Lcom/estrongs/io/archive/c;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/c;->a()I

    move-result v0

    return v0
.end method

.method public c(Landroid/widget/TextView;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bb;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->c:Lcom/estrongs/io/archive/c;

    invoke-virtual {v0, p1}, Lcom/estrongs/io/archive/c;->c(Landroid/widget/TextView;)V

    return-void
.end method

.method public d()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->d:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->g:Lcom/estrongs/io/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->g:Lcom/estrongs/io/a/a/a;

    invoke-virtual {v0}, Lcom/estrongs/io/a/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->g:Lcom/estrongs/io/a/a/a;

    invoke-virtual {v0}, Lcom/estrongs/io/a/a/a;->e()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->f:Lcom/estrongs/io/archive/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->f:Lcom/estrongs/io/archive/i;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->f:Lcom/estrongs/io/archive/i;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/i;->d()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->n:Landroid/widget/ImageView;

    const v1, 0x7f020417

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/bb;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->i:Lcom/estrongs/android/pop/app/compress/ba;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/ba;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->c(Ljava/lang/String;)V

    return-void
.end method

.method public d(Landroid/widget/TextView;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bb;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->c:Lcom/estrongs/io/archive/c;

    invoke-virtual {v0, p1}, Lcom/estrongs/io/archive/c;->b(Landroid/widget/TextView;)V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/bb;->p:Lcom/estrongs/android/pop/app/compress/br;

    return-void
.end method
