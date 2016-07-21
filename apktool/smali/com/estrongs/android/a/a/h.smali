.class public Lcom/estrongs/android/a/a/h;
.super Lcom/estrongs/android/a/a/e;


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/a/b/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/a/b/i;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/estrongs/android/a/a/e;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/a/a/h;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/android/a/ai;)Lcom/estrongs/android/a/b/q;
    .locals 8

    const/4 v4, 0x0

    check-cast p1, Lcom/estrongs/android/a/ak;

    iget-object v0, p0, Lcom/estrongs/android/a/a/h;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/estrongs/android/a/ak;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/i;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/estrongs/android/a/b/i;

    iget-object v2, p0, Lcom/estrongs/android/a/a/h;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/estrongs/android/a/ak;->a()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, 0x0

    move v5, v4

    invoke-direct/range {v1 .. v7}, Lcom/estrongs/android/a/b/i;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;IIJ)V

    iget-object v0, p0, Lcom/estrongs/android/a/a/h;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/estrongs/android/a/ak;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/a/b/i;

    if-nez v0, :cond_1

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_1
.end method

.method protected b(Lcom/estrongs/android/a/ai;)Z
    .locals 1

    instance-of v0, p1, Lcom/estrongs/android/a/ak;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
