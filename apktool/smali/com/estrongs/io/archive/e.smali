.class public Lcom/estrongs/io/archive/e;
.super Landroid/os/Handler;


# instance fields
.field private a:J

.field public b:Ljava/lang/String;

.field public c:J

.field public d:I

.field public e:Ljava/lang/String;

.field public f:J

.field public g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Landroid/content/Context;

.field private k:Ljava/lang/String;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ProgressBar;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Ljava/lang/String;

.field private t:Lcom/estrongs/android/pop/app/compress/l;

.field private u:Lcom/estrongs/android/ui/notification/d;


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/estrongs/io/archive/e;->c:J

    iput v2, p0, Lcom/estrongs/io/archive/e;->d:I

    iput-wide v4, p0, Lcom/estrongs/io/archive/e;->f:J

    iput v2, p0, Lcom/estrongs/io/archive/e;->g:I

    iput-wide v4, p0, Lcom/estrongs/io/archive/e;->a:J

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/io/archive/e;->h:Ljava/lang/String;

    iput v2, p0, Lcom/estrongs/io/archive/e;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/io/archive/e;->o:Landroid/widget/ProgressBar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/compress/l;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/estrongs/io/archive/e;->c:J

    iput v2, p0, Lcom/estrongs/io/archive/e;->d:I

    iput-wide v4, p0, Lcom/estrongs/io/archive/e;->f:J

    iput v2, p0, Lcom/estrongs/io/archive/e;->g:I

    iput-wide v4, p0, Lcom/estrongs/io/archive/e;->a:J

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/io/archive/e;->h:Ljava/lang/String;

    iput v2, p0, Lcom/estrongs/io/archive/e;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/io/archive/e;->o:Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/estrongs/io/archive/e;->j:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/io/archive/e;->t:Lcom/estrongs/android/pop/app/compress/l;

    iput-object p3, p0, Lcom/estrongs/io/archive/e;->k:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/ui/notification/d;

    invoke-direct {v0, p1}, Lcom/estrongs/android/ui/notification/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/io/archive/e;->u:Lcom/estrongs/android/ui/notification/d;

    iget-object v0, p0, Lcom/estrongs/io/archive/e;->t:Lcom/estrongs/android/pop/app/compress/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/e;->u:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0202b6

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/e;->u:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0805a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->b(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/io/archive/e;->u:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/notification/d;->a(Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/FexApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/estrongs/android/pop/app/ShowDialogActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "compress"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "application"

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notification_id"

    iget-object v2, p0, Lcom/estrongs/io/archive/e;->u:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/notification/d;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/io/archive/e;->u:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v1, v0, v3}, Lcom/estrongs/android/ui/notification/d;->a(Landroid/content/Intent;Z)V

    iget-object v0, p0, Lcom/estrongs/io/archive/e;->u:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/d;->c()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/io/archive/e;->u:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0202bb

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/e;->u:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0805ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->b(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static a(JJ)D
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v0

    :cond_0
    long-to-float v0, p0

    long-to-float v1, p2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    new-instance v1, Ljava/math/BigDecimal;

    float-to-double v2, v0

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v0, 0x2

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/e;->o:Landroid/widget/ProgressBar;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/e;->p:Landroid/widget/TextView;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/io/archive/e;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/io/archive/e;->t:Lcom/estrongs/android/pop/app/compress/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/e;->u:Lcom/estrongs/android/ui/notification/d;

    iget-object v1, p0, Lcom/estrongs/io/archive/e;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->c(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/e;->u:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/notification/d;->c(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/e;->n:Landroid/widget/TextView;

    return-void
.end method

.method public f(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/e;->l:Landroid/widget/TextView;

    return-void
.end method

.method public g(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/e;->m:Landroid/widget/TextView;

    return-void
.end method

.method public h(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/e;->q:Landroid/widget/TextView;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v8, v0, :cond_1

    const-string v0, ""

    iget-object v3, p0, Lcom/estrongs/io/archive/e;->k:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/estrongs/io/archive/e;->k:Ljava/lang/String;

    const-string v4, "{0}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "ArchiveHandler"

    invoke-static {v3, v0}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/estrongs/io/archive/e;->j:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/e;->t:Lcom/estrongs/android/pop/app/compress/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/e;->t:Lcom/estrongs/android/pop/app/compress/l;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/l;->c()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/io/archive/e;->u:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/d;->e()V

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/io/archive/e;->o:Landroid/widget/ProgressBar;

    iget v3, p0, Lcom/estrongs/io/archive/e;->i:I

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/e;->u:Lcom/estrongs/android/ui/notification/d;

    iget v3, p0, Lcom/estrongs/io/archive/e;->i:I

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/notification/d;->c(I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/io/archive/e;->j:Landroid/content/Context;

    iget-object v3, p0, Lcom/estrongs/io/archive/e;->j:Landroid/content/Context;

    const v4, 0x7f080417

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0xa

    if-ne v0, v3, :cond_8

    move v0, v1

    :goto_1
    if-eqz v0, :cond_9

    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.estrongs.android.intent.action.ARCHIVE_DONE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "output_path"

    iget-object v2, p0, Lcom/estrongs/io/archive/e;->s:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/io/archive/e;->j:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/estrongs/io/archive/e;->u:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/d;->e()V

    :cond_4
    const/4 v0, 0x7

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/estrongs/io/archive/e;->u:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/d;->e()V

    :cond_5
    :goto_3
    return-void

    :cond_6
    iget-object v0, p0, Lcom/estrongs/io/archive/e;->k:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/estrongs/io/archive/e;->t:Lcom/estrongs/android/pop/app/compress/l;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/io/archive/e;->t:Lcom/estrongs/android/pop/app/compress/l;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/l;->c()V

    goto :goto_2

    :cond_a
    const/4 v0, 0x3

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_b

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/io/archive/e;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v9, v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/io/archive/e;->m:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/io/archive/e;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Lcom/estrongs/io/archive/e;->c:J

    invoke-static {v0, v1}, Lcom/estrongs/fs/util/j;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/io/archive/e;->a:J

    iget-wide v0, p0, Lcom/estrongs/io/archive/e;->a:J

    invoke-static {v0, v1}, Lcom/estrongs/fs/util/j;->b(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/io/archive/e;->h:Ljava/lang/String;

    iget-wide v0, p0, Lcom/estrongs/io/archive/e;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/estrongs/io/archive/e;->a:J

    :cond_c
    new-instance v0, Ljava/math/BigDecimal;

    iget-wide v2, p0, Lcom/estrongs/io/archive/e;->c:J

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/estrongs/io/archive/e;->a:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0, v8, v9}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/estrongs/io/archive/e;->r:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/io/archive/e;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/estrongs/io/archive/e;->i:I

    iget-object v0, p0, Lcom/estrongs/io/archive/e;->o:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/estrongs/io/archive/e;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/e;->u:Lcom/estrongs/android/ui/notification/d;

    iget v1, p0, Lcom/estrongs/io/archive/e;->i:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->b(I)V

    goto/16 :goto_3

    :cond_d
    const/4 v0, 0x6

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_10

    iget-wide v0, p0, Lcom/estrongs/io/archive/e;->f:J

    invoke-static {v0, v1}, Lcom/estrongs/fs/util/j;->a(J)J

    move-result-wide v0

    new-instance v2, Ljava/math/BigDecimal;

    iget-wide v4, p0, Lcom/estrongs/io/archive/e;->f:J

    long-to-double v4, v4

    long-to-double v6, v0

    div-double/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v2, v8, v9}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lcom/estrongs/io/archive/e;->q:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/estrongs/fs/util/j;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Lcom/estrongs/io/archive/e;->f:J

    iget-wide v2, p0, Lcom/estrongs/io/archive/e;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/io/archive/e;->a(JJ)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/io/archive/e;->f:J

    iget-wide v4, p0, Lcom/estrongs/io/archive/e;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_e

    const-wide v0, 0x4058800000000000L    # 98.0

    :cond_e
    iget v2, p0, Lcom/estrongs/io/archive/e;->i:I

    int-to-double v2, v2

    div-double v4, v0, v10

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/estrongs/io/archive/e;->p:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    cmpg-double v0, v0, v10

    if-gez v0, :cond_f

    iget v0, p0, Lcom/estrongs/io/archive/e;->i:I

    if-lt v2, v0, :cond_11

    iget v0, p0, Lcom/estrongs/io/archive/e;->i:I

    iget v1, p0, Lcom/estrongs/io/archive/e;->i:I

    div-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v1

    :goto_4
    iget-object v1, p0, Lcom/estrongs/io/archive/e;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/estrongs/io/archive/e;->u:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/notification/d;->c(I)V

    goto/16 :goto_3

    :cond_f
    iget-object v0, p0, Lcom/estrongs/io/archive/e;->o:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/estrongs/io/archive/e;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/e;->u:Lcom/estrongs/android/ui/notification/d;

    iget v1, p0, Lcom/estrongs/io/archive/e;->i:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->c(I)V

    goto/16 :goto_3

    :cond_10
    const/4 v0, 0x5

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/io/archive/e;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/io/archive/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/io/archive/e;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/io/archive/e;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_11
    move v0, v2

    goto :goto_4
.end method

.method public i(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/e;->r:Landroid/widget/TextView;

    return-void
.end method
