.class public Lcom/estrongs/android/pop/app/compress/aw;
.super Landroid/app/ProgressDialog;


# instance fields
.field a:Z

.field private b:Lcom/estrongs/io/archive/h;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/String;

.field private e:Lcom/estrongs/io/model/ArchiveEntryFile;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/estrongs/android/view/e;

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/view/e;Landroid/content/Context;Landroid/os/Handler;Lcom/estrongs/io/archive/h;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/compress/aw;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/compress/aw;->g:Z

    iput-object p2, p0, Lcom/estrongs/android/pop/app/compress/aw;->i:Landroid/content/Context;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/aw;->h:Lcom/estrongs/android/view/e;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/compress/aw;->c:Landroid/os/Handler;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/compress/aw;->b:Lcom/estrongs/io/archive/h;

    const v0, 0x7f0b01c7

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/compress/aw;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/compress/aw;->setProgressStyle(I)V

    const v0, 0x7f0b000c

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/compress/ax;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/compress/ax;-><init>(Lcom/estrongs/android/pop/app/compress/aw;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/compress/aw;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/aw;)Lcom/estrongs/io/archive/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aw;->b:Lcom/estrongs/io/archive/h;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/aw;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/compress/aw;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/compress/aw;)Lcom/estrongs/io/model/ArchiveEntryFile;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aw;->e:Lcom/estrongs/io/model/ArchiveEntryFile;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/compress/aw;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aw;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/compress/aw;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aw;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/compress/aw;)Lcom/estrongs/android/view/e;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aw;->h:Lcom/estrongs/android/view/e;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/compress/aw;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aw;->i:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/compress/aw;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aw;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/estrongs/io/model/ArchiveEntryFile;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/aw;->e:Lcom/estrongs/io/model/ArchiveEntryFile;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/aw;->f:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/compress/aw;->g:Z

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/aw;->d:Ljava/lang/String;

    return-void
.end method

.method public onStart()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/pop/app/compress/ay;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/compress/ay;-><init>(Lcom/estrongs/android/pop/app/compress/aw;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/ay;->start()V

    return-void
.end method
