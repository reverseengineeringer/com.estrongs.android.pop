.class Lcom/estrongs/android/scanner/d/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/estrongs/android/scanner/d/ar;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/scanner/d/ak;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/estrongs/android/scanner/d/ak;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/d/aq;->a:Lcom/estrongs/android/scanner/d/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/estrongs/android/scanner/d/aq;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/scanner/d/ar;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/aq;->a:Lcom/estrongs/android/scanner/d/ak;

    iget v1, p0, Lcom/estrongs/android/scanner/d/aq;->b:I

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/aq;->a:Lcom/estrongs/android/scanner/d/ak;

    invoke-static {v2}, Lcom/estrongs/android/scanner/d/ak;->a(Lcom/estrongs/android/scanner/d/ak;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/estrongs/android/scanner/d/aq;->a:Lcom/estrongs/android/scanner/d/ak;

    invoke-static {v4}, Lcom/estrongs/android/scanner/d/ak;->b(Lcom/estrongs/android/scanner/d/ak;)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/scanner/d/ak;->a(Lcom/estrongs/android/scanner/d/ak;IJJ)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/aq;->a:Lcom/estrongs/android/scanner/d/ak;

    invoke-static {v1}, Lcom/estrongs/android/scanner/d/ak;->c(Lcom/estrongs/android/scanner/d/ak;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/android/scanner/d/aq;->b:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/scanner/d/aq;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
