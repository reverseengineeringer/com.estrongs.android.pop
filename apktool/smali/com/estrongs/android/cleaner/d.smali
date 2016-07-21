.class Lcom/estrongs/android/cleaner/d;
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
.field final synthetic a:Lcom/estrongs/android/cleaner/b;

.field private final b:Lcom/estrongs/android/cleaner/h;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/cleaner/b;Lcom/estrongs/android/cleaner/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/cleaner/d;->a:Lcom/estrongs/android/cleaner/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/cleaner/d;->b:Lcom/estrongs/android/cleaner/h;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/cleaner/d;->a:Lcom/estrongs/android/cleaner/b;

    iget-object v1, p0, Lcom/estrongs/android/cleaner/d;->b:Lcom/estrongs/android/cleaner/h;

    invoke-static {v0, v1}, Lcom/estrongs/android/cleaner/b;->a(Lcom/estrongs/android/cleaner/b;Lcom/estrongs/android/cleaner/h;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/cleaner/d;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
