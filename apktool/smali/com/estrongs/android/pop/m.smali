.class public Lcom/estrongs/android/pop/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/a;


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/m;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/m;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/m;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/h;)Lcom/estrongs/android/ui/dialog/cg;
    .locals 8

    const/4 v5, 0x1

    iget-object v0, p2, Lcom/estrongs/a/a/h;->c:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/estrongs/a/a/h;->d:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/estrongs/a/a/h;->d:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->H(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/estrongs/android/a/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/m;->a:Landroid/app/Activity;

    new-instance v2, Lcom/estrongs/android/pop/x;

    invoke-direct {v2, p0, p2, p1}, Lcom/estrongs/android/pop/x;-><init>(Lcom/estrongs/android/pop/m;Lcom/estrongs/a/a/h;Lcom/estrongs/a/a;)V

    invoke-direct {v0, v1, v2, v5}, Lcom/estrongs/android/a/e;-><init>(Landroid/content/Context;Lcom/estrongs/android/a/h;Z)V

    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p1, Lcom/estrongs/fs/b/r;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/estrongs/fs/b/r;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/r;->e()Z

    move-result v6

    :goto_1
    new-instance v0, Lcom/estrongs/android/a/i;

    iget-object v1, p0, Lcom/estrongs/android/pop/m;->a:Landroid/app/Activity;

    iget-object v2, p2, Lcom/estrongs/a/a/h;->c:Lcom/estrongs/fs/h;

    iget-object v3, p2, Lcom/estrongs/a/a/h;->d:Lcom/estrongs/fs/h;

    new-instance v4, Lcom/estrongs/android/pop/y;

    invoke-direct {v4, p0, p2, p1}, Lcom/estrongs/android/pop/y;-><init>(Lcom/estrongs/android/pop/m;Lcom/estrongs/a/a/h;Lcom/estrongs/a/a;)V

    iget-boolean v7, p2, Lcom/estrongs/a/a/h;->b:Z

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/a/i;-><init>(Landroid/content/Context;Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;Lcom/estrongs/android/a/p;ZZZ)V

    goto :goto_0

    :cond_2
    move v6, v5

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/m;Lcom/estrongs/a/a;Lcom/estrongs/a/a/h;)Lcom/estrongs/android/ui/dialog/cg;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/m;->a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/h;)Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/m;->a:Landroid/app/Activity;

    return-void
.end method

.method public a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/d;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/m;->a:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/pop/n;

    invoke-direct {v1, p0, p2, p1}, Lcom/estrongs/android/pop/n;-><init>(Lcom/estrongs/android/pop/m;Lcom/estrongs/a/a/d;Lcom/estrongs/a/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
