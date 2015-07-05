.class public Lcom/estrongs/android/pop/app/b/y;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/estrongs/android/ui/dialog/cg;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/TableLayout;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Lcom/estrongs/android/pop/app/b/x;

.field private h:Lcom/estrongs/android/pop/app/b/x;

.field private i:Landroid/content/Intent;

.field private j:Lcom/estrongs/android/pop/app/b/an;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->e:Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->f:Landroid/widget/Button;

    new-instance v0, Lcom/estrongs/android/pop/app/b/x;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/b/x;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->g:Lcom/estrongs/android/pop/app/b/x;

    new-instance v0, Lcom/estrongs/android/pop/app/b/x;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/b/x;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->h:Lcom/estrongs/android/pop/app/b/x;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/y;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/b/y;->i:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/y;->b()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/b/y;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/b/y;)Lcom/estrongs/android/pop/app/b/x;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->g:Lcom/estrongs/android/pop/app/b/x;

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->d:Landroid/widget/TableLayout;

    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/y;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0020

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/y;->d:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000b

    new-instance v2, Lcom/estrongs/android/pop/app/b/aa;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/b/aa;-><init>(Lcom/estrongs/android/pop/app/b/y;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000c

    new-instance v2, Lcom/estrongs/android/pop/app/b/z;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/b/z;-><init>(Lcom/estrongs/android/pop/app/b/y;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->b:Lcom/estrongs/android/ui/dialog/cg;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/y;->c()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/y;->d()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/b/y;)Lcom/estrongs/android/pop/app/b/x;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->h:Lcom/estrongs/android/pop/app/b/x;

    return-object v0
.end method

.method private c()V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/y;->e()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CURRENT_WORKING_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->c:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ba(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/y;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/y;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/b/y;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/y;->e()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 5

    const v4, 0x7f070008

    const v3, 0x7f070007

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->d:Landroid/widget/TableLayout;

    const v1, 0x7f0a0391

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->d:Landroid/widget/TableLayout;

    const v1, 0x7f0a0395

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/y;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/y;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/estrongs/android/pop/app/b/ab;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/y;->e:Landroid/widget/Button;

    const v2, 0x7f0b010f

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/estrongs/android/pop/app/b/ab;-><init>(Lcom/estrongs/android/pop/app/b/y;Landroid/widget/Button;II)V

    new-instance v0, Lcom/estrongs/android/pop/app/b/ac;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/y;->f:Landroid/widget/Button;

    const v2, 0x7f0b0110

    invoke-direct {v0, p0, v1, v4, v2}, Lcom/estrongs/android/pop/app/b/ac;-><init>(Lcom/estrongs/android/pop/app/b/y;Landroid/widget/Button;II)V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/b/y;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->a:Landroid/content/Context;

    return-object v0
.end method

.method private e()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->i:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/b/an;)Lcom/estrongs/android/pop/app/b/y;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/y;->j:Lcom/estrongs/android/pop/app/b/an;

    return-object p0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->b:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->j:Lcom/estrongs/android/pop/app/b/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->j:Lcom/estrongs/android/pop/app/b/an;

    invoke-interface {v0, p1}, Lcom/estrongs/android/pop/app/b/an;->a(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/y;->b:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->dismiss()V

    return-void
.end method
