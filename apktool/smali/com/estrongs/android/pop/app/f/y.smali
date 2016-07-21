.class public Lcom/estrongs/android/pop/app/f/y;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/estrongs/android/ui/dialog/ci;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/TableLayout;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Lcom/estrongs/android/pop/app/f/x;

.field private h:Lcom/estrongs/android/pop/app/f/x;

.field private i:Landroid/content/Intent;

.field private j:Lcom/estrongs/android/pop/app/f/an;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->e:Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->f:Landroid/widget/Button;

    new-instance v0, Lcom/estrongs/android/pop/app/f/x;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/f/x;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->g:Lcom/estrongs/android/pop/app/f/x;

    new-instance v0, Lcom/estrongs/android/pop/app/f/x;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/f/x;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->h:Lcom/estrongs/android/pop/app/f/x;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/f/y;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/f/y;->i:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/f/y;->b()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/f/y;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->g:Lcom/estrongs/android/pop/app/f/x;

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030176

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->d:Landroid/widget/TableLayout;

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/y;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800a6

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/y;->d:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080226

    new-instance v2, Lcom/estrongs/android/pop/app/f/aa;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/f/aa;-><init>(Lcom/estrongs/android/pop/app/f/y;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080221

    new-instance v2, Lcom/estrongs/android/pop/app/f/z;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/f/z;-><init>(Lcom/estrongs/android/pop/app/f/y;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->b:Lcom/estrongs/android/ui/dialog/ci;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/f/y;->c()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/f/y;->d()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/f/y;)Lcom/estrongs/android/pop/app/f/x;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->h:Lcom/estrongs/android/pop/app/f/x;

    return-object v0
.end method

.method private c()V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/f/y;->e()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CURRENT_WORKING_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->c:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/y;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/y;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/f/y;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/f/y;->e()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 5

    const v4, 0x7f0c000d

    const v3, 0x7f0c000c

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->d:Landroid/widget/TableLayout;

    const v1, 0x7f0e0607

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->d:Landroid/widget/TableLayout;

    const v1, 0x7f0e060b

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/y;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/y;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/estrongs/android/pop/app/f/ab;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/y;->e:Landroid/widget/Button;

    const v2, 0x7f08063c

    invoke-direct {v0, p0, v1, v4, v2}, Lcom/estrongs/android/pop/app/f/ab;-><init>(Lcom/estrongs/android/pop/app/f/y;Landroid/widget/Button;II)V

    new-instance v0, Lcom/estrongs/android/pop/app/f/ac;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/y;->f:Landroid/widget/Button;

    const v2, 0x7f08062d

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/estrongs/android/pop/app/f/ac;-><init>(Lcom/estrongs/android/pop/app/f/y;Landroid/widget/Button;II)V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/f/y;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->a:Landroid/content/Context;

    return-object v0
.end method

.method private e()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->i:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/f/an;)Lcom/estrongs/android/pop/app/f/y;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/f/y;->j:Lcom/estrongs/android/pop/app/f/an;

    return-object p0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->b:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->j:Lcom/estrongs/android/pop/app/f/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->j:Lcom/estrongs/android/pop/app/f/an;

    invoke-interface {v0, p1}, Lcom/estrongs/android/pop/app/f/an;->a(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/y;->b:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    return-void
.end method
