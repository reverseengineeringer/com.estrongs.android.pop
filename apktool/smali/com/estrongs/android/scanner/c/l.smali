.class public Lcom/estrongs/android/scanner/c/l;
.super Lcom/estrongs/android/scanner/c/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x5

    const-string v1, "zip"

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/scanner/c/e;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)Lcom/estrongs/android/scanner/a/c;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/scanner/c/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/scanner/a/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/scanner/a/d;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/bg;->a(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-static {v2}, Lcom/estrongs/android/util/bg;->k(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/estrongs/android/scanner/a/d;

    invoke-direct {v0, p1, v3, v1}, Lcom/estrongs/android/scanner/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/scanner/a/d;->d(I)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/a/d;->b(I)V

    goto :goto_0
.end method
