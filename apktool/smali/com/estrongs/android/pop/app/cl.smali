.class Lcom/estrongs/android/pop/app/cl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/fs/h;

.field final synthetic c:Landroid/content/Intent;

.field final synthetic d:Lcom/estrongs/android/pop/app/FileChooserActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/FileChooserActivity;Ljava/lang/String;Lcom/estrongs/fs/h;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cl;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/cl;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/cl;->b:Lcom/estrongs/fs/h;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/cl;->c:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    sget-object v0, Lcom/estrongs/android/pop/a;->f:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Lcom/estrongs/fs/b/r;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cl;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-static {v2}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/cl;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-static {v3}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/cl;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v3

    new-instance v4, Lcom/estrongs/fs/impl/local/f;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/estrongs/fs/b/r;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/estrongs/a/a;->execute(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cl;->b:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cl;->d:Lcom/estrongs/android/pop/app/FileChooserActivity;

    new-instance v3, Lcom/estrongs/android/pop/app/cm;

    invoke-direct {v3, p0, v1, v0}, Lcom/estrongs/android/pop/app/cm;-><init>(Lcom/estrongs/android/pop/app/cl;Lcom/estrongs/a/a;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/app/FileChooserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
