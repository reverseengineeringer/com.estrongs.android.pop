.class public Lcom/estrongs/android/ui/view/ac;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/estrongs/android/ui/view/aj;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/estrongs/android/pop/app/c/e;

.field b:Lcom/estrongs/android/ui/theme/at;

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;

.field private f:Lcom/estrongs/android/pop/app/c/j;

.field private g:Landroid/content/Context;

.field private h:I

.field private i:Lcom/estrongs/android/pop/app/c/i;

.field private j:Z

.field private k:Z

.field private l:Landroid/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-boolean v1, p0, Lcom/estrongs/android/ui/view/ac;->c:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/view/ac;->h:I

    iput-object v2, p0, Lcom/estrongs/android/ui/view/ac;->i:Lcom/estrongs/android/pop/app/c/i;

    iput-boolean v1, p0, Lcom/estrongs/android/ui/view/ac;->j:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/view/ac;->k:Z

    iput-object v2, p0, Lcom/estrongs/android/ui/view/ac;->a:Lcom/estrongs/android/pop/app/c/e;

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ac;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/ui/view/ac;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ac;->b:Lcom/estrongs/android/ui/theme/at;

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/ac;->h()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/ac;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Lcom/estrongs/android/pop/app/c/i;)Ljava/lang/String;
    .locals 3

    iget-object v0, p1, Lcom/estrongs/android/pop/app/c/i;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/estrongs/android/pop/app/c/i;->f:Ljava/lang/String;

    :goto_0
    iget-object v1, p1, Lcom/estrongs/android/pop/app/c/i;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ac;->g:Landroid/content/Context;

    const v2, 0x7f080145

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/ac;Lcom/estrongs/android/pop/app/c/i;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/view/ac;->a(Lcom/estrongs/android/pop/app/c/i;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/ac;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/ac;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/view/ac;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/view/ac;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/view/ac;->h:I

    return v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/view/ac;)Landroid/support/v7/widget/helper/ItemTouchHelper;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->l:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-object v0
.end method

