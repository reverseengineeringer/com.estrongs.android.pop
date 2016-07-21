.class public Lcom/estrongs/android/pop/app/OpenRecomm;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/estrongs/android/ui/view/RecommendListView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/CheckBox;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/content/Intent;

.field private m:Z

.field private n:I

.field private o:I

.field private p:J

.field private q:I

.field private r:I

.field private t:I

.field private u:Lcom/estrongs/android/ui/theme/at;

.field private v:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->i:Z

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->l:Landroid/content/Intent;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->m:Z

    iput v2, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->n:I

    iput v2, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->o:I

    const-wide/32 v0, 0x278d00

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->p:J

    iput v2, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->q:I

    iput v2, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->r:I

    iput v2, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->t:I

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/OpenRecomm;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->l:Landroid/content/Intent;

    return-object v0
.end method

.method private a()V
    .locals 10

    const/high16 v9, 0x3f000000    # 0.5f

    const v0, 0x7f0e056e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/OpenRecomm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/OpenRecomm;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v1

    add-float/2addr v3, v9

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->q:I

    if-nez v0, :cond_0

    const v0, 0x7f0e056f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/OpenRecomm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v0, 0x7f0e0577

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/OpenRecomm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v0, 0x42700000    # 60.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, v9

    float-to-int v6, v0

    iget v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->n:I

    iget v7, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->o:I

    if-le v0, v7, :cond_1

    iget v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->n:I

    :goto_0
    iget-object v7, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->v:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int/2addr v4, v5

    mul-int v5, v0, v6

    add-int/2addr v4, v5

    int-to-float v0, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v9

    float-to-int v0, v0

    add-int/2addr v0, v4

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->q:I

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, v9

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->r:I

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, v9

    float-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->t:I

    :cond_0
    iget v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->q:I

    iget v1, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->r:I

    add-int/2addr v0, v1

    if-le v2, v0, :cond_2

    iget v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->q:I

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->o:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->r:I

    sub-int v0, v2, v0

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/OpenRecomm;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/OpenRecomm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/OpenRecomm;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/OpenRecomm;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/OpenRecomm;->supportRequestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/OpenRecomm;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v3, 0x7f0200bc

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->u:Lcom/estrongs/android/ui/theme/at;

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030147

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->v:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/OpenRecomm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {p0}, Lcom/estrongs/android/pop/utils/cu;->a(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/OpenRecomm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v2

    const/16 v5, 0xe

    if-lt v2, v5, :cond_0

    if-nez v4, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->v:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/OpenRecomm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->setMaxWidth(I)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->v:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/OpenRecomm;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0e0570

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/OpenRecomm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->a:Landroid/widget/TextView;

    const v0, 0x7f0e0572

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/OpenRecomm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0e0573

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/OpenRecomm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->d:Landroid/widget/ImageView;

    const v0, 0x7f0e0571

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/OpenRecomm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->e:Landroid/widget/ImageView;

    const v0, 0x7f0e0575

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/OpenRecomm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->b:Landroid/widget/ListView;

    const v0, 0x7f0e0576

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/OpenRecomm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/RecommendListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->c:Lcom/estrongs/android/ui/view/RecommendListView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->c:Lcom/estrongs/android/ui/view/RecommendListView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/RecommendListView;->setDialogStyle(Z)V

    const v0, 0x7f0e0578

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/OpenRecomm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->h:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->h:Landroid/widget/CheckBox;

    new-instance v2, Lcom/estrongs/android/pop/app/ef;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/ef;-><init>(Lcom/estrongs/android/pop/app/OpenRecomm;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/OpenRecomm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/OpenRecomm;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->v:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/OpenRecomm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->setMaxWidth(I)V

    goto/16 :goto_1

    :cond_3
    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->v:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/OpenRecomm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->setMaxWidth(I)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->v:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->setMaxWidth(I)V

    goto/16 :goto_1

    :cond_5
    :try_start_1
    const-string v2, "filepath"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/AppRunner;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->l:Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->l:Landroid/content/Intent;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/OpenRecomm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "intent"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->l:Landroid/content/Intent;

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->l:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->l:Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/content/Context;Landroid/content/Intent;)[Lcom/estrongs/android/pop/view/utils/t;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->m:Z

    if-eqz v0, :cond_7

    array-length v2, v0

    if-lez v2, :cond_7

    array-length v2, v0

    iput v2, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->o:I

    iget-object v2, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->b:Landroid/widget/ListView;

    new-instance v3, Lcom/estrongs/android/pop/app/eh;

    const v4, 0x7f030148

    invoke-direct {v3, p0, p0, v4, v0}, Lcom/estrongs/android/pop/app/eh;-><init>(Lcom/estrongs/android/pop/app/OpenRecomm;Landroid/content/Context;I[Lcom/estrongs/android/pop/view/utils/t;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->m:Z

    :cond_7
    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/content/Context;)J

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/utils/n;->a(Z)V

    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->m:Z

    if-eqz v2, :cond_b

    array-length v2, v0

    if-ne v2, v1, :cond_a

    iget-object v1, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->l:Landroid/content/Intent;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget-object v2, v2, Lcom/estrongs/android/pop/view/utils/t;->c:Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget-object v3, v3, Lcom/estrongs/android/pop/view/utils/t;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v1, v1, Lcom/estrongs/android/pop/view/utils/t;->e:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->l:Landroid/content/Intent;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget-object v2, v2, Lcom/estrongs/android/pop/view/utils/t;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/estrongs/android/pop/view/utils/t;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/utils/AppRunner;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->l:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/content/Intent;I)V

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->l:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/OpenRecomm;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/OpenRecomm;->finish()V

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->a:Landroid/widget/TextView;

    const/high16 v1, 0x7f080000

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/OpenRecomm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->c:Lcom/estrongs/android/ui/view/RecommendListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/RecommendListView;->setVisibility(I)V

    new-instance v0, Lcom/estrongs/android/pop/app/eg;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/eg;-><init>(Lcom/estrongs/android/pop/app/OpenRecomm;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/OpenRecomm;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->j:Ljava/lang/String;

    if-nez v0, :cond_d

    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "open_recommend"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_b
    const v0, 0x7f080136

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/OpenRecomm;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/OpenRecomm;->finish()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :try_start_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->l:Landroid/content/Intent;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->l:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/OpenRecomm;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_c
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/OpenRecomm;->finish()V

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/OpenRecomm;->finish()V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/OpenRecomm;->finish()V

    throw v0

    :cond_d
    :try_start_7
    invoke-static {p0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    const-string v1, "open_recommend"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/OpenRecomm;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/j/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/utils/n;->b()Lcom/estrongs/android/pop/view/utils/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/utils/n;->f()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    return-void
.end method
