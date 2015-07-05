.class Lcom/estrongs/android/pop/view/utils/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/ab;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/utils/n;

.field private b:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/utils/n;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/view/utils/s;->a:Lcom/estrongs/android/pop/view/utils/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/view/utils/s;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;JJ)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6

    const-wide/16 v4, 0x0

    iget v0, p0, Lcom/estrongs/android/pop/view/utils/s;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/view/utils/s;->b:I

    check-cast p1, Lcom/estrongs/android/util/y;

    iget-object v0, p1, Lcom/estrongs/android/util/y;->d:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/view/utils/v;

    iget-object v1, p1, Lcom/estrongs/android/util/y;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/estrongs/android/util/y;->g()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/android/util/y;->a()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget v2, p0, Lcom/estrongs/android/pop/view/utils/s;->b:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/android/util/y;->f()V

    :goto_0
    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/v;->m:[Lcom/estrongs/android/util/y;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/estrongs/android/util/y;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/estrongs/android/util/y;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iget-object v0, p1, Lcom/estrongs/android/util/y;->d:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/view/utils/v;

    iget-object v0, p1, Lcom/estrongs/android/util/y;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    const v2, 0x1e24b

    iput v2, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg2:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/s;->a:Lcom/estrongs/android/pop/view/utils/n;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/os/Message;J)V

    return-void
.end method
