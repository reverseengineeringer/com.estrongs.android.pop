.class public Lcom/estrongs/android/ui/view/b;
.super Lcom/estrongs/android/view/gf;


# instance fields
.field private A:Landroid/widget/TableRow;

.field private B:Landroid/widget/TableRow;

.field private C:Landroid/widget/TableRow;

.field private D:Landroid/view/View;

.field private E:Landroid/view/View;

.field private F:Landroid/view/View;

.field private G:Ljava/lang/String;

.field private H:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private I:Landroid/os/Handler;

.field private J:Landroid/view/View$OnClickListener;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:I

.field private N:I

.field a:Z

.field b:Z

.field c:Z

.field public d:Landroid/view/View$OnClickListener;

.field public e:Landroid/view/View$OnClickListener;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/CheckBox;

.field private l:Landroid/widget/CheckBox;

.field private m:Landroid/widget/RadioButton;

.field private n:Landroid/widget/RadioButton;

.field private o:Landroid/widget/RadioButton;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/EditText;

.field private s:Landroid/widget/CheckBox;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Landroid/widget/TableRow;

.field private y:Landroid/widget/TableRow;

.field private z:Landroid/widget/TableRow;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/gf;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->f:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->g:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->h:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->i:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->j:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->k:Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->l:Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->m:Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->n:Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->o:Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->p:Landroid/widget/Button;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->q:Landroid/widget/Button;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->r:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->s:Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->u:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/ui/view/b;->v:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->x:Landroid/widget/TableRow;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->y:Landroid/widget/TableRow;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->z:Landroid/widget/TableRow;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->A:Landroid/widget/TableRow;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->B:Landroid/widget/TableRow;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->C:Landroid/widget/TableRow;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->D:Landroid/view/View;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->E:Landroid/view/View;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->F:Landroid/view/View;

    iput-boolean v2, p0, Lcom/estrongs/android/ui/view/b;->a:Z

    iput-boolean v2, p0, Lcom/estrongs/android/ui/view/b;->b:Z

    iput-boolean v2, p0, Lcom/estrongs/android/ui/view/b;->c:Z

    new-instance v0, Lcom/estrongs/android/ui/view/j;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/j;-><init>(Lcom/estrongs/android/ui/view/b;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->H:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->I:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/ui/view/k;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/k;-><init>(Lcom/estrongs/android/ui/view/b;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->J:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/view/m;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/m;-><init>(Lcom/estrongs/android/ui/view/b;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->d:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/view/n;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/n;-><init>(Lcom/estrongs/android/ui/view/b;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->e:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->K:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->L:Ljava/lang/String;

    iput v2, p0, Lcom/estrongs/android/ui/view/b;->M:I

    iput v2, p0, Lcom/estrongs/android/ui/view/b;->N:I

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/view/b;->a(Landroid/app/Activity;)V

    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/view/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/view/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/gf;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->f:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->g:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->h:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->i:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->j:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->k:Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->l:Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->m:Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->n:Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->o:Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->p:Landroid/widget/Button;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->q:Landroid/widget/Button;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->r:Landroid/widget/EditText;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->s:Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->u:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/ui/view/b;->v:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->x:Landroid/widget/TableRow;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->y:Landroid/widget/TableRow;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->z:Landroid/widget/TableRow;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->A:Landroid/widget/TableRow;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->B:Landroid/widget/TableRow;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->C:Landroid/widget/TableRow;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->D:Landroid/view/View;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->E:Landroid/view/View;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->F:Landroid/view/View;

    iput-boolean v2, p0, Lcom/estrongs/android/ui/view/b;->a:Z

    iput-boolean v2, p0, Lcom/estrongs/android/ui/view/b;->b:Z

    iput-boolean v2, p0, Lcom/estrongs/android/ui/view/b;->c:Z

    new-instance v0, Lcom/estrongs/android/ui/view/j;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/j;-><init>(Lcom/estrongs/android/ui/view/b;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->H:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->I:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/ui/view/k;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/k;-><init>(Lcom/estrongs/android/ui/view/b;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->J:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/view/m;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/m;-><init>(Lcom/estrongs/android/ui/view/b;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->d:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/view/n;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/n;-><init>(Lcom/estrongs/android/ui/view/b;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->e:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->K:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->L:Ljava/lang/String;

    iput v2, p0, Lcom/estrongs/android/ui/view/b;->M:I

    iput v2, p0, Lcom/estrongs/android/ui/view/b;->N:I

    iput-object p2, p0, Lcom/estrongs/android/ui/view/b;->G:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/view/b;->a(Landroid/app/Activity;)V

    invoke-static {p2}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/estrongs/android/ui/view/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/b;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/b;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/view/b;->k(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/b;->t:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/view/b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->D:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->C:Landroid/widget/TableRow;

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->E:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->C:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->E:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/b;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/view/b;->j(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/b;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/view/b;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/view/b;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->q:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/view/b;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/view/b;->j(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/view/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/view/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/b;->m:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/android/pop/ad;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/ui/view/b;->M:I

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/android/pop/ad;->a(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/b;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/b;->t:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/android/pop/ad;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/b;->u:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/android/pop/ad;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/android/pop/ad;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/android/pop/ad;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/view/b;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/view/b;->M:I

    return p1
.end method

.method static synthetic d(Lcom/estrongs/android/ui/view/b;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 10

    const/16 v5, 0x3de

    const/16 v9, 0x2f

    const/16 v4, 0x16

    const/16 v6, 0x15

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ag:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/b;->ag:Landroid/app/Activity;

    const v2, 0x7f080451

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/estrongs/android/ui/view/b;->b:Z

    if-eqz v1, :cond_3

    const-string v1, "ftps://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ftpes://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    const v0, 0x7f0e0525

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-boolean v2, p0, Lcom/estrongs/android/ui/view/b;->c:Z

    if-eqz v2, :cond_1

    const v0, 0x7f0e0524

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    :cond_1
    const/16 v3, 0x50

    const-string v2, "webdav://"

    if-eqz v0, :cond_1b

    const/16 v2, 0x1bb

    const-string v0, "webdavs://"

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p0, Lcom/estrongs/android/ui/view/b;->a:Z

    if-eqz v7, :cond_6

    const-string v0, "sftp://"

    :cond_2
    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/estrongs/android/ui/view/b;->a:Z

    if-eqz v1, :cond_4

    const-string v1, "sftp://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lcom/estrongs/android/ui/view/b;->c:Z

    if-eqz v1, :cond_5

    const-string v1, "http://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "https://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_5
    const-string v1, "ftp://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_6
    iget-boolean v7, p0, Lcom/estrongs/android/ui/view/b;->c:Z

    if-nez v7, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/b;->b:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->o:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ftps://"

    goto :goto_3

    :cond_7
    const-string v0, "ftpes://"

    goto :goto_3

    :cond_8
    const-string v0, "ftp://"

    goto :goto_3

    :cond_9
    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/b;->a:Z

    if-eqz v0, :cond_10

    :cond_a
    :goto_4
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_5
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/estrongs/android/ui/view/b;->a:Z

    if-eqz v7, :cond_14

    :goto_6
    if-eq v0, v4, :cond_b

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bq(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v9, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    :goto_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v9, :cond_c

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/b;->c:Z

    if-eqz v0, :cond_1a

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, p0, Lcom/estrongs/android/ui/view/b;->a:Z

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/estrongs/android/ui/view/b;->s:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v0, ""

    :cond_e
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_19

    :cond_f
    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/b;->c:Z

    if-eqz v0, :cond_18

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/b;->c:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/b;->b:Z

    if-eqz v0, :cond_a

    goto/16 :goto_4

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/b;->a:Z

    if-eqz v0, :cond_11

    move v0, v4

    goto/16 :goto_5

    :cond_11
    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/b;->c:Z

    if-eqz v0, :cond_12

    move v0, v2

    goto/16 :goto_5

    :cond_12
    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/b;->b:Z

    if-eqz v0, :cond_13

    move v0, v5

    goto/16 :goto_5

    :cond_13
    move v0, v6

    goto/16 :goto_5

    :cond_14
    iget-boolean v4, p0, Lcom/estrongs/android/ui/view/b;->c:Z

    if-eqz v4, :cond_15

    move v4, v2

    goto/16 :goto_6

    :cond_15
    iget-boolean v2, p0, Lcom/estrongs/android/ui/view/b;->b:Z

    if-eqz v2, :cond_16

    move v4, v5

    goto/16 :goto_6

    :cond_16
    move v4, v6

    goto/16 :goto_6

    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    :cond_18
    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ag:Landroid/app/Activity;

    const v1, 0x7f080715

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/view/b;->k(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_19
    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bq(Ljava/lang/String;)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1a
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1b
    move-object v0, v2

    move v2, v3

    goto/16 :goto_2

    :cond_1c
    move-object v1, v0

    goto/16 :goto_1
.end method

.method private d(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/ad;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->m:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->n:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/ad;->o(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/view/b;->M:I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->p:Landroid/widget/Button;

    sget-object v1, Lcom/estrongs/android/util/e;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/estrongs/android/ui/view/b;->M:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->K(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/ad;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/ad;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/view/b;->a(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->m:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->n:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->q:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/b;->t:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->r:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/b;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/estrongs/android/ui/view/b;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->k:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/view/b;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/view/b;->j(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Z
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->L:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;

    move-result-object v0

    iget-boolean v2, p0, Lcom/estrongs/android/ui/view/b;->a:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;

    iget-object v2, p0, Lcom/estrongs/android/ui/view/b;->L:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/estrongs/old/fs/impl/sftp/OldSFtpFileSystem;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->K:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->K:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->K:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->K:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/ui/view/b;->K:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->K:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->L:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/ui/view/b;->L:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/estrongs/android/ui/view/b;->L:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/view/b;->K:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->L:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->L:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/view/b;->e(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/estrongs/android/ui/view/b;->c:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/estrongs/fs/impl/w/b;->a(Ljava/lang/String;Lcom/estrongs/fs/i;Lcom/estrongs/a/b/o;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/d;->n(Ljava/lang/String;)Lcom/estrongs/old/fs/a;
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_5

    :try_start_1
    new-instance v3, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v3}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    const-string v4, "server"

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    const-string v4, "mode"

    iget-object v5, p0, Lcom/estrongs/android/ui/view/b;->m:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    const-string v4, "encode"

    iget v5, p0, Lcom/estrongs/android/ui/view/b;->M:I

    invoke-static {v5}, Lcom/estrongs/android/util/e;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-boolean v4, p0, Lcom/estrongs/android/ui/view/b;->a:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/estrongs/android/ui/view/b;->s:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/estrongs/android/ui/view/b;->t:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "privatekey"

    iget-object v5, p0, Lcom/estrongs/android/ui/view/b;->t:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    :cond_3
    iget-object v4, p0, Lcom/estrongs/android/ui/view/b;->r:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/estrongs/android/ui/view/b;->u:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/ui/view/b;->u:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "privatekey_passphrases"

    iget-object v5, p0, Lcom/estrongs/android/ui/view/b;->u:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    :cond_4
    invoke-interface {v2, v3}, Lcom/estrongs/old/fs/a;->a(Lcom/estrongs/android/util/TypedMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    const/4 v3, 0x0

    :try_start_2
    invoke-interface {v2, p1, v3}, Lcom/estrongs/old/fs/a;->a(Ljava/lang/String;Lcom/estrongs/fs/i;)Ljava/util/List;
    :try_end_2
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    move v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method static synthetic f(Lcom/estrongs/android/ui/view/b;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/view/b;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/view/b;->j(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/view/b;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/view/b;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/view/b;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/view/b;->M:I

    return v0
.end method

.method static synthetic j(Lcom/estrongs/android/ui/view/b;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->p:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/ui/view/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->L:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/ui/view/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/b;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic m(Lcom/estrongs/android/ui/view/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/ui/view/b;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic o(Lcom/estrongs/android/ui/view/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->I:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p(Lcom/estrongs/android/ui/view/b;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic q(Lcom/estrongs/android/ui/view/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/b;->v:Z

    return v0
.end method

.method static synthetic r(Lcom/estrongs/android/ui/view/b;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic s(Lcom/estrongs/android/ui/view/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->G:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t(Lcom/estrongs/android/ui/view/b;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic u(Lcom/estrongs/android/ui/view/b;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic v(Lcom/estrongs/android/ui/view/b;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic w(Lcom/estrongs/android/ui/view/b;)Lcom/estrongs/android/view/gg;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ak:Lcom/estrongs/android/view/gg;

    return-object v0
.end method

.method static synthetic x(Lcom/estrongs/android/ui/view/b;)Lcom/estrongs/android/view/gg;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ak:Lcom/estrongs/android/view/gg;

    return-object v0
.end method

.method static synthetic y(Lcom/estrongs/android/ui/view/b;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ag:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030137

    return v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    const v2, 0x7f0e0531

    const v0, 0x7f0e0513

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->f:Landroid/widget/EditText;

    const v0, 0x7f0e0515

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->g:Landroid/widget/EditText;

    const v0, 0x7f0e0527

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->h:Landroid/widget/EditText;

    const v0, 0x7f0e02bc

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->i:Landroid/widget/EditText;

    const v0, 0x7f0e052b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->k:Landroid/widget/CheckBox;

    const v0, 0x7f0e0524

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->l:Landroid/widget/CheckBox;

    const v0, 0x7f0e0517

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->j:Landroid/widget/EditText;

    const v0, 0x7f0e0522

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->m:Landroid/widget/RadioButton;

    const v0, 0x7f0e0521

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->n:Landroid/widget/RadioButton;

    const v0, 0x7f0e053d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->p:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->p:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/b;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->k:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/b;->H:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0e051e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->x:Landroid/widget/TableRow;

    const v0, 0x7f0e052a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->y:Landroid/widget/TableRow;

    const v0, 0x7f0e052c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->z:Landroid/widget/TableRow;

    const v0, 0x7f0e0523

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->A:Landroid/widget/TableRow;

    const v0, 0x7f0e053a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->B:Landroid/widget/TableRow;

    const v0, 0x7f0e0534

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->C:Landroid/widget/TableRow;

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->E:Landroid/view/View;

    const v0, 0x7f0e0530

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->o:Landroid/widget/RadioButton;

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0533

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->r:Landroid/widget/EditText;

    const v0, 0x7f0e0528

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->D:Landroid/view/View;

    const v0, 0x7f0e0537

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->q:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->q:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/view/c;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/view/c;-><init>(Lcom/estrongs/android/ui/view/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0539

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->s:Landroid/widget/CheckBox;

    const v0, 0x7f0e0538

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/b;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->F:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->s:Landroid/widget/CheckBox;

    new-instance v1, Lcom/estrongs/android/ui/view/h;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/view/h;-><init>(Lcom/estrongs/android/ui/view/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/view/b;->a(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/16 v2, 0x8

    const-string v0, "ftpes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ftps"

    :cond_0
    iput-object p1, p0, Lcom/estrongs/android/ui/view/b;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->w:Ljava/lang/String;

    const-string v1, "sftp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/estrongs/android/ui/view/b;->a:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->x:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->y:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->z:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->A:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/b;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/b;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->w:Ljava/lang/String;

    const-string v1, "ftp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/b;->v:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->m:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->z:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->A:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->C:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->E:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->F:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->w:Ljava/lang/String;

    const-string v1, "ftps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v3, p0, Lcom/estrongs/android/ui/view/b;->b:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->o:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->g:Landroid/widget/EditText;

    const/16 v1, 0x3de

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->y:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->A:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->C:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->E:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->F:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->w:Ljava/lang/String;

    const-string v1, "webdav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->w:Ljava/lang/String;

    const-string v1, "webdavs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_6
    iput-boolean v3, p0, Lcom/estrongs/android/ui/view/b;->c:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->f:Landroid/widget/EditText;

    const v1, 0x7f080731

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->B:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->x:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->y:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->z:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->C:Landroid/widget/TableRow;

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->E:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->F:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->w:Ljava/lang/String;

    const-string v1, "webdavs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->g:Landroid/widget/EditText;

    const/16 v1, 0x1bb

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->l:Landroid/widget/CheckBox;

    new-instance v1, Lcom/estrongs/android/ui/view/i;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/view/i;-><init>(Lcom/estrongs/android/ui/view/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->g:Landroid/widget/EditText;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected b()V
    .locals 3

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/b;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/b;->L:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->L:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ag:Landroid/app/Activity;

    const v1, 0x7f0800c2

    const v2, 0x7f0800c1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/d/u;->a(Landroid/content/Context;II)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/ui/view/o;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/view/o;-><init>(Lcom/estrongs/android/ui/view/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->G:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/b;->G:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/view/b;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_9

    iput-boolean v4, p0, Lcom/estrongs/android/ui/view/b;->v:Z

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->K(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sftp"

    iput-object v1, p0, Lcom/estrongs/android/ui/view/b;->w:Ljava/lang/String;

    :cond_0
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->L(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->K(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->o(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->r(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {v0}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/view/b;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->G:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/b;->G:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/b;->G:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/estrongs/android/ui/view/b;->g:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->G:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/view/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->k:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->w:Ljava/lang/String;

    const-string v3, "sftp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->g:Landroid/widget/EditText;

    const-string v3, "22"

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->G:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/view/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->y:Landroid/widget/TableRow;

    invoke-virtual {v0}, Landroid/widget/TableRow;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->k:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->w:Ljava/lang/String;

    const-string v1, "sftp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->g:Landroid/widget/EditText;

    const-string v1, "22"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method protected c()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ak:Lcom/estrongs/android/view/gg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/b;->ak:Lcom/estrongs/android/view/gg;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/estrongs/android/view/gg;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
