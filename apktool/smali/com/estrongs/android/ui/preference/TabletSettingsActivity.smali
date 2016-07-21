.class public Lcom/estrongs/android/ui/preference/TabletSettingsActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;

# interfaces
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static f:Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/os/Handler;

.field private e:Lcom/estrongs/android/ui/preference/fragments/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/ui/preference/u;

    invoke-direct {v0}, Lcom/estrongs/android/ui/preference/u;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->f:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/preference/TabletSettingsActivity;)Lcom/estrongs/android/ui/preference/fragments/ao;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->e:Lcom/estrongs/android/ui/preference/fragments/ao;

    return-object v0
.end method

.method private a()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance v0, Lcom/estrongs/android/ui/preference/fragments/ao;

    invoke-direct {v0}, Lcom/estrongs/android/ui/preference/fragments/ao;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->e:Lcom/estrongs/android/ui/preference/fragments/ao;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0e05cb

    iget-object v2, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->e:Lcom/estrongs/android/ui/preference/fragments/ao;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03015f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->setContentView(I)V

    const v0, 0x7f0e05cb

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->a:Landroid/view/ViewGroup;

    const v0, 0x7f0e05cc

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->b:Landroid/view/ViewGroup;

    const v1, 0x7f0e05cd

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->c:Landroid/widget/TextView;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->d:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->a()V

    invoke-static {p0}, Lcom/estrongs/android/pop/utils/cu;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc8

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v0, 0x3

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-ge v2, v1, :cond_1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->d:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/preference/t;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/t;-><init>(Lcom/estrongs/android/ui/preference/TabletSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0e05ce

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v0, 0x1

    return v0
.end method
