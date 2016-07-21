.class public Lcom/estrongs/android/a/a/u;
.super Lcom/estrongs/android/a/a/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/a/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/android/a/b/q;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/estrongs/android/a/b/k;

    if-eqz v2, :cond_2

    instance-of v2, p1, Lcom/estrongs/android/a/b/v;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/estrongs/android/a/b/q;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public c_()V
    .locals 0

    return-void
.end method
