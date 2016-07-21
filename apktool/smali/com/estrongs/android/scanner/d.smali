.class Lcom/estrongs/android/scanner/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/estrongs/android/scanner/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/scanner/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/scanner/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/d;->a:Lcom/estrongs/android/scanner/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/scanner/a/c;Lcom/estrongs/android/scanner/a/c;)I
    .locals 6

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Lcom/estrongs/android/scanner/a/c;->f()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/estrongs/android/scanner/a/c;->f()J

    move-result-wide v2

    sub-long v0, v2, v0

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/estrongs/android/scanner/a/c;

    check-cast p2, Lcom/estrongs/android/scanner/a/c;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/scanner/d;->a(Lcom/estrongs/android/scanner/a/c;Lcom/estrongs/android/scanner/a/c;)I

    move-result v0

    return v0
.end method
