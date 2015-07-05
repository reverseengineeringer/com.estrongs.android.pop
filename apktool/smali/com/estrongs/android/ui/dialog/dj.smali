.class public Lcom/estrongs/android/ui/dialog/dj;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/dialog/cg;

.field private b:Landroid/content/Context;

.field private c:Lcom/estrongs/android/ui/dialog/dm;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/CheckBox;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/dj;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/dj;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/android/ui/dialog/dj;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/dj;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/dialog/dj;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/estrongs/android/ui/dialog/dj;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/dj;->e:Landroid/widget/CheckBox;

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/dj;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dj;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/dj;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dj;->e:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dj;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a012e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/dj;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/estrongs/android/ui/dialog/ct;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/dj;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/ct;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/dialog/ct;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    const v2, 0x7f0b000b

    new-instance v3, Lcom/estrongs/android/ui/dialog/dl;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/dialog/dl;-><init>(Lcom/estrongs/android/ui/dialog/dj;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/dialog/ct;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    const v2, 0x7f0b000c

    new-instance v3, Lcom/estrongs/android/ui/dialog/dk;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/dialog/dk;-><init>(Lcom/estrongs/android/ui/dialog/dj;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/dialog/ct;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/ct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/ct;->b()Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/dialog/dj;->a:Lcom/estrongs/android/ui/dialog/cg;

    const v1, 0x7f0a012f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/dj;->e:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/dj;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dj;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/dialog/dj;)Lcom/estrongs/android/ui/dialog/dm;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dj;->c:Lcom/estrongs/android/ui/dialog/dm;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dj;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->show()V

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/dialog/dm;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/dj;->c:Lcom/estrongs/android/ui/dialog/dm;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dj;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dj;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dj;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/dj;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/cg;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
