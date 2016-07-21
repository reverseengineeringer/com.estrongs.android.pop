.class Lcom/estrongs/android/a/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/a/ab;

.field private final b:Lcom/estrongs/android/a/a/k;

.field private final c:Lcom/estrongs/android/a/a;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/a/ab;Lcom/estrongs/android/a/a/k;Lcom/estrongs/android/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/a/ag;->a:Lcom/estrongs/android/a/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/a/ag;->b:Lcom/estrongs/android/a/a/k;

    iput-object p3, p0, Lcom/estrongs/android/a/ag;->c:Lcom/estrongs/android/a/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/a/ag;->b:Lcom/estrongs/android/a/a/k;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/a/a/k;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/a/ag;->b:Lcom/estrongs/android/a/a/k;

    iget-object v1, p0, Lcom/estrongs/android/a/ag;->c:Lcom/estrongs/android/a/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/a/a/k;->a(Lcom/estrongs/android/a/a;)V

    iget-object v0, p0, Lcom/estrongs/android/a/ag;->b:Lcom/estrongs/android/a/a/k;

    invoke-virtual {v0}, Lcom/estrongs/android/a/a/k;->b()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/a/ag;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
