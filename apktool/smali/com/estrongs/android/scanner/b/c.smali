.class public Lcom/estrongs/android/scanner/b/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/estrongs/android/scanner/b/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/estrongs/android/scanner/b/d;

    const-string v1, "/"

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/scanner/b/d;-><init>(Lcom/estrongs/android/scanner/b/c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/scanner/b/c;->a:Lcom/estrongs/android/scanner/b/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/estrongs/android/scanner/b/c;->a:Lcom/estrongs/android/scanner/b/d;

    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    iget-object v0, v2, Lcom/estrongs/android/scanner/b/d;->c:Ljava/util/Map;

    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/scanner/b/d;

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lcom/estrongs/android/scanner/b/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/estrongs/android/scanner/b/c;->a:Lcom/estrongs/android/scanner/b/d;

    move v2, v0

    move-object v3, v1

    move v1, v0

    :goto_0
    array-length v0, v4

    if-ge v1, v0, :cond_0

    aget-object v0, v4, v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_5

    iget-object v0, v3, Lcom/estrongs/android/scanner/b/d;->c:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/scanner/b/d;

    if-eqz v0, :cond_3

    :goto_1
    if-nez v2, :cond_4

    new-instance v3, Lcom/estrongs/android/scanner/b/d;

    invoke-direct {v3, p0, v5}, Lcom/estrongs/android/scanner/b/d;-><init>(Lcom/estrongs/android/scanner/b/c;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/estrongs/android/scanner/b/d;->a(Lcom/estrongs/android/scanner/b/d;)V

    :goto_2
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_2

    iput-object p2, v3, Lcom/estrongs/android/scanner/b/d;->b:Ljava/lang/String;

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    move-object v0, v3

    goto :goto_1

    :cond_4
    move-object v3, v0

    goto :goto_2

    :cond_5
    move-object v0, v3

    goto :goto_1
.end method
