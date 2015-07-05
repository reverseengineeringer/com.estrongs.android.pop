.class public Lcom/estrongs/android/ui/dialog/es;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/dialog/cg;

.field private b:Landroid/view/View;

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->d:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->e:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->f:Landroid/widget/EditText;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/es;->g:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/es;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/es;->b()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/es;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->d:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->e:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->f:Landroid/widget/EditText;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/dialog/es;->g:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/es;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/es;->b()V

    invoke-direct {p0, p2, p3}, Lcom/estrongs/android/ui/dialog/es;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/es;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/es;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/es;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/es;->h:Ljava/lang/String;

    if-eqz p1, :cond_2

    if-eqz p1, :cond_2

    iput-boolean v4, p0, Lcom/estrongs/android/ui/dialog/es;->g:Z

    invoke-static {p1}, Lcom/estrongs/android/util/am;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/es;->d:Landroid/widget/EditText;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    array-length v1, v0

    if-le v1, v4, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/es;->e:Landroid/widget/EditText;

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/es;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bd;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/es;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/es;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/es;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/es;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/es;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/am;->K(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/fs/impl/adb/c;->g(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/es;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->c:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->b:Landroid/view/View;

    const v1, 0x7f0a02c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->b:Landroid/view/View;

    const v1, 0x7f0a02c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->b:Landroid/view/View;

    const v1, 0x7f0a02c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/es;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method private c()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/es;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/es;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000b

    new-instance v2, Lcom/estrongs/android/ui/dialog/eu;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/eu;-><init>(Lcom/estrongs/android/ui/dialog/es;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b000c

    new-instance v2, Lcom/estrongs/android/ui/dialog/et;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/dialog/et;-><init>(Lcom/estrongs/android/ui/dialog/es;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    const v1, 0x7f0b0573

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ct;->a(I)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->a:Lcom/estrongs/android/ui/dialog/cg;

    return-void
.end method

.method private d()V
    .locals 4

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/es;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/es;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/es;->c:Landroid/content/Context;

    const v2, 0x7f0b01c8

    const v3, 0x7f0b01c9

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/a/u;->a(Landroid/content/Context;II)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/ui/dialog/ev;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/dialog/ev;-><init>(Lcom/estrongs/android/ui/dialog/es;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/dialog/es;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/es;->g:Z

    return v0
.end method

.method private e()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adb://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic e(Lcom/estrongs/android/ui/dialog/es;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/dialog/es;)Lcom/estrongs/android/ui/dialog/cg;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->a:Lcom/estrongs/android/ui/dialog/cg;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/es;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    return-void
.end method
