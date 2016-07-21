.class Lcom/estrongs/android/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/estrongs/fs/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/a/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/a/l;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/a/p;->a:Lcom/estrongs/android/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)I
    .locals 4

    check-cast p1, Lcom/estrongs/android/a/b/f;

    check-cast p2, Lcom/estrongs/android/a/b/f;

    invoke-virtual {p2}, Lcom/estrongs/android/a/b/f;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/f;->d()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/estrongs/android/a/b/f;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/f;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/estrongs/fs/h;

    check-cast p2, Lcom/estrongs/fs/h;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/a/p;->a(Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)I

    move-result v0

    return v0
.end method
