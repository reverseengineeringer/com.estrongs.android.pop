.class Lcom/estrongs/android/view/df;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/i;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/view/df;->a:I

    iput p1, p0, Lcom/estrongs/android/view/df;->a:I

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/h;)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "item_is_scanned_server"

    invoke-interface {p1, v1}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/Object;)Z

    move-result v1

    iget v2, p0, Lcom/estrongs/android/view/df;->a:I

    if-ne v2, v0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/estrongs/android/view/df;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
