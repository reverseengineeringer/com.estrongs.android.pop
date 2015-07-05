.class public Lcom/estrongs/android/ui/dialog/ff;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/dialog/cg;

.field private b:Landroid/content/Context;

.field private c:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ff;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/ff;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/ff;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/ff;)Lcom/estrongs/android/ui/guesture/ESGesturePanel;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ff;->c:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/ff;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ff;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/ff;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ff;->d:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 9

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ff;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a00cd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ff;->d:Ljava/lang/String;

    if-nez v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0a012d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ff;->c:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ff;->c:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    iput-boolean v8, v0, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->c:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ff;->c:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    new-instance v2, Lcom/estrongs/android/ui/dialog/fg;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/fg;-><init>(Lcom/estrongs/android/ui/dialog/ff;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->a(Lcom/estrongs/android/ui/guesture/c;)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ff;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b03fe

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ff;->a:Lcom/estrongs/android/ui/dialog/cg;

    return-void

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/ff;->b:Landroid/content/Context;

    const v3, 0x7f0b0400

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/estrongs/android/ui/dialog/ff;->b:Landroid/content/Context;

    iget-object v7, p0, Lcom/estrongs/android/ui/dialog/ff;->d:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/estrongs/android/ui/guesture/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ff;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ff;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/cg;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ff;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->dismiss()V

    return-void
.end method
