.class public Lcom/estrongs/android/pop/app/compress/bs;
.super Landroid/app/ProgressDialog;


# instance fields
.field a:Z

.field private b:Lcom/estrongs/io/archive/i;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/String;

.field private e:Lcom/estrongs/io/model/ArchiveEntryFile;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/estrongs/android/view/g;

.field private i:Landroid/content/Context;

.field private j:Lcom/estrongs/android/view/ak;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/view/ak;Landroid/content/Context;Landroid/os/Handler;Lcom/estrongs/io/archive/i;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/compress/bs;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/compress/bs;->g:Z

    iput-object p2, p0, Lcom/estrongs/android/pop/app/compress/bs;->i:Landroid/content/Context;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bs;->j:Lcom/estrongs/android/view/ak;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/compress/bs;->c:Landroid/os/Handler;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/compress/bs;->b:Lcom/estrongs/io/archive/i;

    const v0, 0x7f080728

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/compress/bs;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/compress/bs;->setProgressStyle(I)V

    const v0, 0x7f080221

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/compress/bu;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/compress/bu;-><init>(Lcom/estrongs/android/pop/app/compress/bs;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/compress/bs;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/view/g;Landroid/content/Context;Landroid/os/Handler;Lcom/estrongs/io/archive/i;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/compress/bs;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/compress/bs;->g:Z

    iput-object p2, p0, Lcom/estrongs/android/pop/app/compress/bs;->i:Landroid/content/Context;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bs;->h:Lcom/estrongs/android/view/g;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/compress/bs;->c:Landroid/os/Handler;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/compress/bs;->b:Lcom/estrongs/io/archive/i;

    const v0, 0x7f080728

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/compress/bs;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/compress/bs;->setProgressStyle(I)V

    const v0, 0x7f080221

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/compress/bt;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/compress/bt;-><init>(Lcom/estrongs/android/pop/app/compress/bs;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/compress/bs;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/bs;)Lcom/estrongs/io/archive/i;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bs;->b:Lcom/estrongs/io/archive/i;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/bs;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/compress/bs;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/compress/bs;)Lcom/estrongs/io/model/ArchiveEntryFile;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bs;->e:Lcom/estrongs/io/model/ArchiveEntryFile;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/compress/bs;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bs;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/compress/bs;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bs;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/compress/bs;)Lcom/estrongs/android/view/ak;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bs;->j:Lcom/estrongs/android/view/ak;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/compress/bs;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bs;->i:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/compress/bs;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/bs;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/estrongs/io/model/ArchiveEntryFile;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bs;->e:Lcom/estrongs/io/model/ArchiveEntryFile;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bs;->f:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/compress/bs;->g:Z

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/bs;->d:Ljava/lang/String;

    return-void
.end method

.method public onStart()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/pop/app/compress/bv;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/compress/bv;-><init>(Lcom/estrongs/android/pop/app/compress/bs;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/bv;->start()V

    return-void
.end method
