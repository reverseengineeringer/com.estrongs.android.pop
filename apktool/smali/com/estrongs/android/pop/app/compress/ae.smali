.class public Lcom/estrongs/android/pop/app/compress/ae;
.super Landroid/os/HandlerThread;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field final synthetic f:Lcom/estrongs/android/pop/app/compress/l;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/compress/l;Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->d:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->e:I

    return-void
.end method

.method private a(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->i(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->p(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/compress/a/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->i(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/estrongs/io/archive/d;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/estrongs/io/archive/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/compress/l;->a(Lcom/estrongs/android/pop/app/compress/l;Lcom/estrongs/io/archive/i;)Lcom/estrongs/io/archive/i;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->q(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/android/pop/app/compress/az;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->q(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/android/pop/app/compress/az;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/compress/az;->a()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/compress/l;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/compress/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/i;->f(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->r(Lcom/estrongs/android/pop/app/compress/l;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->r(Lcom/estrongs/android/pop/app/compress/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->a(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/i;->a(Lcom/estrongs/io/a/b;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->q(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/android/pop/app/compress/az;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->q(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/android/pop/app/compress/az;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/compress/az;->b()V

    :cond_3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->a(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/io/a/a/a;->b()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->p(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->i(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->p(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/pop/app/compress/a/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->n(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/io/archive/e;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->k(Lcom/estrongs/android/pop/app/compress/l;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/archive/i;->g()V

    :cond_4
    :goto_2
    return-void

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->r(Lcom/estrongs/android/pop/app/compress/l;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->a(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/a/a/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/io/archive/i;->a(Ljava/util/List;Lcom/estrongs/io/a/b;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->i(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/a/d;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_3
    const-string v1, "WRONG PASSWORD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/compress/l;->a(Lcom/estrongs/android/pop/app/compress/l;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->n(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/e;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/compress/af;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/compress/af;-><init>(Lcom/estrongs/android/pop/app/compress/ae;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/e;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->m(Lcom/estrongs/android/pop/app/compress/l;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->k(Lcom/estrongs/android/pop/app/compress/l;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/archive/i;->g()V

    goto :goto_2

    :cond_6
    :try_start_3
    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->i(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/a/d;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->k(Lcom/estrongs/android/pop/app/compress/l;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/i;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/io/archive/i;->g()V

    :cond_7
    throw v0

    :cond_8
    :try_start_4
    const-string v1, "NOT_SUPPORTED_ENC_ALG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/io/archive/sevenzip/f;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/io/archive/sevenzip/f;->a(Ljava/lang/Runnable;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->n(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/e;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->n(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/e;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/estrongs/io/archive/e;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/e;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/l;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->k(Lcom/estrongs/android/pop/app/compress/l;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/archive/i;->g()V

    goto/16 :goto_2

    :cond_9
    :try_start_5
    sget-object v0, Lcom/estrongs/io/archive/g;->d:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/app/compress/ae;->a(Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->k(Lcom/estrongs/android/pop/app/compress/l;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/archive/i;->g()V

    goto/16 :goto_2

    :cond_a
    :try_start_6
    const-string v1, "NOT_SUPPORTED_ENC_ALG_STRENGTH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "NOT_SUPPORTED_ENC_ALG"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->d(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08041d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_b
    :goto_4
    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->n(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/e;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->n(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/e;

    move-result-object v2

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/compress/l;->d(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08041f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/estrongs/io/archive/e;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/io/archive/e;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->k(Lcom/estrongs/android/pop/app/compress/l;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/archive/i;->g()V

    goto/16 :goto_2

    :cond_c
    :try_start_7
    const-string v1, "not a WinZip AES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/io/archive/sevenzip/f;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/io/archive/sevenzip/f;->a(Ljava/lang/Runnable;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->n(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/e;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->n(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/e;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/estrongs/io/archive/e;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/e;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/l;->c()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->k(Lcom/estrongs/android/pop/app/compress/l;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/archive/i;->g()V

    goto/16 :goto_2

    :cond_d
    :try_start_8
    sget-object v0, Lcom/estrongs/io/archive/g;->d:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/app/compress/ae;->a(Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->k(Lcom/estrongs/android/pop/app/compress/l;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/archive/i;->g()V

    goto/16 :goto_2

    :cond_e
    :try_start_9
    const-string v1, "rarEncryptedException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    const/4 v1, 0x0

    sget-object v2, Lcom/estrongs/io/archive/sevenzip/f;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/estrongs/io/archive/sevenzip/f;->a(Ljava/lang/Runnable;Ljava/lang/String;[Z)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->s(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/android/view/g;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->n(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/e;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->n(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/e;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/estrongs/io/archive/e;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/e;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->n(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/e;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/compress/ag;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/compress/ag;-><init>(Lcom/estrongs/android/pop/app/compress/ae;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/e;->post(Ljava/lang/Runnable;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->k(Lcom/estrongs/android/pop/app/compress/l;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->b(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/io/archive/i;->g()V

    goto/16 :goto_2

    :cond_f
    :try_start_a
    sget-object v0, Lcom/estrongs/io/archive/g;->d:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/app/compress/ae;->a(Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->n(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/e;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->n(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/e;

    move-result-object v1

    const/4 v2, 0x2

    const/16 v3, 0xb

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v5}, Lcom/estrongs/android/pop/app/compress/l;->d(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08029f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/estrongs/io/archive/e;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/e;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    :cond_11
    const-string v1, "FILENAME_CONFLICT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "FILENAME_CONFLICT"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->d(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080413

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_12
    const-string v1, "path_create_error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "path_create_error"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->d(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0804ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_13
    const-string v1, "Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->i(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->d(Lcom/estrongs/android/pop/app/compress/l;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v0

    goto/16 :goto_4

    :cond_14
    move-object v0, v1

    goto/16 :goto_3
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->i(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/io/archive/sevenzip/f;->a:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/estrongs/io/archive/sevenzip/f;->a(Ljava/lang/Runnable;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->n(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/e;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->n(Lcom/estrongs/android/pop/app/compress/l;)Lcom/estrongs/io/archive/e;

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/estrongs/io/archive/e;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/e;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/l;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "charset_name"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->j(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "reload"

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->k(Lcom/estrongs/android/pop/app/compress/l;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "true"

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "password"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->f(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1, v4}, Lcom/estrongs/android/pop/app/compress/ae;->a(Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->o(Lcom/estrongs/android/pop/app/compress/l;)I

    move-result v0

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/l;->o(Lcom/estrongs/android/pop/app/compress/l;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :cond_2
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/compress/l;->p(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    :goto_2
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/util/bk;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/media/e;->a(Ljava/util/List;Ljava/util/Set;)V
    :try_end_0
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/media/MediaStoreInsertException;->printStackTrace()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/cm;->b()V

    goto :goto_0

    :cond_3
    const-string v0, "false"

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->f:Lcom/estrongs/android/pop/app/compress/l;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/compress/l;->p(Lcom/estrongs/android/pop/app/compress/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {}, Lcom/estrongs/fs/impl/p/c;->b()Lcom/estrongs/fs/impl/p/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/p/c;->a(Ljava/util/List;)V

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-static {}, Lcom/estrongs/fs/impl/n/d;->b()Lcom/estrongs/fs/impl/n/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/n/d;->a(Ljava/util/List;)V

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/ae;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/v/c;->b()Lcom/estrongs/fs/impl/v/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/ae;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/v/c;->a(Ljava/util/List;)V
    :try_end_1
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
