.class public Lcom/estrongs/android/ui/c/a/b;
.super Lcom/estrongs/android/ui/c/a/a;


# instance fields
.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private final f:Ljava/text/DecimalFormat;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/c/a/a;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, " 0%"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a/b;->f:Ljava/text/DecimalFormat;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a/b;->g:Ljava/util/List;

    const-string v0, "/"

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a/b;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/a/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/app/analysis/a;->a()Lcom/estrongs/android/pop/app/analysis/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/android/pop/app/analysis/a;->a(Ljava/lang/String;Lcom/estrongs/android/pop/app/analysis/y;)V

    return-void
.end method

.method private c(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/b;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const v0, 0x7f08034e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/a/b;->a(I)V

    const v0, 0x7f080350

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/a/b;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/b;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/b;->c:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/c/a/b;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a/b;->h:Ljava/lang/String;

    return-void
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/b;->d:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/c/a/b;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0e0229

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a/b;->c:Landroid/widget/TextView;

    const v0, 0x7f0e022a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a/b;->d:Landroid/widget/TextView;

    const v0, 0x7f0e022b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a/b;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/b;->e:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/b;->e:Landroid/widget/TextView;

    const v1, 0x7f08034b

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/c/a/b;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a/b;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/estrongs/android/ui/c/a/c;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/c/a/c;-><init>(Lcom/estrongs/android/ui/c/a/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
