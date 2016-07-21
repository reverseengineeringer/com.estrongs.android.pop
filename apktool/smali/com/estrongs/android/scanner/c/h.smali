.class public Lcom/estrongs/android/scanner/c/h;
.super Lcom/estrongs/android/scanner/c/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "image"

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/scanner/c/e;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)Lcom/estrongs/android/scanner/a/c;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/scanner/c/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/scanner/a/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/scanner/a/d;
    .locals 6

    const/4 v1, -0x1

    const/4 v3, 0x1

    const/16 v4, 0x64

    const/4 v0, 0x0

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/scanner/b/a;->a(Ljava/lang/String;)I

    move-result v2

    :goto_0
    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/estrongs/android/scanner/a/d;

    invoke-direct {v0, p1, v2, p2}, Lcom/estrongs/android/scanner/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/a/d;->d(I)V

    invoke-virtual {v0, v3}, Lcom/estrongs/android/scanner/a/d;->b(I)V

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/estrongs/android/util/bg;->a(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-static {p1, p2}, Lcom/estrongs/android/scanner/b/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/estrongs/android/util/bg;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    move v2, v3

    goto :goto_0

    :cond_3
    move v1, v2

    move v2, v4

    goto :goto_0
.end method
