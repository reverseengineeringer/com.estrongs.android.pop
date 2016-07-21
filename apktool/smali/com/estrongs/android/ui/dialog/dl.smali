.class public Lcom/estrongs/android/ui/dialog/dl;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/dialog/ci;

.field private b:Landroid/content/Context;

.field private c:Lcom/estrongs/android/ui/dialog/do;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/CheckBox;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/dl;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/dl;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/android/ui/dialog/dl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/dl;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/dialog/dl;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/estrongs/android/ui/dialog/dl;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/dl;->e:Landroid/widget/CheckBox;

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/dl;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dl;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/dl;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dl;->e:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030097

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0e02d2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/dl;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/dl;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    const v2, 0x7f080226

    new-instance v3, Lcom/estrongs/android/ui/dialog/dn;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/dialog/dn;-><init>(Lcom/estrongs/android/ui/dialog/dl;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    const v2, 0x7f080221

    new-instance v3, Lcom/estrongs/android/ui/dialog/dm;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/dialog/dm;-><init>(Lcom/estrongs/android/ui/dialog/dl;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/dl;->a:Lcom/estrongs/android/ui/dialog/ci;

    const v1, 0x7f0e02d3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/dl;->e:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/dl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dl;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/dialog/dl;)Lcom/estrongs/android/ui/dialog/do;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dl;->c:Lcom/estrongs/android/ui/dialog/do;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dl;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/dialog/do;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/dl;->c:Lcom/estrongs/android/ui/dialog/do;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dl;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dl;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dl;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dl;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/ci;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
