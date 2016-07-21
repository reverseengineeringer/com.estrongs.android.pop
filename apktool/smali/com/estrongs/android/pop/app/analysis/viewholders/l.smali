.class public Lcom/estrongs/android/pop/app/analysis/viewholders/l;
.super Lcom/estrongs/android/pop/app/analysis/viewholders/n;


# instance fields
.field private final a:[I

.field private final b:[I

.field private final c:[I

.field private final d:[I

.field private e:Landroid/content/Context;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/ProgressBar;

.field private k:[Ljava/lang/String;

.field private l:[J

.field private m:[I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x6

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/analysis/viewholders/n;-><init>(Landroid/view/View;)V

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->a:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->b:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->c:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->d:[I

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->a()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->b()V

    return-void

    :array_0
    .array-data 4
        0x7f0d0028
        0x7f0d001f
        0x7f0d0022
        0x7f0d001a
        0x7f0d002d
        0x7f0d0025
        0x7f0d001e
    .end array-data

    :array_1
    .array-data 4
        0x7f0e013e
        0x7f0e0141
        0x7f0e0144
        0x7f0e0147
        0x7f0e014a
        0x7f0e014d
    .end array-data

    :array_2
    .array-data 4
        0x7f0e0140
        0x7f0e0143
        0x7f0e0146
        0x7f0e0149
        0x7f0e014c
        0x7f0e014f
    .end array-data

    :array_3
    .array-data 4
        0x7f0e013f
        0x7f0e0142
        0x7f0e0145
        0x7f0e0148
        0x7f0e014b
        0x7f0e014e
    .end array-data
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->itemView:Landroid/view/View;

    const v1, 0x7f0e013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->itemView:Landroid/view/View;

    const v1, 0x7f0e013d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->itemView:Landroid/view/View;

    const v1, 0x7f0e013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->itemView:Landroid/view/View;

    const v1, 0x7f0e013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->h:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->itemView:Landroid/view/View;

    const v1, 0x7f0e0150

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->j:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->i:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/pop/app/analysis/viewholders/m;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/m;-><init>(Lcom/estrongs/android/pop/app/analysis/viewholders/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    aget-wide v2, v1, p1

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->d:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->c:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->q:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->k:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->r:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->d:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq p1, v2, :cond_0

    add-int/2addr v0, v1

    iget v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->n:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->n:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->q:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->k:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    aget-wide v2, v1, p1

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->e(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->s:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/analysis/viewholders/l;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->p:Z

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/analysis/viewholders/l;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->e:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->m:[I

    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    return-void
.end method

.method private c()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->j:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->d()V

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->d:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->e()V

    return-void
.end method

.method private d()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->b:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->m:[I

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->a:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->m:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->m:[I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->a:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->a:[I

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->a:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v2

    aput v2, v0, v1

    return-void
.end method

.method private e()V
    .locals 10

    const/4 v3, 0x6

    const/4 v2, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x7

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->m:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->m:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    aget-wide v8, v0, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    aget-wide v8, v0, v1

    add-long/2addr v2, v8

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-gtz v0, :cond_4

    move v0, v4

    :goto_2
    move v4, v0

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->h:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;

    invoke-virtual {v0, v5, v6, v4}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->setColorAndData(Ljava/util/List;Ljava/util/List;F)V

    return-void

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    long-to-float v1, v2

    mul-float/2addr v1, v0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v0, v2

    div-float v0, v1, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ai(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->m:[I

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->m:[I

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    aget-wide v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    aget-wide v0, v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    aget-wide v0, v0, v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private f()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/b/a/a;Landroid/content/Context;)V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v10, 0x4

    const/4 v2, 0x0

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->e:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->o:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/estrongs/android/b/a/a;->i()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->p:Z

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/estrongs/android/util/ap;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->o:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->o:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_2
    invoke-static {v0}, Lcom/estrongs/fs/util/j;->k(Ljava/lang/String;)[J

    move-result-object v0

    aget-wide v6, v0, v2

    aget-wide v8, v0, v11

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    const/4 v3, 0x7

    aput-wide v4, v0, v3

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    const-string v0, "img"

    invoke-virtual {p1, v0}, Lcom/estrongs/android/b/a/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    const-string v0, "doc"

    invoke-virtual {p1, v0}, Lcom/estrongs/android/b/a/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Lcom/estrongs/android/b/a/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v11

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    const-string v0, "apk"

    invoke-virtual {p1, v0}, Lcom/estrongs/android/b/a/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v12

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    const-string v0, "video"

    invoke-virtual {p1, v0}, Lcom/estrongs/android/b/a/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v10

    iget-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    const/4 v4, 0x5

    const-string v0, "other"

    invoke-virtual {p1, v0}, Lcom/estrongs/android/b/a/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v3, v4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    const/4 v5, 0x7

    aget-wide v4, v4, v5

    iget-object v6, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    aget-wide v6, v6, v2

    iget-object v8, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    aget-wide v8, v8, v1

    add-long/2addr v6, v8

    iget-object v8, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    aget-wide v8, v8, v11

    add-long/2addr v6, v8

    iget-object v8, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    aget-wide v8, v8, v12

    add-long/2addr v6, v8

    iget-object v8, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    aget-wide v8, v8, v10

    add-long/2addr v6, v8

    iget-object v8, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    const/4 v9, 0x5

    aget-wide v8, v8, v9

    add-long/2addr v6, v8

    sub-long/2addr v4, v6

    aput-wide v4, v0, v3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    const/4 v3, 0x6

    aget-wide v4, v0, v3

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    const/4 v3, 0x6

    const-wide/16 v4, 0x0

    aput-wide v4, v0, v3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    aget-wide v4, v4, v2

    iget-object v6, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    aget-wide v6, v6, v11

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    aget-wide v6, v6, v12

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    aget-wide v6, v6, v10

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->l:[J

    const/4 v7, 0x5

    aget-wide v6, v6, v7

    add-long/2addr v4, v6

    aput-wide v4, v0, v3

    :cond_5
    const/4 v0, 0x7

    new-array v3, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->e:Landroid/content/Context;

    const v4, 0x7f08028c

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->e:Landroid/content/Context;

    const v2, 0x7f080289

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->e:Landroid/content/Context;

    const v1, 0x7f080288

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v11

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->e:Landroid/content/Context;

    const v1, 0x7f080287

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v12

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->e:Landroid/content/Context;

    const v1, 0x7f08028d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v10

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->e:Landroid/content/Context;

    const v2, 0x7f08028b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->e:Landroid/content/Context;

    const v2, 0x7f0805da

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    iput-object v3, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->k:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->f()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->h:Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/AnalysisResultGeneralPieView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->n:I

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/l;->c()V

    goto/16 :goto_0
.end method
