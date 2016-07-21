.class Lcom/estrongs/android/scanner/c/f;
.super Ljava/lang/ThreadLocal;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/estrongs/android/scanner/a/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/scanner/c/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/c/f;->a:Lcom/estrongs/android/scanner/c/e;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/scanner/a/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/scanner/c/f;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
