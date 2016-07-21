.class public Lcom/estrongs/android/ui/dialog/kh;
.super Lcom/estrongs/android/ui/dialog/ci;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Z

.field private c:Lcom/estrongs/a/a/p;

.field private d:Landroid/content/DialogInterface$OnDismissListener;

.field private e:Landroid/content/DialogInterface$OnClickListener;

.field public final f:Landroid/content/DialogInterface$OnClickListener;

.field private g:Landroid/content/DialogInterface$OnClickListener;

.field private h:Landroid/content/DialogInterface$OnClickListener;

.field private i:Lcom/estrongs/android/view/fm;

.field private j:Lcom/estrongs/a/a;

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/estrongs/android/ui/dialog/kh;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/a/a;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/kh;->setCancelable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/a/a;)V
    .locals 4

    const v3, 0x7f080221

    const v2, 0x7f080089

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/ci;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/estrongs/android/ui/dialog/kh;->b:Z

    new-instance v0, Lcom/estrongs/android/ui/dialog/km;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/km;-><init>(Lcom/estrongs/android/ui/dialog/kh;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kh;->c:Lcom/estrongs/a/a/p;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/kh;->a:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/dialog/kh;->setCancelable(Z)V

    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/dialog/kh;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/estrongs/android/view/fm;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p3}, Lcom/estrongs/android/view/fm;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kh;->i:Lcom/estrongs/android/view/fm;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kh;->i:Lcom/estrongs/android/view/fm;

    invoke-virtual {v0}, Lcom/estrongs/android/view/fm;->aE()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/kh;->setContentView(Landroid/view/View;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kh;->k:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/pop/m;

    invoke-direct {v0, p1}, Lcom/estrongs/android/pop/m;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p4, v0}, Lcom/estrongs/a/a;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/ki;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ki;-><init>(Lcom/estrongs/android/ui/dialog/kh;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kh;->e:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/dialog/kj;

    invoke-direct {v0, p0, p4}, Lcom/estrongs/android/ui/dialog/kj;-><init>(Lcom/estrongs/android/ui/dialog/kh;Lcom/estrongs/a/a;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kh;->f:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/dialog/kk;

    invoke-direct {v0, p0, p4}, Lcom/estrongs/android/ui/dialog/kk;-><init>(Lcom/estrongs/android/ui/dialog/kh;Lcom/estrongs/a/a;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kh;->g:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/dialog/kl;

    invoke-direct {v0, p0, p4}, Lcom/estrongs/android/ui/dialog/kl;-><init>(Lcom/estrongs/android/ui/dialog/kh;Lcom/estrongs/a/a;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/kh;->h:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p4}, Lcom/estrongs/a/a;->canPause()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/dialog/kh;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kh;->e:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/kh;->setRightButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    invoke-virtual {p4}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const v0, 0x7f0804a5

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/kh;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kh;->h:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/kh;->setMiddleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_0
    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/dialog/kh;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kh;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/kh;->setLeftButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kh;->i:Lcom/estrongs/android/view/fm;

    iget-object v0, v0, Lcom/estrongs/android/view/fm;->c:Lcom/estrongs/a/a/l;

    invoke-virtual {p4, v0}, Lcom/estrongs/a/a;->addProgressListener(Lcom/estrongs/a/a/l;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kh;->c:Lcom/estrongs/a/a/p;

    invoke-virtual {p4, v0}, Lcom/estrongs/a/a;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    iput-object p4, p0, Lcom/estrongs/android/ui/dialog/kh;->j:Lcom/estrongs/a/a;

    iget-object v0, p4, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kh;->i:Lcom/estrongs/android/view/fm;

    iget-object v0, v0, Lcom/estrongs/android/view/fm;->c:Lcom/estrongs/a/a/l;

    iget-object v1, p4, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/m;

    invoke-interface {v0, p4, v1}, Lcom/estrongs/a/a/l;->a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/m;)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/kh;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kh;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/kh;->setMiddleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/dialog/kh;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kh;->e:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/kh;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/dialog/kh;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kh;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/dialog/kh;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/kh;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kh;->h:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/kh;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/kh;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kh;->k:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/dialog/kp;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/dialog/kp;-><init>(Lcom/estrongs/android/ui/dialog/kh;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/kh;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kh;->g:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/kh;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kh;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/dialog/kh;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/kh;->b:Z

    return v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kh;->j:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0805c3

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/dialog/kh;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/estrongs/a/p;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/a/q;

    iget-object v0, v0, Lcom/estrongs/a/q;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/estrongs/a/a;)V
    .locals 0

    return-void
.end method

.method protected b(Lcom/estrongs/a/p;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/a/q;

    iget-object v0, v0, Lcom/estrongs/a/q;->b:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kh;->j:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0805a6

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/dialog/kh;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/estrongs/a/a;)V
    .locals 0

    return-void
.end method

.method public dismiss()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/kh;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kh;->d:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kh;->d:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/kh;->b:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/kh;->j:Lcom/estrongs/a/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/kh;->i:Lcom/estrongs/android/view/fm;

    iget-object v1, v1, Lcom/estrongs/android/view/fm;->c:Lcom/estrongs/a/a/l;

    invoke-virtual {v0, v1}, Lcom/estrongs/a/a;->removeProgressListener(Lcom/estrongs/a/a/l;)V

    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    goto :goto_0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/kh;->d:Landroid/content/DialogInterface$OnDismissListener;

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/dialog/ci;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
