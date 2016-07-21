.class final Lcom/estrongs/android/pop/utils/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/eu;


# instance fields
.field final synthetic a:Lcom/estrongs/fs/h;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/fs/h;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/ap;->a:Lcom/estrongs/fs/h;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/ap;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/ap;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/ap;->a:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->a()Z

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/ap;->a:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/estrongs/android/util/r;->a(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/estrongs/fs/b/at;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/ap;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/estrongs/android/pop/utils/ap;->a:Lcom/estrongs/fs/h;

    iget-object v4, p0, Lcom/estrongs/android/pop/utils/ap;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/estrongs/fs/b/at;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/h;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/pop/utils/aq;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/utils/aq;-><init>(Lcom/estrongs/android/pop/utils/ap;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/utils/ap;->b:Landroid/app/Activity;

    const v4, 0x7f0800a1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/estrongs/fs/b/at;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/b/at;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/ap;->a:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v3, Lcom/estrongs/android/pop/utils/as;

    invoke-direct {v3, p0, v2}, Lcom/estrongs/android/pop/utils/as;-><init>(Lcom/estrongs/android/pop/utils/ap;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/estrongs/fs/b/at;->addPostListener(Lcom/estrongs/a/a/o;)V

    new-instance v2, Lcom/estrongs/android/ui/dialog/jh;

    iget-object v3, p0, Lcom/estrongs/android/pop/utils/ap;->b:Landroid/app/Activity;

    iget-object v4, p0, Lcom/estrongs/android/pop/utils/ap;->b:Landroid/app/Activity;

    const v5, 0x7f0805bc

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/estrongs/android/ui/dialog/jh;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/dialog/jh;->b(Z)Lcom/estrongs/android/ui/dialog/jh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/jh;->show()V

    invoke-virtual {v1}, Lcom/estrongs/fs/b/at;->execute()V

    const/4 v0, 0x1

    goto :goto_0
.end method
