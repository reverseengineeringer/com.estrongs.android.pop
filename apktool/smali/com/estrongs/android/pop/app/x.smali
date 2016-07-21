.class public Lcom/estrongs/android/pop/app/x;
.super Lcom/estrongs/android/ui/dialog/ci;

# interfaces
.implements Lcom/estrongs/chromecast/CastDeviceListener;
.implements Lcom/estrongs/chromecast/ChromeCastConnectionListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/estrongs/android/pop/app/ag;

.field private c:Landroid/os/Handler;

.field private d:I

.field private e:Z

.field private f:Landroid/app/Activity;

.field private g:Lcom/estrongs/android/pop/app/ai;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/app/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/x;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/ag;->g()Lcom/estrongs/android/pop/app/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/x;->b:Lcom/estrongs/android/pop/app/ag;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/x;->c:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/x;->d:I

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/x;->e:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/app/x;->f:Landroid/app/Activity;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/x;->g:Lcom/estrongs/android/pop/app/ai;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/x;->h:Z

    iput-object p1, p0, Lcom/estrongs/android/pop/app/x;->f:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/x;->d()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->b:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->b:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->f()Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/x;->c()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/x;)Lcom/estrongs/android/pop/app/ag;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->b:Lcom/estrongs/android/pop/app/ag;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/x;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/x;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/x;->h()V

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->b:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/ag;->a(Lcom/estrongs/chromecast/ChromeCastConnectionListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->b:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/ag;->a(Lcom/estrongs/chromecast/CastDeviceListener;)V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/x;->i()V

    return-void
.end method

.method private d()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/pop/app/y;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/y;-><init>(Lcom/estrongs/android/pop/app/x;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/x;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/x;->c()V

    return-void
.end method

.method private e()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/x;->d:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->f:Landroid/app/Activity;

    const v1, 0x7f0801b5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/x;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/x;->showProgressBar()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/x;->setAllButtonsEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/x;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/x;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->f:Landroid/app/Activity;

    const v1, 0x7f080221

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/pop/app/x;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/x;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/x;->f()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/x;->g()V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/x;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private f()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/app/z;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/z;-><init>(Lcom/estrongs/android/pop/app/x;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private g()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput v2, p0, Lcom/estrongs/android/pop/app/x;->d:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->f:Landroid/app/Activity;

    const v1, 0x7f0801b5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/x;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/x;->showProgressBar()V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/x;->setAllButtonsEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/x;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/x;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->f:Landroid/app/Activity;

    const v1, 0x7f080221

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/android/pop/app/x;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->b:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->h()V

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/x;->j()V

    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/x;)Lcom/estrongs/android/pop/app/ai;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->g:Lcom/estrongs/android/pop/app/ai;

    return-object v0
.end method

.method private h()V
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/estrongs/android/pop/app/x;->d:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->f:Landroid/app/Activity;

    const v1, 0x7f0801b5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/x;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/x;->hideProgressBar()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/x;->f:Landroid/app/Activity;

    const v2, 0x7f0801b0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<font size=\'8px\' color=\'grey\'><br />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/x;->f:Landroid/app/Activity;

    const v2, 0x7f0801b1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/x;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/x;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->f:Landroid/app/Activity;

    const v1, 0x7f0803eb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/ab;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ab;-><init>(Lcom/estrongs/android/pop/app/x;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/x;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->f:Landroid/app/Activity;

    const v1, 0x7f080221

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/x;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-void
.end method

.method private i()V
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lcom/estrongs/android/pop/app/x;->d:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->f:Landroid/app/Activity;

    const v1, 0x7f0801b5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/x;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/x;->hideAllButtons()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/x;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/x;->setSelectable(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/x;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->b:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->x()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/chromecast/CastDeviceInfo;

    invoke-virtual {v0}, Lcom/estrongs/chromecast/CastDeviceInfo;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/ac;

    invoke-direct {v0, p0, v3}, Lcom/estrongs/android/pop/app/ac;-><init>(Lcom/estrongs/android/pop/app/x;Ljava/util/List;)V

    invoke-virtual {p0, v4, v2, v0}, Lcom/estrongs/android/pop/app/x;->setItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/x;->hideProgressBar()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/x;->h()V

    goto :goto_1
.end method

.method private j()V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, Lcom/estrongs/android/pop/app/x;->d:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->f:Landroid/app/Activity;

    const v1, 0x7f0801b5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/x;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/x;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/x;->showProgressBar()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/x;->setAllButtonsEnabled(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/x;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->f:Landroid/app/Activity;

    const v1, 0x7f080221

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/ad;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ad;-><init>(Lcom/estrongs/android/pop/app/x;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/x;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private k()V
    .locals 2

    const/4 v0, 0x4

    iput v0, p0, Lcom/estrongs/android/pop/app/x;->d:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->f:Landroid/app/Activity;

    const v1, 0x7f0801b5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/x;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/x;->hideProgressBar()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->b:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->y()Lcom/estrongs/chromecast/CastDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/chromecast/CastDeviceInfo;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/x;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/x;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->f:Landroid/app/Activity;

    const v1, 0x7f0801ac

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/ae;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ae;-><init>(Lcom/estrongs/android/pop/app/x;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/x;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->f:Landroid/app/Activity;

    const v1, 0x7f080083

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/af;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/af;-><init>(Lcom/estrongs/android/pop/app/x;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/x;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->b:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/ag;->b(Lcom/estrongs/chromecast/ChromeCastConnectionListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->b:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/ag;->b(Lcom/estrongs/chromecast/CastDeviceListener;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/x;->g:Lcom/estrongs/android/pop/app/ai;

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->mContentContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->mContentContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/x;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/x;->listView:Landroid/widget/ListView;

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    return-void
.end method

.method public onConnected()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/x;->e:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/x;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->g:Lcom/estrongs/android/pop/app/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->g:Lcom/estrongs/android/pop/app/ai;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/ai;->a()V

    :cond_0
    return-void
.end method

.method public onConnectionFailed()V
    .locals 3

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/x;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/x;->e:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->f:Landroid/app/Activity;

    const v1, 0x7f08049d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->g:Lcom/estrongs/android/pop/app/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->g:Lcom/estrongs/android/pop/app/ai;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/ai;->b()V

    :cond_0
    return-void
.end method

.method public onConnectionSuspended()V
    .locals 0

    return-void
.end method

.method public onDeviceAdded(Lcom/estrongs/chromecast/CastDeviceInfo;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/x;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/x;->i()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDeviceRemoved(Lcom/estrongs/chromecast/CastDeviceInfo;)V
    .locals 2

    iget v0, p0, Lcom/estrongs/android/pop/app/x;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/x;->i()V

    :cond_0
    return-void
.end method

.method public onDeviceSelected(Lcom/estrongs/chromecast/CastDeviceInfo;)V
    .locals 0

    return-void
.end method

.method public onDeviceUnSelected(Lcom/estrongs/chromecast/CastDeviceInfo;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/x;->e:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->g:Lcom/estrongs/android/pop/app/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->g:Lcom/estrongs/android/pop/app/ai;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/ai;->b()V

    :cond_0
    return-void
.end method

.method public onDeviceVolumeChanged(Lcom/estrongs/chromecast/CastDeviceInfo;)V
    .locals 0

    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/estrongs/android/util/an;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->f:Landroid/app/Activity;

    const v1, 0x7f080742

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "com.android.vending"

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->f:Landroid/app/Activity;

    const v1, 0x7f0801ae

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->b:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/x;->e()V

    :goto_1
    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->b:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/x;->k()V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->b:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->h()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->b:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->x()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->b:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->x()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/x;->g()V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->b:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->x()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/x;->b:Lcom/estrongs/android/pop/app/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ag;->x()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/x;->i()V

    goto :goto_2
.end method
