.class public Lcom/estrongs/fs/impl/b/b;
.super Lcom/estrongs/fs/impl/b/c;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/fs/impl/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/h;)Z
    .locals 5

    const/high16 v4, 0x40000

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/fs/impl/b/c;->a(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/b/d;->h()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v2, p0, Lcom/estrongs/fs/impl/b/b;->a:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v4

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/estrongs/fs/impl/b/b;->a:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
