.class Lcom/baidu/mobstat/cg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/ca;

.field private b:J

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/ca;JLandroid/content/Context;Landroid/support/v4/app/Fragment;JLandroid/content/Context;Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/mobstat/cg;->a:Lcom/baidu/mobstat/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/cg;->k:Ljava/lang/String;

    iput-wide p2, p0, Lcom/baidu/mobstat/cg;->b:J

    iput-wide p6, p0, Lcom/baidu/mobstat/cg;->f:J

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/cg;->c:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/cg;->g:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/cg;->d:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/cg;->h:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/cg;->i:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/cg;->e:Ljava/lang/ref/WeakReference;

    iput p10, p0, Lcom/baidu/mobstat/cg;->j:I

    iput-object p11, p0, Lcom/baidu/mobstat/cg;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v5, 0x0

    iget v0, p0, Lcom/baidu/mobstat/cg;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/baidu/mobstat/cg;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    iget-object v0, p0, Lcom/baidu/mobstat/cg;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v6, :cond_0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "onPause, WeakReference is already been released"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eq v6, v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mobstat/cg;->k:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "onPageStart() or onPageEnd() install error."

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "onPause() or onResume() install error."

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Lcom/baidu/mobstat/cg;->b:J

    iget-wide v2, p0, Lcom/baidu/mobstat/cg;->f:J

    sub-long v2, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/baidu/mobstat/cg;->k:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/baidu/mobstat/cg;->k:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Lcom/baidu/mobstat/ca;

    iget-object v1, p0, Lcom/baidu/mobstat/cg;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ca;->a(Lcom/baidu/mobstat/ca;Ljava/lang/String;)Lcom/baidu/mobstat/cf;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-wide v0, v5, Lcom/baidu/mobstat/cf;->d:J

    iget-wide v2, v5, Lcom/baidu/mobstat/cf;->c:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "page time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Lcom/baidu/mobstat/cf;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/cr;->c(Ljava/lang/String;)V

    const-wide/16 v2, 0x14

    cmp-long v2, v0, v2

    if-gez v2, :cond_6

    const-string v0, "page time little than 20 mills."

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-wide v0, v2

    :cond_6
    move-wide v2, v0

    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new page view, page name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stay time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Lcom/baidu/mobstat/ca;

    invoke-static {v0}, Lcom/baidu/mobstat/ca;->a(Lcom/baidu/mobstat/ca;)Lcom/baidu/mobstat/by;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p0, Lcom/baidu/mobstat/cg;->f:J

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/by;->a(Ljava/lang/String;JJ)V

    iget-object v0, p0, Lcom/baidu/mobstat/cg;->k:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Lcom/baidu/mobstat/ca;

    iget-object v1, p0, Lcom/baidu/mobstat/cg;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ca;->a(Lcom/baidu/mobstat/ca;Ljava/lang/String;)Lcom/baidu/mobstat/cf;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/baidu/mobstat/cg;->a:Lcom/baidu/mobstat/ca;

    iget-wide v2, v0, Lcom/baidu/mobstat/cf;->d:J

    invoke-static {v1, v6, v2, v3}, Lcom/baidu/mobstat/ca;->a(Lcom/baidu/mobstat/ca;Landroid/content/Context;J)V

    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Lcom/baidu/mobstat/ca;

    iget-object v1, p0, Lcom/baidu/mobstat/cg;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mobstat/ca;->b(Lcom/baidu/mobstat/ca;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    instance-of v0, v6, Landroid/app/Activity;

    if-nez v0, :cond_9

    const-string v0, "onPause, pause is not a Activity"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move-object v0, v6

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Lcom/baidu/mobstat/ca;

    iget-wide v2, p0, Lcom/baidu/mobstat/cg;->b:J

    invoke-static {v0, v6, v2, v3}, Lcom/baidu/mobstat/ca;->a(Lcom/baidu/mobstat/ca;Landroid/content/Context;J)V

    goto/16 :goto_0

    :cond_b
    iget v0, p0, Lcom/baidu/mobstat/cg;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/baidu/mobstat/cg;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lcom/baidu/mobstat/cg;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_c

    if-nez v0, :cond_d

    :cond_c
    const-string v0, "onPause, WeakReference is already been released"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    if-eq v6, v0, :cond_e

    const-string v0, "onPause() or onResume() install error."

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    iget-wide v0, p0, Lcom/baidu/mobstat/cg;->b:J

    iget-wide v2, p0, Lcom/baidu/mobstat/cg;->f:J

    sub-long v2, v0, v2

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fragment new page view, page name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", stay time = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "(ms)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Lcom/baidu/mobstat/ca;

    invoke-static {v0}, Lcom/baidu/mobstat/ca;->a(Lcom/baidu/mobstat/ca;)Lcom/baidu/mobstat/by;

    move-result-object v0

    iget-wide v4, p0, Lcom/baidu/mobstat/cg;->f:J

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/by;->a(Ljava/lang/String;JJ)V

    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Lcom/baidu/mobstat/ca;

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/mobstat/cg;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/mobstat/ca;->a(Lcom/baidu/mobstat/ca;Landroid/content/Context;J)V

    goto/16 :goto_0

    :cond_f
    iget v0, p0, Lcom/baidu/mobstat/cg;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/baidu/mobstat/cg;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/cg;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_10

    if-nez v1, :cond_11

    :cond_10
    const-string v0, "onPause, WeakReference is already been released"

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    if-eq v0, v1, :cond_12

    const-string v0, "onPause() or onResume() install error."

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    iget-wide v2, p0, Lcom/baidu/mobstat/cg;->b:J

    iget-wide v4, p0, Lcom/baidu/mobstat/cg;->f:J

    sub-long/2addr v2, v4

    invoke-static {v0}, Lcom/baidu/mobstat/ca;->a(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_13

    const-string v0, "getContxtFromReverse faild."

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.app.Fragment new page view, page name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "; stay time = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "(ms)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/cr;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Lcom/baidu/mobstat/ca;

    invoke-static {v0}, Lcom/baidu/mobstat/ca;->a(Lcom/baidu/mobstat/ca;)Lcom/baidu/mobstat/by;

    move-result-object v0

    iget-wide v4, p0, Lcom/baidu/mobstat/cg;->f:J

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/by;->a(Ljava/lang/String;JJ)V

    iget-object v0, p0, Lcom/baidu/mobstat/cg;->a:Lcom/baidu/mobstat/ca;

    iget-wide v2, p0, Lcom/baidu/mobstat/cg;->b:J

    invoke-static {v0, v6, v2, v3}, Lcom/baidu/mobstat/ca;->a(Lcom/baidu/mobstat/ca;Landroid/content/Context;J)V

    goto/16 :goto_0
.end method
