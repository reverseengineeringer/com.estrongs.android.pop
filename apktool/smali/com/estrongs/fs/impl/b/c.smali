.class public Lcom/estrongs/fs/impl/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/i;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/estrongs/fs/impl/b/c;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/h;)Z
    .locals 4

    const/4 v0, 0x1

    check-cast p1, Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/b/d;->h()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/impl/b/c;->a:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/estrongs/fs/impl/b/c;->a:I

    if-ne v2, v0, :cond_2

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-gtz v2, :cond_0

    :cond_2
    iget v2, p0, Lcom/estrongs/fs/impl/b/c;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
