.class Lcom/estrongs/android/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/estrongs/android/a/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/a/q;

.field private final b:Lcom/estrongs/android/a/a/n;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/a/q;Ljava/lang/String;Lcom/estrongs/android/a/a/n;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/a/s;->a:Lcom/estrongs/android/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/estrongs/android/a/s;->b:Lcom/estrongs/android/a/a/n;

    iput-object p2, p0, Lcom/estrongs/android/a/s;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/android/a/t;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/a/s;->b:Lcom/estrongs/android/a/a/n;

    iget-object v1, p0, Lcom/estrongs/android/a/s;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/estrongs/android/a/a/n;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/a/t;

    iget-object v1, p0, Lcom/estrongs/android/a/s;->a:Lcom/estrongs/android/a/q;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/a/t;-><init>(Lcom/estrongs/android/a/q;Lcom/estrongs/android/a/r;)V

    iget-object v1, p0, Lcom/estrongs/android/a/s;->b:Lcom/estrongs/android/a/a/n;

    invoke-interface {v1}, Lcom/estrongs/android/a/a/n;->a()Lcom/estrongs/android/a/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/a/b/a;->a()I

    move-result v1

    iput v1, v0, Lcom/estrongs/android/a/t;->b:I

    iget-object v1, p0, Lcom/estrongs/android/a/s;->b:Lcom/estrongs/android/a/a/n;

    invoke-interface {v1}, Lcom/estrongs/android/a/a/n;->a()Lcom/estrongs/android/a/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/a/b/a;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/estrongs/android/a/t;->a:J

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/a/s;->a()Lcom/estrongs/android/a/t;

    move-result-object v0

    return-object v0
.end method
