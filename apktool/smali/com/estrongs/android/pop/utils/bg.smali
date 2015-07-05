.class final Lcom/estrongs/android/pop/utils/bg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/estrongs/android/view/aw;

.field final synthetic c:Lcom/estrongs/fs/h;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/estrongs/android/view/aw;Lcom/estrongs/fs/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/bg;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/bg;->b:Lcom/estrongs/android/view/aw;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/bg;->c:Lcom/estrongs/fs/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 2

    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    const/4 v0, 0x4

    if-ne p3, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bg;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bg;->b:Lcom/estrongs/android/view/aw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bg;->c:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bg;->c:Lcom/estrongs/fs/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/aj;->b(Lcom/estrongs/fs/h;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bg;->a:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/pop/utils/bh;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/utils/bh;-><init>(Lcom/estrongs/android/pop/utils/bg;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bg;->c:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bg;->c:Lcom/estrongs/fs/h;

    const-string v1, "child_count"

    invoke-interface {v0, v1}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bg;->c:Lcom/estrongs/fs/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/aj;->a(Lcom/estrongs/fs/h;)I

    goto :goto_0
.end method
