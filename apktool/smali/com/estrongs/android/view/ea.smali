.class public abstract Lcom/estrongs/android/view/ea;
.super Ljava/lang/Object;


# instance fields
.field protected ad:Landroid/app/Activity;

.field protected ae:Landroid/content/Context;

.field protected af:Landroid/view/View;

.field protected ag:Landroid/view/LayoutInflater;

.field protected ah:Lcom/estrongs/android/view/eb;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/view/ea;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/view/ea;->ad:Landroid/app/Activity;

    invoke-direct {p0, p2, p3}, Lcom/estrongs/android/view/ea;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/view/ea;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/view/ea;->ae:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lcom/estrongs/android/view/ea;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/view/ea;->ar()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/ea;->ag:Landroid/view/LayoutInflater;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/ea;->ag:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/estrongs/android/view/ea;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/ea;->af:Landroid/view/View;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/view/ea;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/ea;->af:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/view/ea;->af:Landroid/view/View;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/estrongs/android/view/ea;->af:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public a(II)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/ea;->n(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/estrongs/android/view/ea;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/view/ea;->ar()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/estrongs/android/view/ea;->ar()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start the activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ag;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/view/eb;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ea;->ah:Lcom/estrongs/android/view/eb;

    return-void
.end method

.method public a([I[I)V
    .locals 4

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p1, v0

    aget v3, p2, v0

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/android/view/ea;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aq()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ea;->af:Landroid/view/View;

    return-object v0
.end method

.method public ar()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ea;->ad:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ea;->ad:Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ea;->ae:Landroid/content/Context;

    goto :goto_0
.end method

.method protected k(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ea;->af:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected l(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/ea;->ar()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected m(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/view/ea;->ar()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected n(I)Landroid/widget/TextView;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/ea;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method