.method private h()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/ui/view/ad;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/ad;-><init>(Lcom/estrongs/android/ui/view/ac;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ac;->a:Lcom/estrongs/android/pop/app/c/e;

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/android/pop/app/c/j;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->f:Lcom/estrongs/android/pop/app/c/j;

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/estrongs/android/ui/view/aj;
    .locals 4

    const v3, 0x7f030053

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/view/aj;

    invoke-direct {v2, v1}, Lcom/estrongs/android/ui/view/aj;-><init>(Landroid/view/View;)V

    const v0, 0x7f0e0077

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/estrongs/android/ui/view/aj;->a:Landroid/widget/TextView;

    const v0, 0x7f0e0207

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/estrongs/android/ui/view/aj;->b:Landroid/widget/TextView;

    const v0, 0x7f0e0209

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/estrongs/android/ui/view/aj;->c:Landroid/widget/TextView;

    const v0, 0x7f0e0208

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v2, Lcom/estrongs/android/ui/view/aj;->d:Landroid/widget/ProgressBar;

    const v0, 0x7f0e0086

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v2, Lcom/estrongs/android/ui/view/aj;->e:Landroid/widget/CheckBox;

    const v0, 0x7f0e020a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/estrongs/android/ui/view/aj;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object v2
.end method

.method public a(IZZ)V
    .locals 2

    iput p1, p0, Lcom/estrongs/android/ui/view/ac;->h:I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->f:Lcom/estrongs/android/pop/app/c/j;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/c/i;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ac;->i:Lcom/estrongs/android/pop/app/c/i;

    :goto_0
    iput-boolean p2, p0, Lcom/estrongs/android/ui/view/ac;->j:Z

    iput-boolean p3, p0, Lcom/estrongs/android/ui/view/ac;->k:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ac;->i:Lcom/estrongs/android/pop/app/c/i;

    goto :goto_0
.end method

.method public a(Landroid/support/v7/widget/helper/ItemTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ac;->l:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/c/j;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ac;->f:Lcom/estrongs/android/pop/app/c/j;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ac;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/view/aj;I)V
    .locals 11

    const v10, 0x7f0d00f8

    const/4 v9, 0x1

    const v8, 0x7f0d0159

    const/16 v7, 0x8

    const/4 v6, 0x0

    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/view/ac;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/c/i;

    iget-object v1, p1, Lcom/estrongs/android/ui/view/aj;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/estrongs/android/ui/view/aj;->itemView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/estrongs/android/ui/view/aj;->itemView:Landroid/view/View;

    const v2, 0x7f0e0205

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-wide v2, v0, Lcom/estrongs/android/pop/app/c/i;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/i;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/estrongs/android/ui/view/aj;->a:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/estrongs/android/pop/app/c/i;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, ""

    iget-object v4, v0, Lcom/estrongs/android/pop/app/c/i;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, v0, Lcom/estrongs/android/pop/app/c/i;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/estrongs/android/ui/view/aj;->b:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/view/ac;->a(Lcom/estrongs/android/pop/app/c/i;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/estrongs/android/ui/view/aj;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-boolean v2, p0, Lcom/estrongs/android/ui/view/ac;->c:Z

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/estrongs/android/ui/view/aj;->e:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v2, p1, Lcom/estrongs/android/ui/view/aj;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/view/ac;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/estrongs/android/ui/view/aj;->e:Landroid/widget/CheckBox;

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    iget-object v2, p0, Lcom/estrongs/android/ui/view/ac;->i:Lcom/estrongs/android/pop/app/c/i;

    if-ne v2, v0, :cond_6

    iget-object v0, p1, Lcom/estrongs/android/ui/view/aj;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ac;->b:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2, v10}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->b:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v0, v10}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/estrongs/android/ui/view/aj;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ac;->b:Lcom/estrongs/android/ui/theme/at;

    const v2, 0x7f0d00f9

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/estrongs/android/ui/view/aj;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ac;->b:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1, v8}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/ac;->k:Z

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/estrongs/android/ui/view/aj;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_3
    iget-object v0, p1, Lcom/estrongs/android/ui/view/aj;->itemView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p1, Lcom/estrongs/android/ui/view/aj;->itemView:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/view/af;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/ui/view/af;-><init>(Lcom/estrongs/android/ui/view/ac;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/estrongs/android/ui/view/aj;->itemView:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/view/ag;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/view/ag;-><init>(Lcom/estrongs/android/ui/view/ac;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p1, Lcom/estrongs/android/ui/view/aj;->itemView:Landroid/view/View;

    const v1, 0x7f0e0204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/view/ah;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/view/ah;-><init>(Lcom/estrongs/android/ui/view/ac;Lcom/estrongs/android/ui/view/aj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p1, Lcom/estrongs/android/ui/view/aj;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/ui/view/ai;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/view/ai;-><init>(Lcom/estrongs/android/ui/view/ac;Lcom/estrongs/android/ui/view/aj;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-object v2, v0, Lcom/estrongs/android/pop/app/c/i;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    iget-object v2, p1, Lcom/estrongs/android/ui/view/aj;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/estrongs/android/pop/app/c/i;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/estrongs/android/ui/view/aj;->b:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/estrongs/android/ui/view/aj;->c:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ac;->a:Lcom/estrongs/android/pop/app/c/e;

    iget-object v3, p1, Lcom/estrongs/android/ui/view/aj;->itemView:Landroid/view/View;

    invoke-virtual {v2, p2, v0, v3}, Lcom/estrongs/android/pop/app/c/e;->a(ILcom/estrongs/android/pop/app/c/i;Landroid/view/View;)V

    goto/16 :goto_1

    :cond_3
    iget-object v2, p1, Lcom/estrongs/android/ui/view/aj;->e:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    :cond_4
    iget-object v2, p1, Lcom/estrongs/android/ui/view/aj;->e:Landroid/widget/CheckBox;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v2, p1, Lcom/estrongs/android/ui/view/aj;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p1, Lcom/estrongs/android/ui/view/aj;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3

    :cond_6
    iget-object v0, p1, Lcom/estrongs/android/ui/view/aj;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ac;->b:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v2, v8}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->b:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v0, v8}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/estrongs/android/ui/view/aj;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ac;->b:Lcom/estrongs/android/ui/theme/at;

    const v2, 0x7f0d0066

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/estrongs/android/ui/view/aj;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ac;->b:Lcom/estrongs/android/ui/theme/at;

    invoke-virtual {v1, v8}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p1, Lcom/estrongs/android/ui/view/aj;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public a(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/ac;->c:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/view/ac;->c:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->d:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ac;->d:Ljava/util/List;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->e:Landroid/os/Handler;

    const v1, 0x124f81

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ac;->notifyDataSetChanged()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public a(I)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected a(Lcom/estrongs/android/pop/app/c/g;)Z
    .locals 2

    iget-boolean v0, p1, Lcom/estrongs/android/pop/app/c/g;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/estrongs/android/pop/app/c/g;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/pop/app/c/g;->b:Lcom/estrongs/android/pop/app/c/i;

    iget-object v1, p1, Lcom/estrongs/android/pop/app/c/g;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->f:Lcom/estrongs/android/pop/app/c/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->f:Lcom/estrongs/android/pop/app/c/j;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/c/i;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/ac;->c:Z

    return v0
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/c/i;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/ac;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/c/i;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ac;->getItemCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ac;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->e:Landroid/os/Handler;

    const v1, 0x124f82

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ac;->notifyDataSetChanged()V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->e:Landroid/os/Handler;

    const v1, 0x124f82

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ac;->notifyDataSetChanged()V

    return-void
.end method

.method public f()V
    .locals 4

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ac;->g()[I

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    aget v0, v1, v0

    :goto_0
    const/4 v2, 0x1

    aget v2, v1, v2

    if-gt v0, v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ac;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->e:Landroid/os/Handler;

    const v1, 0x124f82

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ac;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method protected g()[I
    .locals 7

    const/4 v5, 0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v5, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ac;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v2, v0, :cond_0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_1
    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    if-ge v1, v0, :cond_3

    move v1, v2

    goto :goto_1

    :cond_1
    new-array v0, v5, [I

    aput v2, v0, v4

    const/4 v2, 0x1

    aput v1, v0, v2

    :goto_2
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->f:Lcom/estrongs/android/pop/app/c/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->f:Lcom/estrongs/android/pop/app/c/j;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/c/j;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/estrongs/android/ui/view/aj;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/ui/view/ac;->a(Lcom/estrongs/android/ui/view/aj;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/ui/view/ac;->a(Landroid/view/ViewGroup;I)Lcom/estrongs/android/ui/view/aj;

    move-result-object v0

    return-object v0
.end method
