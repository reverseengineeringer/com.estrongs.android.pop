.class public Lcom/estrongs/android/pop/app/compress/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/estrongs/android/ui/dialog/cg;

.field private c:Lcom/estrongs/android/ui/theme/al;

.field private d:Ljava/io/File;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/view/View$OnClickListener;

.field private k:Lcom/estrongs/android/pop/app/compress/j;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Lcom/estrongs/android/pop/app/compress/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/estrongs/android/pop/app/compress/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/estrongs/android/pop/app/compress/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->c:Lcom/estrongs/android/ui/theme/al;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/app/compress/a;->l:Z

    iput-object p3, p0, Lcom/estrongs/android/pop/app/compress/a;->m:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/compress/a;->i:Ljava/lang/String;

    iput-object p5, p0, Lcom/estrongs/android/pop/app/compress/a;->n:Ljava/util/List;

    iput-object p6, p0, Lcom/estrongs/android/pop/app/compress/a;->k:Lcom/estrongs/android/pop/app/compress/j;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/compress/a;->o:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/compress/a;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/a;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/compress/a;->g:I

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/a;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/compress/a;->g:I

    return p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/a;Lcom/estrongs/android/pop/app/compress/k;)Lcom/estrongs/android/pop/app/compress/k;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/a;->p:Lcom/estrongs/android/pop/app/compress/k;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/a;->h:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ".*part[0-9]+\\.rar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "part"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/compress/a;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/compress/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/compress/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/compress/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/compress/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/compress/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/a;->i:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/a;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0216

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v2, 0x7f0b000b

    new-instance v3, Lcom/estrongs/android/pop/app/compress/c;

    invoke-direct {v3, p0, v1}, Lcom/estrongs/android/pop/app/compress/c;-><init>(Lcom/estrongs/android/pop/app/compress/a;Landroid/view/View;)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v2, 0x7f0b000c

    new-instance v3, Lcom/estrongs/android/pop/app/compress/b;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/compress/b;-><init>(Lcom/estrongs/android/pop/app/compress/a;)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->b:Lcom/estrongs/android/ui/dialog/cg;

    new-instance v0, Lcom/estrongs/android/pop/app/compress/d;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/compress/d;-><init>(Lcom/estrongs/android/pop/app/compress/a;Landroid/view/View;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->j:Landroid/view/View$OnClickListener;

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/a;->m:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->d:Ljava/io/File;

    const v0, 0x7f0a0051

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/a;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/compress/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/compress/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/estrongs/fs/util/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/compress/a;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0052

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/compress/a;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0053

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/compress/a;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0050

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/compress/a;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0041

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->e:Landroid/widget/EditText;

    const-string v3, "/sdcard/"

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->e:Landroid/widget/EditText;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->e:Landroid/widget/EditText;

    new-instance v3, Lcom/estrongs/android/pop/app/compress/f;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/compress/f;-><init>(Lcom/estrongs/android/pop/app/compress/a;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/util/f;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->i:Ljava/lang/String;

    :cond_0
    const v0, 0x7f0a0056

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/a;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/compress/a;->i:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/c;->a(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/estrongs/android/util/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/estrongs/android/pop/app/compress/a;->g:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/a;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/estrongs/fs/util/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/compress/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/compress/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/compress/a;->l:Z

    return v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/compress/a;)Lcom/estrongs/android/pop/app/compress/k;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->p:Lcom/estrongs/android/pop/app/compress/k;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/compress/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/compress/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/compress/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/compress/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->n:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/compress/a;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->d:Ljava/io/File;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/compress/a;)Lcom/estrongs/android/pop/app/compress/j;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->k:Lcom/estrongs/android/pop/app/compress/j;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->b:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/compress/a;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->b:Lcom/estrongs/android/ui/dialog/cg;

    new-instance v1, Lcom/estrongs/android/pop/app/compress/i;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/compress/i;-><init>(Lcom/estrongs/android/pop/app/compress/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cg;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/a;->b:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->dismiss()V

    return-void
.end method
