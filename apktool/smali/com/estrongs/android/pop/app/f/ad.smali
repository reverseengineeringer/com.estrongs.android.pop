.class abstract Lcom/estrongs/android/pop/app/f/ad;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field protected e:I

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Landroid/widget/Button;

.field protected h:I

.field protected i:I

.field final synthetic j:Lcom/estrongs/android/pop/app/f/y;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/f/y;Landroid/widget/Button;II)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/f/ad;->j:Lcom/estrongs/android/pop/app/f/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/estrongs/android/pop/app/f/ad;->e:I

    iput v0, p0, Lcom/estrongs/android/pop/app/f/ad;->h:I

    iput p4, p0, Lcom/estrongs/android/pop/app/f/ad;->i:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/f/ad;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ad;->f:Ljava/util/List;

    invoke-static {p1}, Lcom/estrongs/android/pop/app/f/y;->e(Lcom/estrongs/android/pop/app/f/y;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/estrongs/android/pop/app/f/ae;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/pop/app/f/ae;-><init>(Lcom/estrongs/android/pop/app/f/ad;Lcom/estrongs/android/pop/app/f/y;Landroid/widget/Button;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ad;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/f/ad;->e:I

    iput-object p2, p0, Lcom/estrongs/android/pop/app/f/ad;->g:Landroid/widget/Button;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/f/ad;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/f/ad;->a:I

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/f/ad;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/f/ad;->a:I

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/f/ad;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/f/ad;->b:I

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/f/ad;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/f/ad;->b:I

    return p1
.end method


# virtual methods
.method protected a()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ad;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected a([Ljava/lang/String;Ljava/lang/String;II)Lcom/estrongs/android/ui/dialog/cv;
    .locals 6

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ad;->j:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/f/y;->e(Lcom/estrongs/android/pop/app/f/y;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030177

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0e060e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0e0611

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    array-length v3, p1

    if-lez v3, :cond_0

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/estrongs/android/pop/app/f/ad;->a:I

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/estrongs/android/pop/app/f/ad;->b:I

    :cond_0
    new-instance v3, Lcom/estrongs/android/pop/app/f/ag;

    invoke-direct {v3, p0, p1, v1}, Lcom/estrongs/android/pop/app/f/ag;-><init>(Lcom/estrongs/android/pop/app/f/ad;[Ljava/lang/String;Landroid/widget/Button;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v3, p0, Lcom/estrongs/android/pop/app/f/ad;->a:I

    aget-object v3, p1, v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/estrongs/android/pop/app/f/ai;

    invoke-direct {v1, p0, p1, v0}, Lcom/estrongs/android/pop/app/f/ai;-><init>(Lcom/estrongs/android/pop/app/f/ad;[Ljava/lang/String;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, p0, Lcom/estrongs/android/pop/app/f/ad;->b:I

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e060c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f0e060f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    if-le p3, v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-le p4, v5, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    new-instance v3, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/f/ad;->j:Lcom/estrongs/android/pop/app/f/y;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/f/y;->e(Lcom/estrongs/android/pop/app/f/y;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p2}, Lcom/estrongs/android/ui/dialog/cv;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v3, v2}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/cv;

    const v2, 0x7f080226

    new-instance v4, Lcom/estrongs/android/pop/app/f/am;

    invoke-direct {v4, p0, v0, v1, p1}, Lcom/estrongs/android/pop/app/f/am;-><init>(Lcom/estrongs/android/pop/app/f/ad;Landroid/widget/EditText;Landroid/widget/EditText;[Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080221

    new-instance v2, Lcom/estrongs/android/pop/app/f/al;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/f/al;-><init>(Lcom/estrongs/android/pop/app/f/ad;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(Z)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/f/ak;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/f/ak;-><init>(Lcom/estrongs/android/pop/app/f/ad;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/estrongs/android/ui/dialog/cv;

    return-object v3
.end method

.method abstract a(ILjava/lang/Object;)V
.end method

.method protected a(ILjava/lang/String;ILjava/lang/String;)V
    .locals 3

    const-string v0, ""

    if-lez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-lez p3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/ad;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/f/ad;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/f/ad;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/estrongs/android/pop/app/f/ad;->h:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/f/ad;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/f/ad;->f:Ljava/util/List;

    iget v2, p0, Lcom/estrongs/android/pop/app/f/ad;->h:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
