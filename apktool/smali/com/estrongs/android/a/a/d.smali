.class public Lcom/estrongs/android/a/a/d;
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

    new-instance v1, Lcom/estrongs/android/a/b/e;

    invoke-virtual {p1}, Lcom/estrongs/android/a/aj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/estrongs/android/a/aj;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/estrongs/android/a/aj;->c()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/estrongs/android/a/aj;->d()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/estrongs/android/a/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v1
.end method

.method protected b(Lcom/estrongs/android/a/ai;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/estrongs/android/a/aj;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/estrongs/android/a/aj;

    invoke-virtual {p1}, Lcom/estrongs/android/a/aj;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/bg;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Lcom/estrongs/android/util/bg;->j(I)Z

    move-result v0

    goto :goto_0
.end method
