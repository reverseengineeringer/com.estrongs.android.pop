.class public Lcom/estrongs/android/pop/app/compress/aj;
.super Ljava/lang/Object;


# instance fields
.field private A:Landroid/widget/Button;

.field private B:[Ljava/lang/String;

.field private C:I

.field private D:Lcom/estrongs/android/pop/app/compress/aw;

.field a:Z

.field b:Lcom/estrongs/io/archive/j;

.field private c:Lcom/estrongs/android/ui/dialog/ci;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/view/View;

.field private h:Landroid/widget/EditText;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/widget/RadioGroup;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Lcom/estrongs/io/archive/e;

.field private o:Landroid/widget/ProgressBar;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Lcom/estrongs/io/a/a/b;

.field private w:Landroid/widget/EditText;

.field private x:Landroid/widget/CheckBox;

.field private y:Landroid/view/View;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->h:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->n:Lcom/estrongs/io/archive/e;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/compress/aj;->a:Z

    iput-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->o:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->w:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->x:Landroid/widget/CheckBox;

    const/4 v0, 0x2

    iput v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->C:I

    iput-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->D:Lcom/estrongs/android/pop/app/compress/aw;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/aj;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/compress/aj;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/compress/aj;->f:Ljava/util/List;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->d:Landroid/content/Context;

    const v2, 0x7f08033f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/compress/aj;->c()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/aj;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/compress/aj;->C:I

    return p1
.end method

.method private a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/aj;)Lcom/estrongs/io/a/a/b;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->v:Lcom/estrongs/io/a/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/aj;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/aj;->i:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "zip"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/aj;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->A:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/aj;->B:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "compress_level"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->A:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/aj;->B:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "compress_level"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->A:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/aj;->B:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "compress_level"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->A:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/compress/aj;->B:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "compress_level"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/compress/aj;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/aj;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/compress/aj;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/compress/aj;Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/compress/aj;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030046

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->g:Landroid/view/View;

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080226

    new-instance v2, Lcom/estrongs/android/pop/app/compress/an;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/compress/an;-><init>(Lcom/estrongs/android/pop/app/compress/aj;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080221

    new-instance v2, Lcom/estrongs/android/pop/app/compress/am;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/compress/am;-><init>(Lcom/estrongs/android/pop/app/compress/aj;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/compress/ak;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/compress/ak;-><init>(Lcom/estrongs/android/pop/app/compress/aj;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->c:Lcom/estrongs/android/ui/dialog/ci;

    const v0, 0x7f0e01a3

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/compress/aj;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->h:Landroid/widget/EditText;

    const v0, 0x7f0e01a4

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/compress/aj;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->k:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->k:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/estrongs/android/pop/app/compress/ap;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/compress/ap;-><init>(Lcom/estrongs/android/pop/app/compress/aj;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const v0, 0x7f0e01a2

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/compress/aj;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->m:Landroid/view/View;

    const v0, 0x7f0e01b1

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/compress/aj;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->l:Landroid/view/View;

    const v0, 0x7f0e01a7

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/compress/aj;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/compress/aj;->d()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/compress/aj;->e()V

    return-void

    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->f:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/compress/aj;->a()V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->d:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .locals 3

    const v0, 0x7f0e01ac

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/compress/aj;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->y:Landroid/view/View;

    const v0, 0x7f0e01ae

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/compress/aj;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->w:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->w:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->w:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    const v0, 0x7f0e01af

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/compress/aj;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    new-instance v2, Lcom/estrongs/android/pop/app/compress/aq;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/pop/app/compress/aq;-><init>(Lcom/estrongs/android/pop/app/compress/aj;I)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0e01b0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/compress/aj;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->x:Landroid/widget/CheckBox;

    const v0, 0x7f0e01a8

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/compress/aj;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->z:Landroid/view/View;

    const v0, 0x7f0e01ab

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/compress/aj;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->A:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->B:[Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->A:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->B:[Ljava/lang/String;

    iget v2, p0, Lcom/estrongs/android/pop/app/compress/aj;->C:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->A:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/pop/app/compress/ar;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/compress/ar;-><init>(Lcom/estrongs/android/pop/app/compress/aj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/widget/RadioGroup;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->k:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, ""

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    :cond_0
    const-string v0, "allfiles"

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->h:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/EditText;->setSelection(II)V

    return-void

    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->g:Landroid/view/View;

    return-object v0
.end method

.method private f()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->a:Z

    const v0, 0x7f0e01bc

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/compress/aj;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->t:Landroid/widget/TextView;

    const v0, 0x7f0e01bd

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/compress/aj;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->u:Landroid/widget/TextView;

    const v0, 0x7f0e01bf

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/compress/aj;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->p:Landroid/widget/TextView;

    const v0, 0x7f0e01c3

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/compress/aj;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->o:Landroid/widget/ProgressBar;

    const v0, 0x7f0e01c2

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/compress/aj;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->s:Landroid/widget/TextView;

    const v0, 0x7f0e01c0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/compress/aj;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->q:Landroid/widget/TextView;

    const v0, 0x7f0e01c1

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/compress/aj;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->c:Lcom/estrongs/android/ui/dialog/ci;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->d:Landroid/content/Context;

    const v2, 0x7f080221

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/compress/av;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/compress/av;-><init>(Lcom/estrongs/android/pop/app/compress/aj;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ci;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/estrongs/io/archive/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->d:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/compress/aj;->d:Landroid/content/Context;

    const v4, 0x7f08040d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/io/archive/e;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/compress/l;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->n:Lcom/estrongs/io/archive/e;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->n:Lcom/estrongs/io/archive/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/e;->f(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->n:Lcom/estrongs/io/archive/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/e;->g(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->n:Lcom/estrongs/io/archive/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/e;->e(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->n:Lcom/estrongs/io/archive/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/e;->a(Landroid/widget/ProgressBar;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->n:Lcom/estrongs/io/archive/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/e;->b(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->n:Lcom/estrongs/io/archive/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/e;->h(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->n:Lcom/estrongs/io/archive/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/estrongs/io/archive/e;->i(Landroid/widget/TextView;)V

    new-instance v0, Lcom/estrongs/io/a/a/b;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->n:Lcom/estrongs/io/archive/e;

    invoke-direct {v0, v1}, Lcom/estrongs/io/a/a/b;-><init>(Lcom/estrongs/io/archive/e;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->v:Lcom/estrongs/io/a/a/b;

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/compress/aj;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/compress/aj;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->D:Lcom/estrongs/android/pop/app/compress/aw;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/compress/ai;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/compress/ai;-><init>()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/compress/aj;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/compress/ai;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->f:Ljava/util/List;

    iput-object v1, v0, Lcom/estrongs/android/pop/app/compress/ai;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/estrongs/android/pop/app/compress/ai;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->w:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/compress/ai;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->w:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/compress/aj;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/pop/app/compress/ai;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->D:Lcom/estrongs/android/pop/app/compress/aw;

    invoke-interface {v1, v0}, Lcom/estrongs/android/pop/app/compress/aw;->a(Lcom/estrongs/android/pop/app/compress/ai;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/compress/aj;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->l:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0e0108

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/compress/aj;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->d:Landroid/content/Context;

    const v2, 0x7f080692

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/compress/aj;->i()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->c:Lcom/estrongs/android/ui/dialog/ci;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->d:Landroid/content/Context;

    const v2, 0x7f080401

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/compress/aj;->i:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/estrongs/android/pop/app/compress/aj;->j:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setTitle(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->a:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/compress/aj;->f()V

    :cond_1
    new-instance v0, Lcom/estrongs/android/pop/app/compress/al;

    const-string v1, "ArchiveCompress"

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/compress/al;-><init>(Lcom/estrongs/android/pop/app/compress/aj;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/al;->start()V

    goto :goto_0
.end method

.method private h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->e:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/compress/aj;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/compress/aj;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/compress/aj;->g()V

    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    const-string v0, "auto_name"

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/compress/aj;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/compress/aj;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->y:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->z:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->w:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic m(Lcom/estrongs/android/pop/app/compress/aj;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->B:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/pop/app/compress/aj;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->C:I

    return v0
.end method

.method static synthetic o(Lcom/estrongs/android/pop/app/compress/aj;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->A:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic p(Lcom/estrongs/android/pop/app/compress/aj;)Lcom/estrongs/io/archive/e;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->n:Lcom/estrongs/io/archive/e;

    return-object v0
.end method

.method static synthetic q(Lcom/estrongs/android/pop/app/compress/aj;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->f:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->c:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/compress/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/aj;->D:Lcom/estrongs/android/pop/app/compress/aw;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/aj;->c:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    return-void
.end method
