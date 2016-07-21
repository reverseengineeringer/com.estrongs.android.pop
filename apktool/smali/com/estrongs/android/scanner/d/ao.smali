.class Lcom/estrongs/android/scanner/d/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/estrongs/android/pop/app/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/scanner/d/ak;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/d/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/d/ao;->a:Lcom/estrongs/android/scanner/d/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/b/b;Lcom/estrongs/android/pop/app/b/b;)I
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v0, p1, Lcom/estrongs/android/pop/app/b/b;->b:J

    iget-wide v2, p2, Lcom/estrongs/android/pop/app/b/b;->b:J

    sub-long v0, v2, v0

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/estrongs/android/pop/app/b/b;

    check-cast p2, Lcom/estrongs/android/pop/app/b/b;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/scanner/d/ao;->a(Lcom/estrongs/android/pop/app/b/b;Lcom/estrongs/android/pop/app/b/b;)I

    move-result v0

    return v0
.end method
