.class public Lcom/estrongs/android/ui/dialog/j;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/estrongs/fs/h;

.field b:Lcom/estrongs/android/ui/dialog/ct;

.field private c:Lcom/estrongs/android/ui/dialog/n;

.field private d:Landroid/app/Activity;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/h;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/j;->c:Lcom/estrongs/android/ui/dialog/n;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/j;->a:Lcom/estrongs/fs/h;

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/j;->d:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/j;->a:Lcom/estrongs/fs/h;

    new-instance v0, Lcom/estrongs/android/ui/dialog/n;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/j;->d:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/dialog/n;-><init>(Lcom/estrongs/android/ui/dialog/j;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/j;->c:Lcom/estrongs/android/ui/dialog/n;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/j;->c:Lcom/estrongs/android/ui/dialog/n;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/n;->aq()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00f9

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/j;->b:Lcom/estrongs/android/ui/dialog/ct;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/j;->b:Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/j;->b:Lcom/estrongs/android/ui/dialog/ct;

    const v1, 0x7f0b011c

    new-instance v2, Lcom/estrongs/android/ui/dialog/k;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/k;-><init>(Lcom/estrongs/android/ui/dialog/j;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/j;->b:Lcom/estrongs/android/ui/dialog/ct;

    const v1, 0x7f0b0118

    new-instance v2, Lcom/estrongs/android/ui/dialog/l;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/l;-><init>(Lcom/estrongs/android/ui/dialog/j;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->e(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/j;->b:Lcom/estrongs/android/ui/dialog/ct;

    const v1, 0x7f0b000c

    new-instance v2, Lcom/estrongs/android/ui/dialog/m;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/m;-><init>(Lcom/estrongs/android/ui/dialog/j;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/j;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/j;->d:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/j;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/j;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/j;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/dialog/j;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/j;->b:Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/dialog/ct;

    return-object p0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/j;->b:Lcom/estrongs/android/ui/dialog/ct;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->c()Lcom/estrongs/android/ui/dialog/cg;

    return-void
.end method
