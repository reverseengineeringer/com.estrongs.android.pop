.class public Lcom/estrongs/android/view/ak;
.super Lcom/estrongs/android/view/ea;


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/view/View;

.field private C:J

.field private D:J

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:J

.field private I:J

.field private J:I

.field private K:I

.field a:Z

.field public final b:Landroid/os/Handler;

.field public final c:Lcom/estrongs/a/a/l;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:I

.field private i:Landroid/widget/ProgressBar;

.field private j:Landroid/widget/ProgressBar;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/view/View;

.field private y:Landroid/view/View;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/ea;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/ak;->a:Z

    new-instance v0, Lcom/estrongs/android/view/al;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/al;-><init>(Lcom/estrongs/android/view/ak;)V

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->b:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/view/am;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/am;-><init>(Lcom/estrongs/android/view/ak;)V

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->c:Lcom/estrongs/a/a/l;

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/view/ak;->h:I

    iput-wide v4, p0, Lcom/estrongs/android/view/ak;->C:J

    iput-wide v4, p0, Lcom/estrongs/android/view/ak;->D:J

    iput-object v2, p0, Lcom/estrongs/android/view/ak;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/view/ak;->e:Ljava/lang/String;

    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->k:Landroid/widget/TextView;

    const v0, 0x7f0a0109

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->l:Landroid/widget/TextView;

    const v0, 0x7f0a016d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->m:Landroid/widget/TextView;

    const v0, 0x7f0a010a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->z:Landroid/view/View;

    const v0, 0x7f0a0176

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->A:Landroid/view/View;

    const v0, 0x7f0a010d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->n:Landroid/widget/TextView;

    const v0, 0x7f0a010e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->o:Landroid/widget/TextView;

    const v0, 0x7f0a016c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->p:Landroid/widget/TextView;

    const v0, 0x7f0a0171

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->q:Landroid/widget/TextView;

    const v0, 0x7f0a0174

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->r:Landroid/widget/TextView;

    const v0, 0x7f0a0175

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->i:Landroid/widget/ProgressBar;

    const v0, 0x7f0a016b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->x:Landroid/view/View;

    const v0, 0x7f0a0170

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->y:Landroid/view/View;

    const v0, 0x7f0a016e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->s:Landroid/widget/TextView;

    const v0, 0x7f0a0172

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->t:Landroid/widget/TextView;

    const v0, 0x7f0a0173

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->u:Landroid/widget/TextView;

    const v0, 0x7f0a0178

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->v:Landroid/widget/TextView;

    const v0, 0x7f0a0179

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->w:Landroid/widget/TextView;

    const v0, 0x7f0a016f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->j:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0113

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->B:Landroid/view/View;

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-eqz p3, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ak;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a010b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/ak;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a010c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic A(Lcom/estrongs/android/view/ak;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic B(Lcom/estrongs/android/view/ak;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(JJ)D
    .locals 7

    const-wide/16 v4, 0x0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v4

    if-eqz v2, :cond_0

    cmp-long v2, p3, v4

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    long-to-float v2, p1

    long-to-float v3, p3

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    :try_start_0
    new-instance v3, Ljava/math/BigDecimal;

    float-to-double v4, v2

    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v2, 0x2

    const/4 v4, 0x4

    invoke-virtual {v3, v2, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/view/ak;JJ)D
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/android/view/ak;->a(JJ)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/estrongs/android/view/ak;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->i:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private a(JI)Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    const/16 v8, 0xa

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-string v0, "00:00:00"

    :goto_0
    return-object v0

    :cond_0
    if-gtz p3, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->ad:Landroid/app/Activity;

    const v1, 0x7f0b0277

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    int-to-long v0, p3

    div-long v0, p1, v0

    const-wide/16 v2, 0xf

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    iget v2, p0, Lcom/estrongs/android/view/ak;->h:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    iput-wide v0, p0, Lcom/estrongs/android/view/ak;->g:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/estrongs/android/view/ak;->f:J

    iput v4, p0, Lcom/estrongs/android/view/ak;->h:I

    :cond_2
    :goto_1
    const-wide/16 v2, 0xe10

    div-long v2, v0, v2

    long-to-int v2, v2

    mul-int/lit16 v3, v2, 0xe10

    int-to-long v4, v3

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3c

    div-long/2addr v4, v6

    long-to-int v3, v4

    mul-int/lit16 v4, v2, 0xe10

    int-to-long v4, v4

    sub-long/2addr v0, v4

    mul-int/lit8 v4, v3, 0x3c

    int-to-long v4, v4

    sub-long/2addr v0, v4

    long-to-int v1, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v2, v8, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ge v3, v8, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ge v1, v8, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    iget v2, p0, Lcom/estrongs/android/view/ak;->h:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/estrongs/android/view/ak;->f:J

    long-to-double v4, v4

    sub-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iget-wide v4, p0, Lcom/estrongs/android/view/ak;->g:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    long-to-int v3, v4

    if-lez v3, :cond_4

    int-to-long v0, v3

    :cond_4
    iput v2, p0, Lcom/estrongs/android/view/ak;->h:I

    goto/16 :goto_1

    :cond_5
    iput-wide v0, p0, Lcom/estrongs/android/view/ak;->g:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/estrongs/android/view/ak;->f:J

    iput v4, p0, Lcom/estrongs/android/view/ak;->h:I

    goto/16 :goto_1

    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4
.end method

.method static synthetic a(Lcom/estrongs/android/view/ak;JI)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/ak;->a(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/view/ak;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ak;->G:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/estrongs/android/view/ak;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->j:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/view/ak;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/view/ak;->C:J

    return-wide v0
.end method

.method static synthetic d(Lcom/estrongs/android/view/ak;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/view/ak;->D:J

    return-wide v0
.end method

.method static synthetic e(Lcom/estrongs/android/view/ak;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/view/ak;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/view/ak;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->E:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/view/ak;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/view/ak;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->F:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/view/ak;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->G:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/view/ak;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/view/ak;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->x:Landroid/view/View;

    return-object v0
.end method

.method static synthetic m(Lcom/estrongs/android/view/ak;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/view/ak;->H:J

    return-wide v0
.end method

.method static synthetic n(Lcom/estrongs/android/view/ak;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/view/ak;->I:J

    return-wide v0
.end method

.method static synthetic o(Lcom/estrongs/android/view/ak;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/estrongs/android/view/ak;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/estrongs/android/view/ak;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic r(Lcom/estrongs/android/view/ak;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->t:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic s(Lcom/estrongs/android/view/ak;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/estrongs/android/view/ak;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/ak;->J:I

    return v0
.end method

.method static synthetic u(Lcom/estrongs/android/view/ak;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/ak;->K:I

    return v0
.end method

.method static synthetic v(Lcom/estrongs/android/view/ak;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->B:Landroid/view/View;

    return-object v0
.end method

.method static synthetic w(Lcom/estrongs/android/view/ak;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->v:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic x(Lcom/estrongs/android/view/ak;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->A:Landroid/view/View;

    return-object v0
.end method

.method static synthetic y(Lcom/estrongs/android/view/ak;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->z:Landroid/view/View;

    return-object v0
.end method

.method static synthetic z(Lcom/estrongs/android/view/ak;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->y:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030048

    return v0
.end method

.method public a(I)V
    .locals 2

    iput p1, p0, Lcom/estrongs/android/view/ak;->J:I

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->b:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(J)V
    .locals 3

    iput-wide p1, p0, Lcom/estrongs/android/view/ak;->C:J

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->b:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/view/ak;->E:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/view/ak;->F:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->b:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/ak;->a:Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->v:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->w:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(I)V
    .locals 2

    iput p1, p0, Lcom/estrongs/android/view/ak;->K:I

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->b:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b(J)V
    .locals 3

    iput-wide p1, p0, Lcom/estrongs/android/view/ak;->D:J

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->b:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ak;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/view/ak;->e:Ljava/lang/String;

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->b:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->A:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public c(J)V
    .locals 3

    iput-wide p1, p0, Lcom/estrongs/android/view/ak;->H:J

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->b:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->x:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public d(J)V
    .locals 3

    iput-wide p1, p0, Lcom/estrongs/android/view/ak;->I:J

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->b:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->y:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
