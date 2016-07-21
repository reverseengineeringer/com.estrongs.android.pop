.class public Lcom/estrongs/android/ui/e/il;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "#home_page#"

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "recommend"

    aput-object v1, v0, v2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "disk_analysis"

    aput-object v1, v0, v2

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->cj(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bm(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v2

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->V(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->u(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "analyse"

    aput-object v1, v0, v2

    goto :goto_0

    :cond_6
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->v(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lock_page"

    aput-object v1, v0, v2

    const-string v1, "unlock_page"

    aput-object v1, v0, v3

    goto :goto_0

    :cond_7
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "disk_analysis"

    aput-object v1, v0, v2

    goto :goto_0

    :cond_8
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bx(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "refresh"

    aput-object v1, v0, v2

    goto :goto_0
.end method
