.class public Lcom/estrongs/android/a/a/j;
.super Lcom/estrongs/android/a/a/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/android/a/ai;)Lcom/estrongs/android/a/b/q;
    .locals 8

    check-cast p1, Lcom/estrongs/android/a/aj;

    new-instance v1, Lcom/estrongs/android/a/b/k;

    invoke-virtual {p1}, Lcom/estrongs/android/a/aj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/estrongs/android/a/aj;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/estrongs/android/a/aj;->c()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/estrongs/android/a/aj;->d()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/estrongs/android/a/b/k;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v1
.end method

.method protected b(Lcom/estrongs/android/a/ai;)Z
    .locals 1

    instance-of v0, p1, Lcom/estrongs/android/a/ak;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
