.class Lcom/estrongs/io/archive/sevenzip/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/io/archive/sevenzip/h;


# direct methods
.method constructor <init>(Lcom/estrongs/io/archive/sevenzip/h;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iput-object p2, p0, Lcom/estrongs/io/archive/sevenzip/j;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/h;->a:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/h;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v0, v0, Lcom/estrongs/io/archive/sevenzip/h;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v0, Lcom/estrongs/fs/b/ad;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v2, v2, Lcom/estrongs/io/archive/sevenzip/h;->f:Ljava/lang/String;

    sget-object v3, Lcom/estrongs/android/pop/a;->s:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/estrongs/fs/b/ad;-><init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v5, v0, Lcom/estrongs/fs/b/ad;->f:Z

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/estrongs/android/pop/a;->s:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/estrongs/android/pop/a;->s:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    iget-object v1, p0, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v1, v1, Lcom/estrongs/io/archive/sevenzip/h;->b:Landroid/app/Activity;

    const v2, 0x7f0802a1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v4, v4, Lcom/estrongs/io/archive/sevenzip/h;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/io/archive/sevenzip/j;->a:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/ad;->setDescription(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/io/archive/sevenzip/j;->b:Lcom/estrongs/io/archive/sevenzip/h;

    iget-object v1, v1, Lcom/estrongs/io/archive/sevenzip/h;->b:Landroid/app/Activity;

    new-instance v2, Lcom/estrongs/io/archive/sevenzip/k;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/io/archive/sevenzip/k;-><init>(Lcom/estrongs/io/archive/sevenzip/j;Lcom/estrongs/fs/b/ad;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/estrongs/io/archive/sevenzip/m;

    invoke-direct {v1, p0}, Lcom/estrongs/io/archive/sevenzip/m;-><init>(Lcom/estrongs/io/archive/sevenzip/j;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/ad;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ad;->execute()V

    return-void
.end method
