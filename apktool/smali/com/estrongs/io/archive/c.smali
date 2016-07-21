.class public Lcom/estrongs/io/archive/c;
.super Lcom/estrongs/io/archive/e;


# instance fields
.field private a:Ljava/lang/String;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Landroid/content/Context;

.field private l:Ljava/lang/String;

.field private m:Landroid/widget/ProgressBar;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/TextView;

.field private s:Ljava/lang/String;

.field private t:Lcom/estrongs/android/pop/app/compress/l;

.field private u:Lcom/estrongs/android/ui/notification/d;

.field private v:I

.field private w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/compress/l;Ljava/lang/String;Z)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/estrongs/io/archive/e;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/io/archive/c;->h:J

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/io/archive/c;->i:Ljava/lang/String;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/estrongs/io/archive/c;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/io/archive/c;->m:Landroid/widget/ProgressBar;

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/io/archive/c;->v:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/io/archive/c;->w:Z

    iput-boolean p4, p0, Lcom/estrongs/io/archive/c;->w:Z

    iput-object p1, p0, Lcom/estrongs/io/archive/c;->k:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/io/archive/c;->t:Lcom/estrongs/android/pop/app/compress/l;

    iput-object p3, p0, Lcom/estrongs/io/archive/c;->l:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/ui/notification/d;

    invoke-direct {v0, p1}, Lcom/estrongs/android/ui/notification/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/io/archive/c;->u:Lcom/estrongs/android/ui/notification/d;

    iget-boolean v0, p0, Lcom/estrongs/io/archive/c;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->u:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0202b6

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->u:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0805a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->b(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/io/archive/c;->u:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/notification/d;->a(Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/FexApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;

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

    iget-object v2, p0, Lcom/estrongs/io/archive/c;->u:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/notification/d;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/io/archive/c;->u:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v1, v0, v3}, Lcom/estrongs/android/ui/notification/d;->a(Landroid/content/Intent;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/io/archive/c;->u:Lcom/estrongs/android/ui/notification/d;

    const v1, 0x7f0202bb

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->a(I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->u:Lcom/estrongs/android/ui/notification/d;

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

.method private a(I)V
    .locals 4

    const v2, 0x7f0802e5

    const v1, 0x7f020417

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->q:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/io/archive/c;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/io/archive/c;->q:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/io/archive/c;->k:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0203fd

    const v3, 0x7f0d010b

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/theme/at;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/io/archive/c;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/estrongs/io/archive/c;->w:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/io/archive/c;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/io/archive/c;->q:Landroid/widget/ImageView;

    const v1, 0x7f02042e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->q:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->q:Landroid/widget/ImageView;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESImageView;

    iget-object v1, p0, Lcom/estrongs/io/archive/c;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESImageView;->setTopCornerImage(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->q:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/utils/aa;->a()Lcom/estrongs/android/pop/utils/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/io/archive/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/utils/aa;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/io/archive/c;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/io/archive/c;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/io/archive/c;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/estrongs/io/archive/c;->v:I

    return v0
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/c;->q:Landroid/widget/ImageView;

    return-void
.end method

.method public a(Landroid/widget/ProgressBar;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/io/archive/c;->m:Landroid/widget/ProgressBar;

    iget v0, p0, Lcom/estrongs/io/archive/c;->j:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method

.method public a(Landroid/widget/TextView;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/io/archive/c;->r:Landroid/widget/TextView;

    iget v0, p0, Lcom/estrongs/io/archive/c;->v:I

    invoke-direct {p0, v0}, Lcom/estrongs/io/archive/c;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/c;->n:Landroid/widget/TextView;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/io/archive/c;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->t:Lcom/estrongs/android/pop/app/compress/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->u:Lcom/estrongs/android/ui/notification/d;

    iget-object v1, p0, Lcom/estrongs/io/archive/c;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->c(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/c;->o:Landroid/widget/TextView;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->u:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/notification/d;->c(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/c;->p:Landroid/widget/TextView;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/io/archive/c;->a:Ljava/lang/String;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v8, v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/estrongs/io/archive/c;->l:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/estrongs/io/archive/c;->l:Ljava/lang/String;

    const-string v4, "{0}"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "ArchiveHandler"

    invoke-static {v1, v0}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/io/archive/c;->k:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->t:Lcom/estrongs/android/pop/app/compress/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->t:Lcom/estrongs/android/pop/app/compress/l;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/l;->c()V

    :cond_0
    iput v9, p0, Lcom/estrongs/io/archive/c;->v:I

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->u:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/d;->e()V

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->m:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/estrongs/io/archive/c;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->u:Lcom/estrongs/android/ui/notification/d;

    iget v1, p0, Lcom/estrongs/io/archive/c;->j:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->c(I)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/io/archive/c;->k:Landroid/content/Context;

    const v4, 0x7f080417

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/estrongs/io/archive/c;->v:I

    iget v0, p0, Lcom/estrongs/io/archive/c;->v:I

    invoke-direct {p0, v0}, Lcom/estrongs/io/archive/c;->a(I)V

    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    move v1, v2

    :goto_1
    if-eqz v1, :cond_9

    new-instance v4, Landroid/content/Intent;

    const-string v0, "com.estrongs.android.intent.action.ARCHIVE_DONE"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "output_path"

    iget-object v5, p0, Lcom/estrongs/io/archive/c;->s:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->k:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    :goto_2
    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->u:Lcom/estrongs/android/ui/notification/d;

    iget-object v4, p0, Lcom/estrongs/io/archive/c;->k:Landroid/content/Context;

    const v5, 0x7f080074

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/notification/d;->b(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lcom/estrongs/io/archive/c;->u:Lcom/estrongs/android/ui/notification/d;

    iget-object v4, p0, Lcom/estrongs/io/archive/c;->k:Landroid/content/Context;

    const v5, 0x7f08047f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/notification/d;->c(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->u:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/d;->a()V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->u:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/notification/d;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v1, :cond_4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/estrongs/io/archive/c;->a:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/estrongs/io/archive/c;->o:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v4, p0, Lcom/estrongs/io/archive/c;->p:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_4
    const/4 v0, 0x7

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->u:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/d;->e()V

    iput v8, p0, Lcom/estrongs/io/archive/c;->v:I

    iget v0, p0, Lcom/estrongs/io/archive/c;->v:I

    invoke-direct {p0, v0}, Lcom/estrongs/io/archive/c;->a(I)V

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/estrongs/io/archive/c;->l:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    move v1, v3

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/estrongs/io/archive/c;->t:Lcom/estrongs/android/pop/app/compress/l;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->t:Lcom/estrongs/android/pop/app/compress/l;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/l;->c()V

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/estrongs/io/archive/c;->u:Lcom/estrongs/android/ui/notification/d;

    iget-object v4, p0, Lcom/estrongs/io/archive/c;->k:Landroid/content/Context;

    const v5, 0x7f080084

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/notification/d;->b(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_b
    const/4 v0, 0x3

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_c

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/io/archive/c;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v9, v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->u:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/d;->c()V

    iput v2, p0, Lcom/estrongs/io/archive/c;->v:I

    iget v0, p0, Lcom/estrongs/io/archive/c;->v:I

    invoke-direct {p0, v0}, Lcom/estrongs/io/archive/c;->a(I)V

    iget-wide v0, p0, Lcom/estrongs/io/archive/c;->c:J

    invoke-static {v0, v1}, Lcom/estrongs/fs/util/j;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/io/archive/c;->h:J

    iget-wide v0, p0, Lcom/estrongs/io/archive/c;->h:J

    invoke-static {v0, v1}, Lcom/estrongs/fs/util/j;->b(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/io/archive/c;->i:Ljava/lang/String;

    iget-wide v0, p0, Lcom/estrongs/io/archive/c;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/estrongs/io/archive/c;->h:J

    :cond_d
    new-instance v0, Ljava/math/BigDecimal;

    iget-wide v2, p0, Lcom/estrongs/io/archive/c;->c:J

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/estrongs/io/archive/c;->h:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0, v8, v9}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->m:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/estrongs/io/archive/c;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->u:Lcom/estrongs/android/ui/notification/d;

    iget v1, p0, Lcom/estrongs/io/archive/c;->j:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->b(I)V

    goto/16 :goto_5

    :cond_e
    const/4 v0, 0x6

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-wide v0, p0, Lcom/estrongs/io/archive/c;->f:J

    invoke-static {v0, v1}, Lcom/estrongs/fs/util/j;->a(J)J

    move-result-wide v0

    new-instance v2, Ljava/math/BigDecimal;

    iget-wide v4, p0, Lcom/estrongs/io/archive/c;->f:J

    long-to-double v4, v4

    long-to-double v0, v0

    div-double v0, v4, v0

    invoke-direct {v2, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v2, v8, v9}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    iget-wide v0, p0, Lcom/estrongs/io/archive/c;->f:J

    iget-wide v2, p0, Lcom/estrongs/io/archive/c;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/io/archive/c;->a(JJ)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/io/archive/c;->f:J

    iget-wide v4, p0, Lcom/estrongs/io/archive/c;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_f

    const-wide v0, 0x4058800000000000L    # 98.0

    :cond_f
    iget v2, p0, Lcom/estrongs/io/archive/c;->j:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double v4, v0, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/estrongs/io/archive/c;->n:Landroid/widget/TextView;

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

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_10

    iget v0, p0, Lcom/estrongs/io/archive/c;->j:I

    if-lt v2, v0, :cond_12

    iget v0, p0, Lcom/estrongs/io/archive/c;->j:I

    iget v1, p0, Lcom/estrongs/io/archive/c;->j:I

    div-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v1

    :goto_6
    iget-object v1, p0, Lcom/estrongs/io/archive/c;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p0, Lcom/estrongs/io/archive/c;->u:Lcom/estrongs/android/ui/notification/d;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/notification/d;->c(I)V

    goto/16 :goto_5

    :cond_10
    iget-object v0, p0, Lcom/estrongs/io/archive/c;->m:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/estrongs/io/archive/c;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/estrongs/io/archive/c;->u:Lcom/estrongs/android/ui/notification/d;

    iget v1, p0, Lcom/estrongs/io/archive/c;->j:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/notification/d;->c(I)V

    goto/16 :goto_5

    :cond_11
    const/4 v0, 0x5

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_5

    goto/16 :goto_5

    :cond_12
    move v0, v2

    goto :goto_6
.end method
