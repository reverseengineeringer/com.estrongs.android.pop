.class public Lcom/estrongs/android/ui/dialog/ey;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/dialog/cg;

.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ey;->b:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/estrongs/android/ui/dialog/ey;->c:Z

    new-instance v0, Lcom/estrongs/android/ui/view/b;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1, p2, p3}, Lcom/estrongs/android/ui/view/b;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/dialog/ey;->b(Lcom/estrongs/android/ui/view/b;)V

    invoke-static {p2}, Lcom/estrongs/android/util/am;->by(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/dialog/ey;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ey;->b:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/estrongs/android/ui/dialog/ey;->c:Z

    new-instance v0, Lcom/estrongs/android/ui/view/b;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1, p2}, Lcom/estrongs/android/ui/view/b;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/dialog/ey;->b(Lcom/estrongs/android/ui/view/b;)V

    invoke-direct {p0, p2}, Lcom/estrongs/android/ui/dialog/ey;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/ey;)Lcom/estrongs/android/ui/dialog/cg;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ey;->a:Lcom/estrongs/android/ui/dialog/cg;

    return-object v0
.end method

.method private a(Lcom/estrongs/android/ui/view/b;)V
    .locals 1

    new-instance v0, Lcom/estrongs/android/ui/dialog/ez;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ez;-><init>(Lcom/estrongs/android/ui/dialog/ey;)V

    invoke-virtual {p1, v0}, Lcom/estrongs/android/ui/view/b;->a(Lcom/estrongs/android/view/eb;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "ftpes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ftps"

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ey;->b:Landroid/content/Context;

    const v2, 0x7f0b01ee

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/estrongs/android/ui/dialog/ey;->c:Z

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ey;->b:Landroid/content/Context;

    const v2, 0x7f0b01ef

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ey;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/cg;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private b(Lcom/estrongs/android/ui/view/b;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/ey;->a(Lcom/estrongs/android/ui/view/b;)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/ey;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/estrongs/android/ui/view/b;->aq()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000b

    new-instance v2, Lcom/estrongs/android/ui/dialog/fb;

    invoke-direct {v2, p0, p1}, Lcom/estrongs/android/ui/dialog/fb;-><init>(Lcom/estrongs/android/ui/dialog/ey;Lcom/estrongs/android/ui/view/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000c

    new-instance v2, Lcom/estrongs/android/ui/dialog/fa;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/fa;-><init>(Lcom/estrongs/android/ui/dialog/ey;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/ey;->a:Lcom/estrongs/android/ui/dialog/cg;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ey;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    return-void
.end method
