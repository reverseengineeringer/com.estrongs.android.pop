.class public Lcom/estrongs/android/a/a;
.super Lcom/estrongs/android/ui/dialog/cg;


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/estrongs/android/a/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Landroid/app/Activity;

.field e:Landroid/content/DialogInterface$OnClickListener;

.field protected f:Lcom/estrongs/android/a/d;

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/CheckBox;

.field private l:Landroid/widget/CheckBox;

.field private m:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/a/a;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p2}, Lcom/estrongs/android/a/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/estrongs/android/a/a;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/a/a;->h:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/estrongs/android/a/a;->i:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/estrongs/android/a/a;->j:Landroid/widget/EditText;

    iput-object v2, p0, Lcom/estrongs/android/a/a;->k:Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/estrongs/android/a/a;->l:Landroid/widget/CheckBox;

    new-instance v0, Lcom/estrongs/android/a/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/a/b;-><init>(Lcom/estrongs/android/a/a;)V

    iput-object v0, p0, Lcom/estrongs/android/a/a;->m:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/estrongs/android/a/c;

    invoke-direct {v0, p0}, Lcom/estrongs/android/a/c;-><init>(Lcom/estrongs/android/a/a;)V

    iput-object v0, p0, Lcom/estrongs/android/a/a;->e:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/estrongs/android/a/a;->d:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/a/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/a/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0b0078

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/estrongs/android/util/am;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/a/a;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a3

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/a/a;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0a02d6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/a/a;->i:Landroid/widget/EditText;

    const v0, 0x7f0a0118

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/a/a;->j:Landroid/widget/EditText;

    const v0, 0x7f0a02da

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/a/a;->k:Landroid/widget/CheckBox;

    const v0, 0x7f0a02fb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/a/a;->l:Landroid/widget/CheckBox;

    const v0, 0x7f0a009f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/a/a;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/a/a;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v0, p0, Lcom/estrongs/android/a/a;->k:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/estrongs/android/a/a;->m:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0b000b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/a/a;->e:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/a/a;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f0b000c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/a/a;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/a/a;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/a;->k:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/a/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/a;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/a/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/a;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/a/a;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/a/a;->l:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const v0, 0x7f0a00ac

    invoke-virtual {p0, v0}, Lcom/estrongs/android/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00b4

    invoke-virtual {p0, v1}, Lcom/estrongs/android/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public a(Lcom/estrongs/android/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/a/a;->f:Lcom/estrongs/android/a/d;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/a/a;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/a/a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
