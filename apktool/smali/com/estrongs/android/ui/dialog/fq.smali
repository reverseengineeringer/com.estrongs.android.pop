.class Lcom/estrongs/android/ui/dialog/fq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/estrongs/android/ui/dialog/fk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/fk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fq;->f:Lcom/estrongs/android/ui/dialog/fk;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/fq;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/fq;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/ui/dialog/fq;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/estrongs/android/ui/dialog/fq;->d:Z

    iput-object p6, p0, Lcom/estrongs/android/ui/dialog/fq;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fq;->f:Lcom/estrongs/android/ui/dialog/fk;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/fq;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/fq;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/fq;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/estrongs/android/ui/dialog/fk;->a(Lcom/estrongs/android/ui/dialog/fk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fq;->f:Lcom/estrongs/android/ui/dialog/fk;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/fk;->f(Lcom/estrongs/android/ui/dialog/fk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/fr;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/fr;-><init>(Lcom/estrongs/android/ui/dialog/fq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/estrongs/android/ui/dialog/fq;->d:Z

    if-eqz v1, :cond_5

    const-string v1, "s3"

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/o/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fq;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "s3"

    const-string v3, "fake"

    invoke-static {v2, v1, v3, v0}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/fq;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/fq;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v2, p0, Lcom/estrongs/android/ui/dialog/fq;->d:Z

    if-eqz v2, :cond_2

    :goto_2
    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/fq;->f:Lcom/estrongs/android/ui/dialog/fk;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/fk;->g(Lcom/estrongs/android/ui/dialog/fk;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/fq;->f:Lcom/estrongs/android/ui/dialog/fk;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/fk;->h(Lcom/estrongs/android/ui/dialog/fk;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/fq;->f:Lcom/estrongs/android/ui/dialog/fk;

    invoke-static {v3}, Lcom/estrongs/android/ui/dialog/fk;->h(Lcom/estrongs/android/ui/dialog/fk;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/pop/ad;->a(Ljava/lang/String;Z)V

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/fq;->f:Lcom/estrongs/android/ui/dialog/fk;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/fk;->d(Lcom/estrongs/android/ui/dialog/fk;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    iget-boolean v3, p0, Lcom/estrongs/android/ui/dialog/fq;->d:Z

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/pop/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fq;->f:Lcom/estrongs/android/ui/dialog/fk;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/fk;->f(Lcom/estrongs/android/ui/dialog/fk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/fs;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/fs;-><init>(Lcom/estrongs/android/ui/dialog/fq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fq;->b:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fq;->a:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v1, v2

    goto :goto_2

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method
