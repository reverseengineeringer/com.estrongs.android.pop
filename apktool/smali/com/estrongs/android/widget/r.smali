.class Lcom/estrongs/android/widget/r;
.super Lcom/estrongs/android/view/dp;


# instance fields
.field final synthetic b:Lcom/estrongs/android/widget/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/g;Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/r;->b:Lcom/estrongs/android/widget/g;

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/view/dp;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/widget/r;Lcom/estrongs/fs/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/widget/r;->b(Lcom/estrongs/fs/h;)V

    return-void
.end method

.method private b(Lcom/estrongs/fs/h;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/estrongs/android/view/dp;->a(Lcom/estrongs/fs/h;)V

    return-void
.end method


# virtual methods
.method public H()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/r;->V()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a()I
    .locals 1

    const v0, 0x7f030055

    return v0
.end method

.method protected a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/widget/r;->b:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->c(Lcom/estrongs/android/widget/g;)Lcom/estrongs/android/widget/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/r;->b:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->c(Lcom/estrongs/android/widget/g;)Lcom/estrongs/android/widget/ac;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/estrongs/android/widget/ac;->a(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bg(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/FexApplication;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/estrongs/android/widget/s;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/widget/s;-><init>(Lcom/estrongs/android/widget/r;Lcom/estrongs/fs/h;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/dp;->a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V

    goto :goto_0
.end method
