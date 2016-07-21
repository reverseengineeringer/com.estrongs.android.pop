.class public Lcom/estrongs/android/scanner/c/j;
.super Lcom/estrongs/android/scanner/c/e;


# instance fields
.field private final a:Lcom/estrongs/android/scanner/b/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x4

    const-string v1, "text"

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/scanner/c/e;-><init>(ILjava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/scanner/b/e;

    invoke-direct {v0}, Lcom/estrongs/android/scanner/b/e;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/scanner/c/j;->a:Lcom/estrongs/android/scanner/b/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)Lcom/estrongs/android/scanner/a/c;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/scanner/c/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/scanner/a/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/scanner/a/d;
    .locals 7

    const/4 v2, 0x4

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v1, 0x64

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/bg;->a(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3}, Lcom/estrongs/android/scanner/b/e;->a(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    move v1, v2

    :cond_2
    :goto_1
    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/estrongs/android/scanner/a/h;

    invoke-direct {v0, p1, v1, v3}, Lcom/estrongs/android/scanner/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/estrongs/android/scanner/a/h;->d(I)V

    invoke-virtual {v0, v5}, Lcom/estrongs/android/scanner/a/h;->e(I)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/scanner/a/h;->b(I)V

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lcom/estrongs/android/scanner/b/e;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    invoke-static {v4}, Lcom/estrongs/android/util/bg;->j(I)Z

    move-result v6

    if-eqz v6, :cond_2

    move v1, v2

    goto :goto_1
.end method
