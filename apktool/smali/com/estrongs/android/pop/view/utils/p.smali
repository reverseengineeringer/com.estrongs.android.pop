.class Lcom/estrongs/android/pop/view/utils/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/util/ab;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/utils/n;

.field private b:J

.field private c:J


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/utils/n;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/utils/p;->a:Lcom/estrongs/android/pop/view/utils/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/estrongs/android/pop/view/utils/p;->b:J

    iput-wide v0, p0, Lcom/estrongs/android/pop/view/utils/p;->c:J

    return-void
.end method

.method private a(Lcom/estrongs/android/util/y;I)V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/p;->a:Lcom/estrongs/android/pop/view/utils/n;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/os/Message;J)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/estrongs/android/util/y;

    iget-object v0, p1, Lcom/estrongs/android/util/y;->d:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/view/utils/v;

    const/4 v1, 0x1

    iput v1, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/p;->a:Lcom/estrongs/android/pop/view/utils/n;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/n;->a(Lcom/estrongs/android/pop/view/utils/n;)V

    const v0, 0x1e246

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/view/utils/p;->a(Lcom/estrongs/android/util/y;I)V

    return-void
.end method

.method public a(Ljava/lang/Object;JJ)V
    .locals 6

    check-cast p1, Lcom/estrongs/android/util/y;

    iget-object v0, p1, Lcom/estrongs/android/util/y;->d:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/view/utils/v;

    iget-wide v2, v0, Lcom/estrongs/android/pop/view/utils/v;->t:J

    invoke-virtual {p1}, Lcom/estrongs/android/util/y;->g()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/android/util/y;->g()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/estrongs/android/pop/view/utils/v;->t:J

    iget-object v1, p0, Lcom/estrongs/android/pop/view/utils/p;->a:Lcom/estrongs/android/pop/view/utils/n;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/utils/n;->a(Lcom/estrongs/android/pop/view/utils/n;)V

    :cond_0
    invoke-virtual {p1}, Lcom/estrongs/android/util/y;->a()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/estrongs/android/pop/view/utils/v;->u:J

    const v0, 0x1e247

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/view/utils/p;->a(Lcom/estrongs/android/util/y;I)V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x1

    check-cast p1, Lcom/estrongs/android/util/y;

    iget-object v0, p1, Lcom/estrongs/android/util/y;->d:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/view/utils/v;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserCannelled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/estrongs/android/util/y;->h()V

    iget v1, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    if-eq v1, v7, :cond_0

    iget v1, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    if-ne v1, v6, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/p;->a:Lcom/estrongs/android/pop/view/utils/n;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/n;->a(Lcom/estrongs/android/pop/view/utils/n;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/estrongs/android/util/y;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/estrongs/android/pop/view/utils/p;->b:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    invoke-virtual {p1}, Lcom/estrongs/android/util/y;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/view/utils/p;->b:J

    invoke-virtual {p1}, Lcom/estrongs/android/util/y;->f()V

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/estrongs/android/pop/view/utils/p;->c:J

    const-wide/16 v4, 0x3

    cmp-long v1, v2, v4

    if-gez v1, :cond_4

    invoke-virtual {p1}, Lcom/estrongs/android/util/y;->f()V

    iget-wide v0, p0, Lcom/estrongs/android/pop/view/utils/p;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/view/utils/p;->c:J

    goto :goto_0

    :cond_4
    iget v1, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    if-eq v1, v7, :cond_5

    iget v1, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    if-ne v1, v6, :cond_6

    :cond_5
    const/4 v1, 0x2

    iput v1, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/p;->a:Lcom/estrongs/android/pop/view/utils/n;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/n;->a(Lcom/estrongs/android/pop/view/utils/n;)V

    :cond_6
    const v0, 0x1e245

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/view/utils/p;->a(Lcom/estrongs/android/util/y;I)V

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/estrongs/android/util/y;

    iget-object v0, p1, Lcom/estrongs/android/util/y;->d:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/android/pop/view/utils/v;

    const/4 v1, 0x3

    iput v1, v0, Lcom/estrongs/android/pop/view/utils/v;->q:I

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/p;->a:Lcom/estrongs/android/pop/view/utils/n;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/n;->a(Lcom/estrongs/android/pop/view/utils/n;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/utils/p;->a:Lcom/estrongs/android/pop/view/utils/n;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/utils/n;->a(Lcom/estrongs/android/pop/view/utils/n;Lcom/estrongs/android/util/y;)V

    const v0, 0x1e248

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/view/utils/p;->a(Lcom/estrongs/android/util/y;I)V

    return-void
.end method
