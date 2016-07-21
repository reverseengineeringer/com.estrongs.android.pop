.class Lcom/estrongs/android/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/a/j;


# instance fields
.field final synthetic a:Lcom/estrongs/android/a/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/a/f;->a:Lcom/estrongs/android/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/a/b;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiskAnalyzer for App finish!!"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/a/f;->a:Lcom/estrongs/android/a/b;

    invoke-static {v0}, Lcom/estrongs/android/a/b;->h(Lcom/estrongs/android/a/b;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/estrongs/android/a/f;->a:Lcom/estrongs/android/a/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/a/b;->a(Lcom/estrongs/android/a/b;Z)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/a/b/a;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
