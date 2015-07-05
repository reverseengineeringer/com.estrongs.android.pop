.class Lcom/baidu/mobstat/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/ao;

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
.method public constructor <init>(Lcom/baidu/mobstat/ao;JLandroid/content/Context;Landroid/support/v4/app/Fragment;JLandroid/content/Context;Landroid/support/v4/app/Fragment;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/mobstat/au;->a:Lcom/baidu/mobstat/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/au;->k:Ljava/lang/String;

    iput-wide p2, p0, Lcom/baidu/mobstat/au;->b:J

    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/au;->c:Ljava/lang/ref/WeakReference;

    :cond_0
    iput-wide p6, p0, Lcom/baidu/mobstat/au;->f:J

    if-eqz p8, :cond_1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/au;->g:Ljava/lang/ref/WeakReference;

    :cond_1
    if-eqz p5, :cond_2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/au;->d:Ljava/lang/ref/WeakReference;

    :cond_2
    if-eqz p9, :cond_3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/au;->h:Ljava/lang/ref/WeakReference;

    :cond_3
    if-eqz p12, :cond_4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/au;->i:Ljava/lang/ref/WeakReference;

    :cond_4
    if-eqz p13, :cond_5

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/au;->e:Ljava/lang/ref/WeakReference;

    :cond_5
    iput p10, p0, Lcom/baidu/mobstat/au;->j:I

    iput-object p11, p0, Lcom/baidu/mobstat/au;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget v0, p0, Lcom/baidu/mobstat/au;->j:I

    if-ne v0, v9, :cond_b

    iget-object v0, p0, Lcom/baidu/mobstat/au;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    iget-object v0, p0, Lcom/baidu/mobstat/au;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v6, :cond_0

    if-nez v0, :cond_2

    :cond_0
    new-array v0, v10, [Ljava/lang/Object;

    const-string v1, "sdkstat"

    aput-object v1, v0, v8

    const-string v1, "onPause, WeakReference is already been released"

    aput-object v1, v0, v9

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->c([Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eq v6, v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mobstat/au;->k:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-array v0, v10, [Ljava/lang/Object;

    const-string v1, "sdkstat"

    aput-object v1, v0, v8

    const-string v1, "onPageStart() or onPageEnd() install error."

    aput-object v1, v0, v9

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->b([Ljava/lang/Object;)I

    goto :goto_0

    :cond_3
    new-array v0, v10, [Ljava/lang/Object;

    const-string v1, "sdkstat"

    aput-object v1, v0, v8

    const-string v1, "onPause() or onResume() install error."

    aput-object v1, v0, v9

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->b([Ljava/lang/Object;)I

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Lcom/baidu/mobstat/au;->b:J

    iget-wide v2, p0, Lcom/baidu/mobstat/au;->f:J

    sub-long v2, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/baidu/mobstat/au;->k:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/baidu/mobstat/au;->k:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/mobstat/au;->a:Lcom/baidu/mobstat/ao;

    iget-object v1, p0, Lcom/baidu/mobstat/au;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ao;->b(Ljava/lang/String;)Lcom/baidu/mobstat/at;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-wide v0, v5, Lcom/baidu/mobstat/at;->d:J

    iget-wide v2, v5, Lcom/baidu/mobstat/at;->c:J

    sub-long/2addr v0, v2

    new-array v2, v10, [Ljava/lang/Object;

    const-string v3, "sdkstat"

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "page time = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v5, Lcom/baidu/mobstat/at;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; time = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v2}, Lcom/baidu/mobstat/util/e;->c([Ljava/lang/Object;)I

    const-wide/16 v2, 0x14

    cmp-long v2, v0, v2

    if-gez v2, :cond_6

    new-array v0, v10, [Ljava/lang/Object;

    const-string v1, "sdkstat"

    aput-object v1, v0, v8

    const-string v1, "page time little than 20 mills."

    aput-object v1, v0, v9

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->c([Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_5
    move-wide v0, v2

    :cond_6
    move-wide v2, v0

    :cond_7
    :goto_1
    const-string v0, "sdkstat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new page view, page name = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", stay time = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "(ms)"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/baidu/mobstat/au;->a:Lcom/baidu/mobstat/ao;

    invoke-static {v0}, Lcom/baidu/mobstat/ao;->a(Lcom/baidu/mobstat/ao;)Lcom/baidu/mobstat/am;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p0, Lcom/baidu/mobstat/au;->f:J

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/am;->a(Ljava/lang/String;JJ)V

    iget-object v0, p0, Lcom/baidu/mobstat/au;->k:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/mobstat/au;->a:Lcom/baidu/mobstat/ao;

    iget-object v1, p0, Lcom/baidu/mobstat/au;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ao;->b(Ljava/lang/String;)Lcom/baidu/mobstat/at;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/baidu/mobstat/au;->a:Lcom/baidu/mobstat/ao;

    iget-wide v2, v0, Lcom/baidu/mobstat/at;->d:J

    invoke-static {v1, v6, v2, v3}, Lcom/baidu/mobstat/ao;->a(Lcom/baidu/mobstat/ao;Landroid/content/Context;J)V

    iget-object v0, p0, Lcom/baidu/mobstat/au;->a:Lcom/baidu/mobstat/ao;

    iget-object v1, p0, Lcom/baidu/mobstat/au;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ao;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    instance-of v0, v6, Landroid/app/Activity;

    if-nez v0, :cond_9

    new-array v0, v10, [Ljava/lang/Object;

    const-string v1, "sdkstat"

    aput-object v1, v0, v8

    const-string v1, "onPause, pause is not a Activity"

    aput-object v1, v0, v9

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->c([Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_9
    move-object v0, v6

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_7

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/baidu/mobstat/au;->a:Lcom/baidu/mobstat/ao;

    iget-wide v2, p0, Lcom/baidu/mobstat/au;->b:J

    invoke-static {v0, v6, v2, v3}, Lcom/baidu/mobstat/ao;->a(Lcom/baidu/mobstat/ao;Landroid/content/Context;J)V

    goto/16 :goto_0

    :cond_b
    iget v0, p0, Lcom/baidu/mobstat/au;->j:I

    if-ne v0, v10, :cond_f

    iget-object v0, p0, Lcom/baidu/mobstat/au;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lcom/baidu/mobstat/au;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_c

    if-nez v0, :cond_d

    :cond_c
    new-array v0, v10, [Ljava/lang/Object;

    const-string v1, "sdkstat"

    aput-object v1, v0, v8

    const-string v1, "onPause, WeakReference is already been released"

    aput-object v1, v0, v9

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->c([Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_d
    if-eq v6, v0, :cond_e

    new-array v0, v10, [Ljava/lang/Object;

    const-string v1, "sdkstat"

    aput-object v1, v0, v8

    const-string v1, "onPause() or onResume() install error."

    aput-object v1, v0, v9

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->c([Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_e
    iget-wide v0, p0, Lcom/baidu/mobstat/au;->b:J

    iget-wide v2, p0, Lcom/baidu/mobstat/au;->f:J

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

    const-string v4, "sdkstat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fragment new page view, page name = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", stay time = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "(ms)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/baidu/mobstat/au;->a:Lcom/baidu/mobstat/ao;

    invoke-static {v0}, Lcom/baidu/mobstat/ao;->a(Lcom/baidu/mobstat/ao;)Lcom/baidu/mobstat/am;

    move-result-object v0

    iget-wide v4, p0, Lcom/baidu/mobstat/au;->f:J

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/am;->a(Ljava/lang/String;JJ)V

    iget-object v0, p0, Lcom/baidu/mobstat/au;->a:Lcom/baidu/mobstat/ao;

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->b()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/mobstat/au;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/mobstat/ao;->a(Lcom/baidu/mobstat/ao;Landroid/content/Context;J)V

    goto/16 :goto_0

    :cond_f
    iget v0, p0, Lcom/baidu/mobstat/au;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/baidu/mobstat/au;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/au;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_10

    if-nez v1, :cond_11

    :cond_10
    new-array v0, v10, [Ljava/lang/Object;

    const-string v1, "sdkstat"

    aput-object v1, v0, v8

    const-string v1, "onPause, WeakReference is already been released"

    aput-object v1, v0, v9

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->c([Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_11
    if-eq v0, v1, :cond_12

    new-array v0, v10, [Ljava/lang/Object;

    const-string v1, "sdkstat"

    aput-object v1, v0, v8

    const-string v1, "onPause() or onResume() install error."

    aput-object v1, v0, v9

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->c([Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_12
    iget-wide v2, p0, Lcom/baidu/mobstat/au;->b:J

    iget-wide v4, p0, Lcom/baidu/mobstat/au;->f:J

    sub-long/2addr v2, v4

    invoke-static {v0}, Lcom/baidu/mobstat/ao;->a(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_13

    const-string v0, "getContxtFromReverse faild."

    invoke-static {v0}, Lcom/baidu/mobstat/util/e;->c(Ljava/lang/String;)I

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

    const-string v4, "sdkstat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android.app.Fragment new page view, page name = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "; stay time = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "(ms)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/baidu/mobstat/util/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/baidu/mobstat/au;->a:Lcom/baidu/mobstat/ao;

    invoke-static {v0}, Lcom/baidu/mobstat/ao;->a(Lcom/baidu/mobstat/ao;)Lcom/baidu/mobstat/am;

    move-result-object v0

    iget-wide v4, p0, Lcom/baidu/mobstat/au;->f:J

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mobstat/am;->a(Ljava/lang/String;JJ)V

    iget-object v0, p0, Lcom/baidu/mobstat/au;->a:Lcom/baidu/mobstat/ao;

    iget-wide v2, p0, Lcom/baidu/mobstat/au;->b:J

    invoke-static {v0, v6, v2, v3}, Lcom/baidu/mobstat/ao;->a(Lcom/baidu/mobstat/ao;Landroid/content/Context;J)V

    goto/16 :goto_0
.end method
