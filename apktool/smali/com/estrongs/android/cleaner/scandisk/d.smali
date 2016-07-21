.class Lcom/estrongs/android/cleaner/scandisk/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/cleaner/scandisk/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/cleaner/scandisk/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/cleaner/scandisk/d;->a:Lcom/estrongs/android/cleaner/scandisk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/d;->a:Lcom/estrongs/android/cleaner/scandisk/c;

    invoke-static {v0}, Lcom/estrongs/android/cleaner/scandisk/c;->a(Lcom/estrongs/android/cleaner/scandisk/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/d;->a:Lcom/estrongs/android/cleaner/scandisk/c;

    invoke-static {v0}, Lcom/estrongs/android/cleaner/scandisk/c;->b(Lcom/estrongs/android/cleaner/scandisk/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/cleaner/scandisk/d;->a:Lcom/estrongs/android/cleaner/scandisk/c;

    invoke-static {v1}, Lcom/estrongs/android/cleaner/scandisk/c;->c(Lcom/estrongs/android/cleaner/scandisk/c;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/cleaner/scandisk/g;

    invoke-static {v0}, Lcom/estrongs/android/cleaner/j;->a(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/cleaner/scandisk/d;->a:Lcom/estrongs/android/cleaner/scandisk/c;

    invoke-static {v3, v0, v2, v1}, Lcom/estrongs/android/cleaner/scandisk/c;->a(Lcom/estrongs/android/cleaner/scandisk/c;Ljava/lang/String;ZLcom/estrongs/android/cleaner/scandisk/g;)V

    new-instance v2, Lcom/estrongs/android/cleaner/scandisk/h;

    invoke-direct {v2}, Lcom/estrongs/android/cleaner/scandisk/h;-><init>()V

    const/4 v3, 0x1

    iput v3, v2, Lcom/estrongs/android/cleaner/scandisk/h;->c:I

    iput-object v0, v2, Lcom/estrongs/android/cleaner/scandisk/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/cleaner/scandisk/g;->a(Lcom/estrongs/android/cleaner/scandisk/h;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/cleaner/scandisk/d;->a:Lcom/estrongs/android/cleaner/scandisk/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/cleaner/scandisk/c;->a(Lcom/estrongs/android/cleaner/scandisk/c;Z)Z

    invoke-static {}, Lcom/estrongs/android/cleaner/scandisk/c;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exit the task!"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
