.class public Lcom/estrongs/android/pop/app/diskusage/a;
.super Lcom/estrongs/android/ui/dialog/cg;


# instance fields
.field a:Ljava/lang/String;

.field b:[I

.field c:[I

.field d:[I

.field e:[J

.field f:[J

.field g:Landroid/widget/LinearLayout;

.field h:Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;

.field i:[Ljava/lang/String;

.field j:Landroid/widget/ProgressBar;

.field private k:Lcom/estrongs/android/pop/app/diskusage/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/diskusage/h;)V
    .locals 4

    const/4 v3, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->a:Ljava/lang/String;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->b:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->c:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->d:[I

    new-array v0, v3, [J

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->e:[J

    new-array v0, v3, [J

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->f:[J

    iput-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/a;->g:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/a;->h:Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/a;->i:[Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/a;->j:Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/diskusage/a;->k:Lcom/estrongs/android/pop/app/diskusage/h;

    const v0, 0x7f0b02ad

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/a;->setTitle(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0106

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/diskusage/a;->a(Lcom/estrongs/fs/b/an;)V

    return-void

    :array_0
    .array-data 4
        -0x6400
        -0xce5c53
        -0x3ba541
        -0x65fdff
        -0x7d48bd
        -0x30100
    .end array-data

    :array_1
    .array-data 4
        0x7f0a0151
        0x7f0a0153
        0x7f0a0155
        0x7f0a0157
        0x7f0a0159
        0x7f0a015b
    .end array-data

    :array_2
    .array-data 4
        0x7f0a0152
        0x7f0a0154
        0x7f0a0156
        0x7f0a0158
        0x7f0a015a
        0x7f0a015c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/fs/b/an;)V
    .locals 4

    const/4 v3, 0x7

    const/4 v2, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->a:Ljava/lang/String;

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->b:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->c:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->d:[I

    new-array v0, v3, [J

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->e:[J

    new-array v0, v3, [J

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->f:[J

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/a;->g:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/a;->h:Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/a;->i:[Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/a;->j:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/a;->k:Lcom/estrongs/android/pop/app/diskusage/h;

    const v0, 0x7f0b02ad

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/a;->setTitle(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0106

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->a:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/estrongs/android/pop/app/diskusage/a;->a(Lcom/estrongs/fs/b/an;)V

    return-void

    :array_0
    .array-data 4
        -0x6400
        -0xce5c53
        -0x3ba541
        -0x65fdff
        -0x7d48bd
        -0x30100
    .end array-data

    :array_1
    .array-data 4
        0x7f0a0151
        0x7f0a0153
        0x7f0a0155
        0x7f0a0157
        0x7f0a0159
        0x7f0a015b
    .end array-data

    :array_2
    .array-data 4
        0x7f0a0152
        0x7f0a0154
        0x7f0a0156
        0x7f0a0158
        0x7f0a015a
        0x7f0a015c
    .end array-data
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/a;->c()V

    return-void
.end method

.method private c()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->i:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->mContext:Landroid/content/Context;

    const v3, 0x7f0b012d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->mContext:Landroid/content/Context;

    const v4, 0x7f0b012e

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->mContext:Landroid/content/Context;

    const v4, 0x7f0b012f

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0130

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0131

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0132

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3

    iput-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/a;->i:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->h:Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/a;->e:[J

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/a;->b:[I

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;->a([J[I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->mContext:Landroid/content/Context;

    const v2, 0x7f0b056f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->i:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->g:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/a;->d:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/a;->i:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/a;->e:[J

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/a;->f:[J

    aget-wide v4, v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->g:Landroid/widget/LinearLayout;

    const v1, 0x7f0a014d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/a;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00fc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/a;->e:[J

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/a;->e:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/a;->e:[J

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/a;->e:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->d(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private c(Lcom/estrongs/fs/b/an;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->e:[J

    iget-wide v2, p1, Lcom/estrongs/fs/b/an;->g:J

    aput-wide v2, v0, v4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->e:[J

    iget-wide v2, p1, Lcom/estrongs/fs/b/an;->i:J

    aput-wide v2, v0, v5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->e:[J

    iget-wide v2, p1, Lcom/estrongs/fs/b/an;->k:J

    aput-wide v2, v0, v6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->e:[J

    iget-wide v2, p1, Lcom/estrongs/fs/b/an;->o:J

    aput-wide v2, v0, v7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->e:[J

    iget-wide v2, p1, Lcom/estrongs/fs/b/an;->m:J

    aput-wide v2, v0, v8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->e:[J

    const/4 v1, 0x5

    iget-wide v2, p1, Lcom/estrongs/fs/b/an;->q:J

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->e:[J

    const/4 v1, 0x6

    iget-wide v2, p1, Lcom/estrongs/fs/b/an;->c:J

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->f:[J

    iget-wide v2, p1, Lcom/estrongs/fs/b/an;->h:J

    aput-wide v2, v0, v4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->f:[J

    iget-wide v2, p1, Lcom/estrongs/fs/b/an;->j:J

    aput-wide v2, v0, v5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->f:[J

    iget-wide v2, p1, Lcom/estrongs/fs/b/an;->l:J

    aput-wide v2, v0, v6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->f:[J

    iget-wide v2, p1, Lcom/estrongs/fs/b/an;->p:J

    aput-wide v2, v0, v7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->f:[J

    iget-wide v2, p1, Lcom/estrongs/fs/b/an;->n:J

    aput-wide v2, v0, v8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->f:[J

    const/4 v1, 0x5

    iget-wide v2, p1, Lcom/estrongs/fs/b/an;->r:J

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->f:[J

    const/4 v1, 0x6

    iget v2, p1, Lcom/estrongs/fs/b/an;->e:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->j:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/c;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/diskusage/c;-><init>(Lcom/estrongs/android/pop/app/diskusage/a;)V

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/estrongs/fs/b/an;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030045

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->g:Landroid/widget/LinearLayout;

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->b:[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->g:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/a;->c:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/a;->b:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->g:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0150

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->h:Lcom/estrongs/android/pop/app/diskusage/DiskUsageGraphView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->g:Landroid/widget/LinearLayout;

    const v1, 0x7f0a014e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->j:Landroid/widget/ProgressBar;

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->k:Lcom/estrongs/android/pop/app/diskusage/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->k:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/diskusage/h;->d(Z)[J

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/a;->k:Lcom/estrongs/android/pop/app/diskusage/h;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/diskusage/h;->c(Z)[J

    move-result-object v1

    :goto_1
    const/4 v3, 0x7

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/a;->e:[J

    aget-wide v4, v0, v2

    aput-wide v4, v3, v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/a;->f:[J

    aget-wide v4, v1, v2

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/a;->c(Lcom/estrongs/fs/b/an;)V

    :cond_2
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/a;->c()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/a;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/a;->j:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/d;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/diskusage/d;-><init>(Lcom/estrongs/android/pop/app/diskusage/a;)V

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/estrongs/fs/b/an;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/a;->c(Lcom/estrongs/fs/b/an;)V

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/diskusage/b;-><init>(Lcom/estrongs/android/pop/app/diskusage/a;)V

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
