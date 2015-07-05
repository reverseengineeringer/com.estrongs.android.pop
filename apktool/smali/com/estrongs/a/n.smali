.class Lcom/estrongs/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/estrongs/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/a/l;


# direct methods
.method constructor <init>(Lcom/estrongs/a/l;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/a/n;->a:Lcom/estrongs/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Lcom/estrongs/a/a;)I
    .locals 6

    const-wide/16 v4, 0x0

    invoke-virtual {p2}, Lcom/estrongs/a/a;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/estrongs/a/a;->getStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/estrongs/a/a;

    check-cast p2, Lcom/estrongs/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/a/n;->a(Lcom/estrongs/a/a;Lcom/estrongs/a/a;)I

    move-result v0

    return v0
.end method
