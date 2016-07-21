.class public Lcom/estrongs/android/ui/dialog/ci;
.super Landroid/app/Dialog;


# instance fields
.field button_cancel:Landroid/widget/Button;

.field button_ok:Landroid/widget/Button;

.field button_single:Landroid/view/View;

.field private dismissed:Z

.field public itemsEnable:Z

.field protected listAdapter:Lcom/estrongs/android/ui/dialog/cw;

.field protected listView:Landroid/widget/ListView;

.field protected mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

.field private mButtonListener0:Landroid/content/DialogInterface$OnClickListener;

.field private mButtonListener1:Landroid/content/DialogInterface$OnClickListener;

.field private mButtonListener2:Landroid/content/DialogInterface$OnClickListener;

.field protected mContentContainer:Landroid/widget/FrameLayout;

.field protected mContentView:Landroid/view/View;

.field protected mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mItemSelectedListener:Landroid/content/DialogInterface$OnClickListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSelectable:Z

.field private messageView:Landroid/widget/TextView;

.field protected themeManager:Lcom/estrongs/android/ui/theme/at;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f09016f

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ci;->dismissed:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ci;->itemsEnable:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/ci;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ci;->dismissed:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ci;->itemsEnable:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/ci;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/estrongs/android/ui/dialog/ci;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mButtonListener0:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/estrongs/android/ui/dialog/ci;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mButtonListener1:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/estrongs/android/ui/dialog/ci;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mButtonListener2:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/estrongs/android/ui/dialog/ci;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mItemSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/estrongs/android/ui/dialog/ci;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/ci;->dismissNoException()V

    return-void
.end method

