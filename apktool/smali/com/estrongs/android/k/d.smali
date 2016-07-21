.class public Lcom/estrongs/android/k/d;
.super Lcom/estrongs/android/k/e;


# instance fields
.field private a:Lcom/estrongs/android/k/f;

.field private b:Lcom/estrongs/android/k/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/k/d;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/k/e;-><init>(Ljava/lang/String;JZZ)V

    new-instance v0, Lcom/estrongs/android/k/f;

    invoke-direct {v0, p2}, Lcom/estrongs/android/k/f;-><init>(Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/estrongs/android/k/d;->a:Lcom/estrongs/android/k/f;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .locals 3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "lockname"

    invoke-virtual {p0}, Lcom/estrongs/android/k/d;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "locked"

    invoke-virtual {p0}, Lcom/estrongs/android/k/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(J)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/estrongs/android/k/d;->a(JZ)V

    return-void
.end method

.method public a(JZ)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/k/e;->a(J)V

    return-void
.end method

.method public a(Lcom/estrongs/android/k/f;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/k/d;->a:Lcom/estrongs/android/k/f;

    return-void
.end method

.method public a(Lcom/estrongs/android/k/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/k/d;->b:Lcom/estrongs/android/k/g;

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/k/d;->a(ZZ)V

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    invoke-super {p0, p1}, Lcom/estrongs/android/k/e;->a(Z)V

    return-void
.end method

.method public b()Lcom/estrongs/android/k/f;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/k/d;->a:Lcom/estrongs/android/k/f;

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/k/d;->b(ZZ)V

    return-void
.end method

.method public b(ZZ)V
    .locals 0

    invoke-super {p0, p1}, Lcom/estrongs/android/k/e;->b(Z)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/k/d;->d()V

    :cond_0
    return-void
.end method

.method public c()Lcom/estrongs/android/k/g;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/k/d;->b:Lcom/estrongs/android/k/g;

    return-object v0
.end method

.method public d()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/k/h;->a()Lcom/estrongs/android/k/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/k/h;->b(Lcom/estrongs/android/k/d;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/estrongs/android/k/d;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/estrongs/android/k/d;

    invoke-virtual {p0}, Lcom/estrongs/android/k/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/estrongs/android/k/d;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/k/d;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
