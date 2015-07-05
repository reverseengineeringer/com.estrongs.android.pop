.class Lcom/estrongs/android/ui/dialog/fn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/estrongs/android/ui/dialog/fh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/fh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fn;->f:Lcom/estrongs/android/ui/dialog/fh;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/fn;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/fn;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/ui/dialog/fn;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/estrongs/android/ui/dialog/fn;->d:Z

    iput-object p6, p0, Lcom/estrongs/android/ui/dialog/fn;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fn;->f:Lcom/estrongs/android/ui/dialog/fh;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/fn;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/fn;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/fn;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/estrongs/android/ui/dialog/fh;->a(Lcom/estrongs/android/ui/dialog/fh;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fn;->f:Lcom/estrongs/android/ui/dialog/fh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/fh;->f(Lcom/estrongs/android/ui/dialog/fh;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/fo;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/fo;-><init>(Lcom/estrongs/android/ui/dialog/fn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/estrongs/android/ui/dialog/fn;->d:Z

    if-eqz v1, :cond_a

    const-string v1, "s3"

    invoke-static {v1, v0}, Lcom/estrongs/fs/impl/j/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fn;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "s3"

    const-string v3, "fake"

    invoke-static {v2, v1, v3, v0}, Lcom/estrongs/android/util/am;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/fn;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/fn;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9

    iget-boolean v2, p0, Lcom/estrongs/android/ui/dialog/fn;->d:Z

    if-eqz v2, :cond_3

    :goto_2
    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/fn;->f:Lcom/estrongs/android/ui/dialog/fh;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/fh;->g(Lcom/estrongs/android/ui/dialog/fh;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/fn;->f:Lcom/estrongs/android/ui/dialog/fh;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/fh;->h(Lcom/estrongs/android/ui/dialog/fh;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/fn;->f:Lcom/estrongs/android/ui/dialog/fh;

    invoke-static {v3}, Lcom/estrongs/android/ui/dialog/fh;->h(Lcom/estrongs/android/ui/dialog/fh;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/pop/ad;->a(Ljava/lang/String;Z)V

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/fn;->f:Lcom/estrongs/android/ui/dialog/fh;

    invoke-static {v2}, Lcom/estrongs/android/ui/dialog/fh;->d(Lcom/estrongs/android/ui/dialog/fh;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    iget-boolean v3, p0, Lcom/estrongs/android/ui/dialog/fn;->d:Z

    if-eqz v3, :cond_4

    :goto_3
    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/pop/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fn;->f:Lcom/estrongs/android/ui/dialog/fh;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/fh;->i(Lcom/estrongs/android/ui/dialog/fh;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "s3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_2

    const-string v1, "S3_Create"

    const-string v2, "S3_Create"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_4
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fn;->f:Lcom/estrongs/android/ui/dialog/fh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/fh;->f(Lcom/estrongs/android/ui/dialog/fh;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/fp;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/fp;-><init>(Lcom/estrongs/android/ui/dialog/fn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fn;->b:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fn;->a:Ljava/lang/String;

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fn;->f:Lcom/estrongs/android/ui/dialog/fh;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/fh;->i(Lcom/estrongs/android/ui/dialog/fh;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vdisk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_2

    const-string v1, "\u65b0\u6d6a\u5fae\u76d8_Create"

    const-string v2, "\u65b0\u6d6a\u5fae\u76d8_Create"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fn;->f:Lcom/estrongs/android/ui/dialog/fh;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/fh;->i(Lcom/estrongs/android/ui/dialog/fh;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yandex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_2

    const-string v1, "Yandex_Create"

    const-string v2, "Yandex_Create"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fn;->f:Lcom/estrongs/android/ui/dialog/fh;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/fh;->i(Lcom/estrongs/android/ui/dialog/fh;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sugarsync"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v0, :cond_2

    const-string v1, "Sugarsync_Create"

    const-string v2, "Sugarsync_Create"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fn;->f:Lcom/estrongs/android/ui/dialog/fh;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/fh;->i(Lcom/estrongs/android/ui/dialog/fh;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "kanbox"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const-string v1, "\u9177\u76d8_Create"

    const-string v2, "\u9177\u76d8_Create"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    move-object v1, v2

    goto/16 :goto_2

    :cond_a
    move-object v1, v0

    goto/16 :goto_1
.end method
