.class public Lcom/flurry/android/FlurryShareActivity;
.super Landroid/app/Activity;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lcom/flurry/sdk/hi;

.field private c:Lcom/flurry/sdk/ew;

.field private d:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/android/FlurryShareActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/FlurryShareActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/flurry/android/FlurryShareActivity$1;

    invoke-direct {v0, p0}, Lcom/flurry/android/FlurryShareActivity$1;-><init>(Lcom/flurry/android/FlurryShareActivity;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryShareActivity;->a:Lcom/flurry/sdk/hi;

    return-void
.end method

.method static synthetic a(Lcom/flurry/android/FlurryShareActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/flurry/android/FlurryShareActivity;->d:Landroid/widget/RelativeLayout;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/flurry/android/FlurryShareActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryShareActivity;->d:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/flurry/sdk/ew;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ew;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryShareActivity;->c:Lcom/flurry/sdk/ew;

    iget-object v0, p0, Lcom/flurry/android/FlurryShareActivity;->c:Lcom/flurry/sdk/ew;

    iget-object v1, p0, Lcom/flurry/android/FlurryShareActivity;->a:Lcom/flurry/sdk/hi;

    invoke-virtual {p0}, Lcom/flurry/android/FlurryShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/hi;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/flurry/android/FlurryShareActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/flurry/android/FlurryShareActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/flurry/android/FlurryShareActivity;->c:Lcom/flurry/sdk/ew;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/FlurryShareActivity;->c:Lcom/flurry/sdk/ew;

    invoke-virtual {v0}, Lcom/flurry/sdk/ew;->a()V

    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryShareActivity;->b:Ljava/lang/String;

    const-string v2, "onKeyUp"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/FlurryShareActivity;->c:Lcom/flurry/sdk/ew;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/FlurryShareActivity;->c:Lcom/flurry/sdk/ew;

    invoke-virtual {v0}, Lcom/flurry/sdk/ew;->b()Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
