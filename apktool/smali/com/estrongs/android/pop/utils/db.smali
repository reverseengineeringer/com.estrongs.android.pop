.class Lcom/estrongs/android/pop/utils/db;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/utils/cv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/cv;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/db;->a:Lcom/estrongs/android/pop/utils/cv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "TaskQueue"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/db;->a:Lcom/estrongs/android/pop/utils/cv;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/cv;->b(Lcom/estrongs/android/pop/utils/cv;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/db;->a:Lcom/estrongs/android/pop/utils/cv;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/cv;->c(Lcom/estrongs/android/pop/utils/cv;)Lcom/estrongs/android/pop/utils/cz;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/db;->a:Lcom/estrongs/android/pop/utils/cv;

    invoke-static {v0, p0}, Lcom/estrongs/android/pop/utils/cv;->a(Lcom/estrongs/android/pop/utils/cv;Lcom/estrongs/android/pop/utils/db;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/pop/utils/db;->a:Lcom/estrongs/android/pop/utils/cv;

    invoke-static {v1}, Lcom/estrongs/android/pop/utils/cv;->d(Lcom/estrongs/android/pop/utils/cv;)Lcom/estrongs/android/pop/utils/da;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/utils/cz;->a(Lcom/estrongs/android/pop/utils/da;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/utils/cz;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/db;->a:Lcom/estrongs/android/pop/utils/cv;

    invoke-static {v1}, Lcom/estrongs/android/pop/utils/cv;->e(Lcom/estrongs/android/pop/utils/cv;)Lcom/estrongs/android/pop/utils/dc;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v0, v1, Lcom/estrongs/android/pop/utils/dc;->a:Lcom/estrongs/android/pop/utils/cz;

    invoke-static {v1}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/Runnable;)V

    :cond_2
    invoke-virtual {v0}, Lcom/estrongs/android/pop/utils/cz;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1
.end method
