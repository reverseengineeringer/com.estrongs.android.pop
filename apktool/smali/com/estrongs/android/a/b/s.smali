.class final Lcom/estrongs/android/a/b/s;
.super Ljava/lang/ThreadLocal;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/estrongs/android/a/b/t;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/estrongs/android/a/b/t;
    .locals 3

    const/16 v2, 0x1800

    new-instance v0, Lcom/estrongs/android/a/b/t;

    invoke-direct {v0}, Lcom/estrongs/android/a/b/t;-><init>()V

    new-array v1, v2, [B

    iput-object v1, v0, Lcom/estrongs/android/a/b/t;->a:[B

    new-array v1, v2, [B

    iput-object v1, v0, Lcom/estrongs/android/a/b/t;->b:[B

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/a/b/s;->a()Lcom/estrongs/android/a/b/t;

    move-result-object v0

    return-object v0
.end method
