.class public Lcom/estrongs/android/ui/view/ac;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field a:Lcom/estrongs/android/pop/app/a/ag;

.field b:Lcom/estrongs/android/ui/theme/al;

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

.field private f:Lcom/estrongs/android/pop/app/a/al;

.field private g:Landroid/content/Context;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-boolean v0, p0, Lcom/estrongs/android/ui/view/ac;->c:Z

    iput v1, p0, Lcom/estrongs/android/ui/view/ac;->h:I

    iput-boolean v0, p0, Lcom/estrongs/android/ui/view/ac;->i:Z

    iput-boolean v0, p0, Lcom/estrongs/android/ui/view/ac;->j:Z

    iput v1, p0, Lcom/estrongs/android/ui/view/ac;->k:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ac;->a:Lcom/estrongs/android/pop/app/a/ag;

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ac;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/ui/view/ac;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ac;->b:Lcom/estrongs/android/ui/theme/al;

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/ac;->i()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/ac;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Lcom/estrongs/android/pop/app/a/ak;)Ljava/lang/String;
    .locals 3

    iget-object v0, p1, Lcom/estrongs/android/pop/app/a/ak;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/estrongs/android/pop/app/a/ak;->f:Ljava/lang/String;

    :goto_0
    iget-object v1, p1, Lcom/estrongs/android/pop/app/a/ak;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ac;->g:Landroid/content/Context;

    const v2, 0x7f0b03d8

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

