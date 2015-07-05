.class public Lcom/estrongs/android/pop/app/r;
.super Lcom/estrongs/android/ui/dialog/cg;

# interfaces
.implements Lcom/estrongs/chromecast/CastDeviceListener;
.implements Lcom/estrongs/chromecast/ChromeCastConnectionListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/estrongs/android/pop/app/aa;

.field private c:Landroid/os/Handler;

.field private d:I

.field private e:Z

.field private f:Landroid/app/Activity;

.field private g:Lcom/estrongs/android/pop/app/ae;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/estrongs/android/pop/app/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/r;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/aa;->g()Lcom/estrongs/android/pop/app/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/r;->b:Lcom/estrongs/android/pop/app/aa;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/r;->c:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/app/r;->d:I

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/r;->e:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/app/r;->f:Landroid/app/Activity;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/r;->g:Lcom/estrongs/android/pop/app/ae;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/r;->h:Z

    iput-object p1, p0, Lcom/estrongs/android/pop/app/r;->f:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/r;->d()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->b:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->b:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->f()Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/r;->c()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/r;)Lcom/estrongs/android/pop/app/aa;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->b:Lcom/estrongs/android/pop/app/aa;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/r;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/r;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/r;->h()V

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->b:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/aa;->a(Lcom/estrongs/chromecast/ChromeCastConnectionListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->b:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/aa;->a(Lcom/estrongs/chromecast/CastDeviceListener;)V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/r;->i()V

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/r;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->f:Landroid/app/Activity;

    return-object v0
.end method

.method private d()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/pop/app/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/s;-><init>(Lcom/estrongs/android/pop/app/r;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/r;->c:Landroid/os/Handler;

    return-void
.end method

.method private e()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/r;->d:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->f:Landroid/app/Activity;

    const v1, 0x7f0b04aa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/r;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/r;->showProgressBar()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/r;->setAllButtonsEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/r;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/r;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->f:Landroid/app/Activity;

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/pop/app/r;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/r;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/r;->f()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/r;->c()V

    return-void
.end method

.method private f()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/app/t;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/t;-><init>(Lcom/estrongs/android/pop/app/r;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/r;->g()V

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/r;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private g()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput v2, p0, Lcom/estrongs/android/pop/app/r;->d:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->f:Landroid/app/Activity;

    const v1, 0x7f0b04aa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/r;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/r;->showProgressBar()V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/r;->setAllButtonsEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/r;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/r;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->f:Landroid/app/Activity;

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/android/pop/app/r;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->b:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->h()V

    return-void
.end method

.method private h()V
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/estrongs/android/pop/app/r;->d:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->f:Landroid/app/Activity;

    const v1, 0x7f0b04aa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/r;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/r;->hideProgressBar()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/r;->f:Landroid/app/Activity;

    const v2, 0x7f0b04a8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<font size=\'8px\' color=\'grey\'><br />"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/r;->f:Landroid/app/Activity;

    const v2, 0x7f0b04a9

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

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/r;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/r;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->f:Landroid/app/Activity;

    const v1, 0x7f0b0045

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/v;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/v;-><init>(Lcom/estrongs/android/pop/app/r;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/r;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->f:Landroid/app/Activity;

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/r;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/r;->j()V

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/r;)Lcom/estrongs/android/pop/app/ae;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->g:Lcom/estrongs/android/pop/app/ae;

    return-object v0
.end method

.method private i()V
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lcom/estrongs/android/pop/app/r;->d:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->f:Landroid/app/Activity;

    const v1, 0x7f0b04aa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/r;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/r;->hideAllButtons()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/r;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/r;->setSelectable(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/r;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->b:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->x()Ljava/util/List;

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
    new-instance v0, Lcom/estrongs/android/pop/app/w;

    invoke-direct {v0, p0, v3}, Lcom/estrongs/android/pop/app/w;-><init>(Lcom/estrongs/android/pop/app/r;Ljava/util/List;)V

    invoke-virtual {p0, v4, v2, v0}, Lcom/estrongs/android/pop/app/r;->setItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/r;->hideProgressBar()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/r;->h()V

    goto :goto_1
.end method

.method private j()V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, Lcom/estrongs/android/pop/app/r;->d:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->f:Landroid/app/Activity;

    const v1, 0x7f0b04aa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/r;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/r;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/r;->showProgressBar()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/r;->setAllButtonsEnabled(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/r;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->f:Landroid/app/Activity;

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/x;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/x;-><init>(Lcom/estrongs/android/pop/app/r;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/r;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private k()V
    .locals 2

    const/4 v0, 0x4

    iput v0, p0, Lcom/estrongs/android/pop/app/r;->d:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->f:Landroid/app/Activity;

    const v1, 0x7f0b04aa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/r;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/r;->hideProgressBar()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->b:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->y()Lcom/estrongs/chromecast/CastDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/chromecast/CastDeviceInfo;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/r;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/r;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->f:Landroid/app/Activity;

    const v1, 0x7f0b04ab

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/y;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/y;-><init>(Lcom/estrongs/android/pop/app/r;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/r;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->f:Landroid/app/Activity;

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/z;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/z;-><init>(Lcom/estrongs/android/pop/app/r;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/r;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->b:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/aa;->b(Lcom/estrongs/chromecast/ChromeCastConnectionListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->b:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/aa;->b(Lcom/estrongs/chromecast/CastDeviceListener;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/r;->g:Lcom/estrongs/android/pop/app/ae;

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->mContentContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->mContentContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/r;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/r;->listView:Landroid/widget/ListView;

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/cg;->dismiss()V

    return-void
.end method

.method public onConnected()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/r;->e:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/r;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->g:Lcom/estrongs/android/pop/app/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->g:Lcom/estrongs/android/pop/app/ae;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/ae;->a()V

    :cond_0
    return-void
.end method

.method public onConnectionFailed()V
    .locals 3

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/r;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/r;->e:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->f:Landroid/app/Activity;

    const v1, 0x7f0b01b6

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->g:Lcom/estrongs/android/pop/app/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->g:Lcom/estrongs/android/pop/app/ae;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/ae;->b()V

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
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/r;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/r;->i()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->c:Landroid/os/Handler;

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

    iget v0, p0, Lcom/estrongs/android/pop/app/r;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/r;->i()V

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

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/r;->e:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->g:Lcom/estrongs/android/pop/app/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->g:Lcom/estrongs/android/pop/app/ae;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/ae;->b()V

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

    invoke-static {}, Lcom/estrongs/android/util/ak;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->f:Landroid/app/Activity;

    const v1, 0x7f0b014f

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "com.android.vending"

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->f:Landroid/app/Activity;

    const v1, 0x7f0b04a6

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;II)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/app/aa;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->f:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/aa;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->b:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->c()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/r;->e()V

    :goto_1
    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->b:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/r;->k()V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->b:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->h()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->b:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->x()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->b:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->x()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/r;->g()V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->b:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->x()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->b:Lcom/estrongs/android/pop/app/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/aa;->x()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/r;->i()V

    goto :goto_2
.end method