.method static synthetic access$500(Lcom/estrongs/android/ui/dialog/ci;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mSelectable:Z

    return v0
.end method

.method private dismissNoException()V
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ci;->dismissed:Z

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private init()V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, -0x2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->themeManager:Lcom/estrongs/android/ui/theme/at;

    iput-boolean v1, p0, Lcom/estrongs/android/ui/dialog/ci;->mSelectable:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03006d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v2, 0x102000b

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->messageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v2, 0x7f0e0264

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/ci;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    invoke-virtual {v4, v3, v3, v3, v3}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->setPadding(IIII)V

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    invoke-super {p0, v3, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/estrongs/android/pop/utils/cu;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    :cond_0
    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    invoke-virtual {v3, v2}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->setMaxWidth(I)V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->setMinimumHeight(I)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v2, 0x7f0e0269

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mContentContainer:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02032d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ci;->mContentContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/ci;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setCanceledOnTouchOutside(Z)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/estrongs/android/pop/utils/cu;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    :cond_4
    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    invoke-virtual {v3, v2}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->setMaxWidth(I)V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->setMinimumHeight(I)V

    goto :goto_1
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ci;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/ci;->dismissNoException()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/dialog/cm;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/cm;-><init>(Lcom/estrongs/android/ui/dialog/ci;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getCancelButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_cancel:Landroid/widget/Button;

    return-object v0
.end method

.method public getConfirmButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_ok:Landroid/widget/Button;

    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->messageView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSingleButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_single:Landroid/view/View;

    return-object v0
.end method

.method protected getString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e0267

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hideAllButtons()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e026a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e026d

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e0270

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public hideProgressBar()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mContentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/ci;->setAllButtonsEnabled(Z)V

    return-void
.end method

.method public isDismissed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ci;->dismissed:Z

    return v0
.end method

.method public requestInputMethod()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/ci;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public setAllButtonsEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e026a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e026e

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e026f

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e0271

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e0272

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e0273

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/estrongs/android/ui/dialog/ci;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/estrongs/android/ui/dialog/ci;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_0
.end method

.method public setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e026a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e0270

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e026d

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ci;->button_cancel:Landroid/widget/Button;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    const v1, 0x7f0e026e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_cancel:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_cancel:Landroid/widget/Button;

    const v1, 0x7f0202fc

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_cancel:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/dialog/cr;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/cr;-><init>(Lcom/estrongs/android/ui/dialog/ci;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_cancel:Landroid/widget/Button;

    return-object v0

    :cond_1
    const v1, 0x7f0e026f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_cancel:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_cancel:Landroid/widget/Button;

    const v1, 0x7f0202fe

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/ci;->mButtonListener1:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_cancel:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/dialog/cs;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/cs;-><init>(Lcom/estrongs/android/ui/dialog/ci;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e026a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e0270

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e026d

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ci;->button_ok:Landroid/widget/Button;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    const v1, 0x7f0e026f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_ok:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_ok:Landroid/widget/Button;

    const v1, 0x7f02030a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_ok:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/ci;->mButtonListener0:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_ok:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/dialog/cq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/cq;-><init>(Lcom/estrongs/android/ui/dialog/ci;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_ok:Landroid/widget/Button;

    return-object v0

    :cond_1
    const v1, 0x7f0e026e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_ok:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_ok:Landroid/widget/Button;

    const v1, 0x7f020308

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/ci;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ci;->mContentView:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mContentContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mContentContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mContentContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ci;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ci;->mContentView:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mContentContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ci;->mContentView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/ci;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e0265

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v2, 0x7f0e0266

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ci;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ci;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ci;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0
.end method

.method public setItems([Landroid/graphics/drawable/Drawable;[Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    const/4 v6, 0x0

    const/high16 v4, 0x41700000    # 15.0f

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p4, p0, Lcom/estrongs/android/ui/dialog/ci;->mItemSelectedListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->listView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/widget/ListView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->listView:Landroid/widget/ListView;

    const v1, 0x7f02031e

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/cw;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/dialog/cw;-><init>(Lcom/estrongs/android/ui/dialog/ci;Landroid/content/Context;[Landroid/graphics/drawable/Drawable;[Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->listAdapter:Lcom/estrongs/android/ui/dialog/cw;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->listView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->listView:Landroid/widget/ListView;

    const/high16 v1, 0x3000000

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/cl;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/cl;-><init>(Lcom/estrongs/android/ui/dialog/ci;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ci;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ci;->listAdapter:Lcom/estrongs/android/ui/dialog/cw;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/ci;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/estrongs/android/ui/dialog/ci;->setItems([Landroid/graphics/drawable/Drawable;[Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setItemsEnable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ci;->itemsEnable:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/estrongs/android/ui/dialog/ci;->itemsEnable:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->listAdapter:Lcom/estrongs/android/ui/dialog/cw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->listAdapter:Lcom/estrongs/android/ui/dialog/cw;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cw;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setLeftButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e026a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e026d

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e0270

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    const v1, 0x7f0e0271

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0202fc

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/ci;->mButtonListener0:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/estrongs/android/ui/dialog/ct;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Lcom/estrongs/android/ui/dialog/ci;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    :cond_0
    const v1, 0x7f0e0273

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0202fe

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->messageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->messageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMiddleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e026a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e026d

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e0270

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0e0272

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0202fd

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/ci;->mButtonListener1:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/estrongs/android/ui/dialog/cu;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/cu;-><init>(Lcom/estrongs/android/ui/dialog/ci;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public setRightButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e026a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e026d

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e0270

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    const v1, 0x7f0e0273

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f02030a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/ci;->mButtonListener2:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/estrongs/android/ui/dialog/ck;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/ck;-><init>(Lcom/estrongs/android/ui/dialog/ci;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    :cond_0
    const v1, 0x7f0e0271

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f020308

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setSelectable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/dialog/ci;->mSelectable:Z

    return-void
.end method

.method public setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/estrongs/android/ui/dialog/ci;->setSingleButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setSingleButton(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e026d

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e0270

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e026a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_single:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_single:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_single:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_single:Landroid/view/View;

    const v1, 0x7f0202ff

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_single:Landroid/view/View;

    const v1, 0x7f0e026b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_single:Landroid/view/View;

    const v1, 0x7f0e026c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_single:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/dialog/cj;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/cj;-><init>(Lcom/estrongs/android/ui/dialog/ci;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_single:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/dialog/co;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/co;-><init>(Lcom/estrongs/android/ui/dialog/ci;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void

    :cond_0
    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/ci;->mButtonListener0:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_single:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/dialog/cn;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/cn;-><init>(Lcom/estrongs/android/ui/dialog/ci;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/estrongs/android/ui/dialog/ci;->mButtonListener0:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->button_single:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/dialog/cp;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/cp;-><init>(Lcom/estrongs/android/ui/dialog/ci;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/ci;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mBodyView:Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;

    const v1, 0x7f0e0267

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/MaxWidthLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public show()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/ci;->dismissed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public showProgressBar()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mContentView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ci;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/dialog/ci;->setAllButtonsEnabled(Z)V

    return-void
.end method