.method static synthetic a(Lcom/estrongs/android/ui/view/ac;Lcom/estrongs/android/pop/app/a/ak;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/view/ac;->a(Lcom/estrongs/android/pop/app/a/ak;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/ui/view/ad;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/ad;-><init>(Lcom/estrongs/android/ui/view/ac;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ac;->a:Lcom/estrongs/android/pop/app/a/ag;

    return-void
.end method


# virtual methods
.method public a()Lcom/estrongs/android/pop/app/a/al;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->f:Lcom/estrongs/android/pop/app/a/al;

    return-object v0
.end method

.method public a(IZZ)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/view/ac;->h:I

    iput-boolean p2, p0, Lcom/estrongs/android/ui/view/ac;->i:Z

    iput-boolean p3, p0, Lcom/estrongs/android/ui/view/ac;->j:Z

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/a/al;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ac;->f:Lcom/estrongs/android/pop/app/a/al;

    return-void
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

.method protected a(Lcom/estrongs/android/pop/app/a/ai;)Z
    .locals 2

    iget-boolean v0, p1, Lcom/estrongs/android/pop/app/a/ai;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/estrongs/android/pop/app/a/ai;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/android/pop/app/a/ai;->b:Lcom/estrongs/android/pop/app/a/ak;

    iget-object v1, p1, Lcom/estrongs/android/pop/app/a/ai;->c:Landroid/view/View;

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

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/view/ac;->k:I

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/ac;->c:Z

    return v0
.end method

.method public c()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ac;->h()[I

    move-result-object v2

    if-eqz v2, :cond_0

    aget v3, v2, v0

    aget v2, v2, v1

    sub-int v2, v3, v2

    iget-object v3, p0, Lcom/estrongs/android/ui/view/ac;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/a/ak;",
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

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/ac;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ak;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ac;->getCount()I

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

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->e:Landroid/os/Handler;

    const v1, 0x124f82

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ac;->notifyDataSetChanged()V

    return-void
.end method

.method public g()V
    .locals 4

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ac;->h()[I

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

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->f:Lcom/estrongs/android/pop/app/a/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->f:Lcom/estrongs/android/pop/app/a/al;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/al;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->f:Lcom/estrongs/android/pop/app/a/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->f:Lcom/estrongs/android/pop/app/a/al;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/al;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ak;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const v9, 0x7f08003a

    const v2, 0x7f030013

    const/16 v8, 0x8

    const/4 v7, 0x0

    const v6, -0xb35201

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/estrongs/android/ui/view/af;

    invoke-direct {v1}, Lcom/estrongs/android/ui/view/af;-><init>()V

    const v0, 0x7f0a0021

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/estrongs/android/ui/view/af;->a:Landroid/widget/TextView;

    const v0, 0x7f0a009f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/estrongs/android/ui/view/af;->b:Landroid/widget/TextView;

    const v0, 0x7f0a009e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/estrongs/android/ui/view/af;->c:Landroid/widget/TextView;

    const v0, 0x7f0a00a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/estrongs/android/ui/view/af;->d:Landroid/widget/ProgressBar;

    const v0, 0x7f0a00a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/estrongs/android/ui/view/af;->e:Landroid/widget/ImageView;

    const v0, 0x7f0a00a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/estrongs/android/ui/view/af;->f:Landroid/widget/CheckBox;

    invoke-virtual {p2, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v2, v1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/view/ac;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/a/ak;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget v1, p0, Lcom/estrongs/android/ui/view/ac;->k:I

    if-ne p1, v1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/af;

    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0a009d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ak;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v4, v2, Lcom/estrongs/android/ui/view/af;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/estrongs/android/pop/app/a/ak;->e:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v3, ""

    iget-object v5, v0, Lcom/estrongs/android/pop/app/a/ak;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, v0, Lcom/estrongs/android/pop/app/a/ak;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/estrongs/android/ui/view/af;->b:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/view/ac;->a(Lcom/estrongs/android/pop/app/a/ak;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/estrongs/android/ui/view/af;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ak;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/ac;->c:Z

    if-eqz v0, :cond_6

    iget-object v0, v2, Lcom/estrongs/android/ui/view/af;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/view/ac;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v2, Lcom/estrongs/android/ui/view/af;->f:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_4
    iget v0, p0, Lcom/estrongs/android/ui/view/ac;->h:I

    if-ne v0, p1, :cond_8

    iget-object v0, v2, Lcom/estrongs/android/ui/view/af;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v2, Lcom/estrongs/android/ui/view/af;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v2, Lcom/estrongs/android/ui/view/af;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/ac;->j:Z

    if-eqz v0, :cond_7

    iget-object v0, v2, Lcom/estrongs/android/ui/view/af;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v3, v0, Lcom/estrongs/android/pop/app/a/ak;->e:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object v3, v2, Lcom/estrongs/android/ui/view/af;->a:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/estrongs/android/pop/app/a/ak;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/am;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/estrongs/android/ui/view/af;->b:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/estrongs/android/ui/view/af;->c:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/estrongs/android/ui/view/ac;->a:Lcom/estrongs/android/pop/app/a/ag;

    invoke-virtual {v3, p1, v0, p2}, Lcom/estrongs/android/pop/app/a/ag;->a(ILcom/estrongs/android/pop/app/a/ak;Landroid/view/View;)V

    goto :goto_3

    :cond_5
    iget-object v0, v2, Lcom/estrongs/android/ui/view/af;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4

    :cond_6
    iget-object v0, v2, Lcom/estrongs/android/ui/view/af;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_4

    :cond_7
    iget-object v0, v2, Lcom/estrongs/android/ui/view/af;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, v2, Lcom/estrongs/android/ui/view/af;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/ui/view/ac;->b:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v3, v9}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->b:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v0, v9}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v2, Lcom/estrongs/android/ui/view/af;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ac;->b:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f08003b

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v2, Lcom/estrongs/android/ui/view/af;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ac;->b:Lcom/estrongs/android/ui/theme/al;

    const v3, 0x7f08003b

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v2, Lcom/estrongs/android/ui/view/af;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected h()[I
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

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/ac;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->d:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->d:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->e:Landroid/os/Handler;

    const v1, 0x124f82

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ac;->notifyDataSetChanged()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->d:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->e:Landroid/os/Handler;

    const v1, 0x124f83

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p3, v1, Landroid/os/Message;->arg1:I

    iget v0, p0, Lcom/estrongs/android/ui/view/ac;->h:I

    if-ne v0, p3, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput v0, v1, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ac;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method
