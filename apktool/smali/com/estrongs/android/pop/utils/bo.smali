.class final Lcom/estrongs/android/pop/utils/bo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cr;

.field final synthetic b:Lcom/estrongs/fs/h;

.field final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cr;Lcom/estrongs/fs/h;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/bo;->a:Lcom/estrongs/android/view/cr;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/bo;->b:Lcom/estrongs/fs/h;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/bo;->c:Landroid/app/Activity;

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
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bo;->a:Lcom/estrongs/android/view/cr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bo;->b:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bo;->b:Lcom/estrongs/fs/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/ao;->b(Lcom/estrongs/fs/h;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bo;->c:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/pop/utils/bp;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/utils/bp;-><init>(Lcom/estrongs/android/pop/utils/bo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bo;->b:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bo;->b:Lcom/estrongs/fs/h;

    const-string v1, "child_count"

    invoke-interface {v0, v1}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/bo;->b:Lcom/estrongs/fs/h;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/ao;->a(Lcom/estrongs/fs/h;)I

    goto :goto_0
.end method
