.class public Lcom/estrongs/android/ui/dialog/fb;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/dialog/ci;

.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fb;->b:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/estrongs/android/ui/dialog/fb;->c:Z

    new-instance v0, Lcom/estrongs/android/ui/view/b;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1, p2, p3}, Lcom/estrongs/android/ui/view/b;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/dialog/fb;->b(Lcom/estrongs/android/ui/view/b;)V

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/dialog/fb;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fb;->b:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/estrongs/android/ui/dialog/fb;->c:Z

    new-instance v0, Lcom/estrongs/android/ui/view/b;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1, p2}, Lcom/estrongs/android/ui/view/b;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/dialog/fb;->b(Lcom/estrongs/android/ui/view/b;)V

    invoke-direct {p0, p2}, Lcom/estrongs/android/ui/dialog/fb;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/fb;)Lcom/estrongs/android/ui/dialog/ci;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fb;->a:Lcom/estrongs/android/ui/dialog/ci;

    return-object v0
.end method

.method private a(Lcom/estrongs/android/ui/view/b;)V
    .locals 1

    new-instance v0, Lcom/estrongs/android/ui/dialog/fc;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/fc;-><init>(Lcom/estrongs/android/ui/dialog/fb;)V

    invoke-virtual {p1, v0}, Lcom/estrongs/android/ui/view/b;->a(Lcom/estrongs/android/view/gg;)V

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

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fb;->b:Landroid/content/Context;

    const v2, 0x7f080455

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/estrongs/android/ui/dialog/fb;->c:Z

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fb;->b:Landroid/content/Context;

    const v2, 0x7f0802af

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fb;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/ci;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private b(Lcom/estrongs/android/ui/view/b;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/fb;->a(Lcom/estrongs/android/ui/view/b;)V

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/fb;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/estrongs/android/ui/view/b;->aE()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080226

    new-instance v2, Lcom/estrongs/android/ui/dialog/fe;

    invoke-direct {v2, p0, p1}, Lcom/estrongs/android/ui/dialog/fe;-><init>(Lcom/estrongs/android/ui/dialog/fb;Lcom/estrongs/android/ui/view/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080221

    new-instance v2, Lcom/estrongs/android/ui/dialog/fd;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/fd;-><init>(Lcom/estrongs/android/ui/dialog/fb;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/fb;->a:Lcom/estrongs/android/ui/dialog/ci;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fb;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    return-void
.end method
