.class public Lcom/estrongs/android/pop/app/cleaner/ab;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Landroid/content/Context;

.field private c:Lcom/estrongs/android/view/w;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/cleaner/aj;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/pop/app/cleaner/aj;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/view/w;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->f:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->g:Z

    iput v1, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->h:I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->i:Z

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->c:Lcom/estrongs/android/view/w;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Lcom/estrongs/android/cleaner/h;Lcom/estrongs/android/pop/app/cleaner/aj;)Lcom/estrongs/android/pop/app/cleaner/aj;
    .locals 2

    new-instance v0, Lcom/estrongs/android/pop/app/cleaner/aj;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/cleaner/aj;-><init>()V

    iput-object p1, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->b:Lcom/estrongs/android/cleaner/h;

    if-nez p2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->f:Z

    :goto_0
    iput-object p2, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->d:Lcom/estrongs/android/pop/app/cleaner/aj;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->f:Z

    goto :goto_0
.end method

.method private a(Lcom/estrongs/android/pop/app/cleaner/a/a;Lcom/estrongs/android/pop/app/cleaner/aj;I)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    iget-object v0, p2, Lcom/estrongs/android/pop/app/cleaner/aj;->b:Lcom/estrongs/android/cleaner/h;

    iget-object v1, p1, Lcom/estrongs/android/pop/app/cleaner/a/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/estrongs/android/pop/app/cleaner/a/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->j()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/estrongs/android/pop/app/cleaner/a/a;->d:Lcom/estrongs/android/ui/view/TripleStateCheckBox;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->e(Lcom/estrongs/android/cleaner/h;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/TripleStateCheckBox;->setChecked(I)V

    iget-boolean v0, p2, Lcom/estrongs/android/pop/app/cleaner/aj;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, v4}, Lcom/estrongs/android/pop/app/cleaner/a/a;->a(Z)V

    iget-object v0, p1, Lcom/estrongs/android/pop/app/cleaner/a/a;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p1, Lcom/estrongs/android/pop/app/cleaner/a/a;->c:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/pop/app/cleaner/ad;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/pop/app/cleaner/ad;-><init>(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/pop/app/cleaner/aj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/estrongs/android/pop/app/cleaner/a/a;->a(Z)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/cleaner/ab;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p3, v0, :cond_1

    iget-object v0, p1, Lcom/estrongs/android/pop/app/cleaner/a/a;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/estrongs/android/pop/app/cleaner/a/a;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lcom/estrongs/android/pop/app/cleaner/a/b;Lcom/estrongs/android/pop/app/cleaner/aj;I)V
    .locals 9

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v8, 0x8

    const/4 v0, 0x0

    iget-object v3, p2, Lcom/estrongs/android/pop/app/cleaner/aj;->b:Lcom/estrongs/android/cleaner/h;

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/estrongs/android/cleaner/h;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->e:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/estrongs/android/cleaner/h;->j()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p2, Lcom/estrongs/android/pop/app/cleaner/aj;->b:Lcom/estrongs/android/cleaner/h;

    iget-object v5, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/estrongs/android/cleaner/h;->a(Landroid/widget/ImageView;)V

    const-string v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/estrongs/android/cleaner/h;->h()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/estrongs/android/cleaner/h;->h()I

    move-result v4

    if-ne v4, v1, :cond_0

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->d:Landroid/widget/TextView;

    const v5, 0x7f0801d4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {v3}, Lcom/estrongs/android/cleaner/h;->q()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v1, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->g:Lcom/estrongs/android/ui/view/TripleStateCheckBox;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/view/TripleStateCheckBox;->setChecked(I)V

    iget-object v0, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->f:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/pop/app/cleaner/ae;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/pop/app/cleaner/ae;-><init>(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/pop/app/cleaner/aj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/estrongs/android/cleaner/h;->h()I

    move-result v4

    if-ne v4, v2, :cond_1

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->d:Landroid/widget/TextView;

    const v5, 0x7f0801db

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/estrongs/android/cleaner/h;->h()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->d:Landroid/widget/TextView;

    const v5, 0x7f0801d7

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/estrongs/android/cleaner/h;->h()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->d:Landroid/widget/TextView;

    const v5, 0x7f0801da

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/estrongs/android/cleaner/h;->h()I

    move-result v4

    if-ne v4, v8, :cond_4

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->d:Landroid/widget/TextView;

    const v5, 0x7f0801d3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/estrongs/android/cleaner/h;->h()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->d:Landroid/widget/TextView;

    const v5, 0x7f0801d5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v3}, Lcom/estrongs/android/cleaner/h;->h()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->d:Landroid/widget/TextView;

    const v5, 0x7f0801d6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v3}, Lcom/estrongs/android/cleaner/h;->h()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_7

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->d:Landroid/widget/TextView;

    const v5, 0x7f0801d9

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v3}, Lcom/estrongs/android/cleaner/h;->h()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_8

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->d:Landroid/widget/TextView;

    const v5, 0x7f0801d8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/a/b;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_1
    move v0, v1

    goto/16 :goto_1

    :pswitch_2
    move v0, v2

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/cleaner/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/cleaner/ab;->b(Lcom/estrongs/android/cleaner/h;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/pop/app/cleaner/aj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/cleaner/ab;->b(Lcom/estrongs/android/pop/app/cleaner/aj;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/pop/app/cleaner/aj;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/cleaner/ab;->b(Lcom/estrongs/android/pop/app/cleaner/aj;Z)V

    return-void
.end method

.method private a(Lcom/estrongs/android/pop/app/cleaner/aj;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method private a(Lcom/estrongs/android/pop/app/cleaner/aj;Z)V
    .locals 4

    iget-object v0, p1, Lcom/estrongs/android/pop/app/cleaner/aj;->b:Lcom/estrongs/android/cleaner/h;

    new-instance v1, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->b:Landroid/content/Context;

    const v3, 0x7f0803e2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->b:Landroid/content/Context;

    const v3, 0x7f0801cf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    const v2, 0x7f080229

    new-instance v3, Lcom/estrongs/android/pop/app/cleaner/af;

    invoke-direct {v3, p0, p2, p1, v0}, Lcom/estrongs/android/pop/app/cleaner/af;-><init>(Lcom/estrongs/android/pop/app/cleaner/ab;ZLcom/estrongs/android/pop/app/cleaner/aj;Lcom/estrongs/android/cleaner/h;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080225

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/cleaner/ab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->i:Z

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/cleaner/ab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->g:Z

    return p1
.end method

.method private b(I)I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/cleaner/h;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/cleaner/ab;->d(Lcom/estrongs/android/cleaner/h;)I

    move-result v0

    return v0
.end method

.method private b(Lcom/estrongs/android/cleaner/h;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/estrongs/android/cleaner/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/android/cleaner/h;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/cleaner/ab;->c(Lcom/estrongs/android/cleaner/h;)Lcom/estrongs/fs/impl/b/d;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/estrongs/android/ui/dialog/o;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v0, v1}, Lcom/estrongs/android/ui/dialog/o;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/impl/b/d;)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/o;->a()V

    goto :goto_0

    :pswitch_1
    new-instance v2, Lcom/estrongs/android/ui/dialog/hf;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v0, v1, v3}, Lcom/estrongs/android/ui/dialog/hf;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/dialog/hf;->a(Z)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/dialog/hf;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/cleaner/ab;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/cleaner/ab;->d()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/pop/app/cleaner/aj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/cleaner/ab;->d(Lcom/estrongs/android/pop/app/cleaner/aj;)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/pop/app/cleaner/aj;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/cleaner/ab;->a(Lcom/estrongs/android/pop/app/cleaner/aj;Z)V

    return-void
.end method

.method private b(Lcom/estrongs/android/pop/app/cleaner/aj;)V
    .locals 3

    iget-boolean v0, p1, Lcom/estrongs/android/pop/app/cleaner/aj;->e:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p1, Lcom/estrongs/android/pop/app/cleaner/aj;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget v0, p1, Lcom/estrongs/android/pop/app/cleaner/aj;->a:I

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/cleaner/aj;

    iput v1, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->a:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/estrongs/android/pop/app/cleaner/aj;->e:Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/estrongs/android/pop/app/cleaner/aj;->c:Ljava/util/ArrayList;

    iget v0, p1, Lcom/estrongs/android/pop/app/cleaner/aj;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/cleaner/ab;->notifyItemRangeRemoved(II)V

    goto :goto_0
.end method

.method private b(Lcom/estrongs/android/pop/app/cleaner/aj;Z)V
    .locals 7

    iget-boolean v0, p1, Lcom/estrongs/android/pop/app/cleaner/aj;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p1, Lcom/estrongs/android/pop/app/cleaner/aj;->b:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v3}, Lcom/estrongs/android/cleaner/h;->l()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/estrongs/android/cleaner/h;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget v1, p1, Lcom/estrongs/android/pop/app/cleaner/aj;->a:I

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Lcom/estrongs/android/cleaner/h;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v3}, Lcom/estrongs/android/cleaner/h;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/h;

    if-eqz p2, :cond_2

    invoke-virtual {v3}, Lcom/estrongs/android/cleaner/h;->q()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/pop/app/cleaner/ab;->a(Lcom/estrongs/android/cleaner/h;Lcom/estrongs/android/pop/app/cleaner/aj;)Lcom/estrongs/android/pop/app/cleaner/aj;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->a:I

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iput-object v4, p1, Lcom/estrongs/android/pop/app/cleaner/aj;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->e:Ljava/util/ArrayList;

    iget v1, p1, Lcom/estrongs/android/pop/app/cleaner/aj;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    iget v0, p1, Lcom/estrongs/android/pop/app/cleaner/aj;->a:I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    move v1, v0

    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/cleaner/aj;

    iput v1, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->a:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/estrongs/android/pop/app/cleaner/aj;->e:Z

    iget v0, p1, Lcom/estrongs/android/pop/app/cleaner/aj;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/cleaner/ab;->notifyItemRangeInserted(II)V

    goto/16 :goto_0
.end method

.method private c(Lcom/estrongs/android/cleaner/h;)Lcom/estrongs/fs/impl/b/d;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    invoke-virtual {p1}, Lcom/estrongs/android/cleaner/h;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/estrongs/fs/impl/b/d;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sget-object v4, Lcom/estrongs/fs/w;->b:Lcom/estrongs/fs/w;

    invoke-static {v2, v1}, Lcom/estrongs/android/pop/utils/w;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/estrongs/fs/impl/b/d;-><init>(Ljava/lang/String;Lcom/estrongs/fs/w;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/cleaner/ab;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/pop/app/cleaner/aj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/cleaner/ab;->c(Lcom/estrongs/android/pop/app/cleaner/aj;)V

    return-void
.end method

.method private c(Lcom/estrongs/android/pop/app/cleaner/aj;)V
    .locals 5

    const/4 v4, 0x2

    iget-boolean v0, p1, Lcom/estrongs/android/pop/app/cleaner/aj;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/estrongs/android/pop/app/cleaner/aj;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/cleaner/aj;

    iget-object v2, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->b:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v2}, Lcom/estrongs/android/cleaner/h;->q()I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-virtual {v2, v4}, Lcom/estrongs/android/cleaner/h;->d(I)V

    iget v0, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->a:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->notifyItemChanged(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/estrongs/android/pop/app/cleaner/aj;->b:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->q()I

    move-result v2

    if-eq v2, v4, :cond_2

    invoke-virtual {v0, v4}, Lcom/estrongs/android/cleaner/h;->d(I)V

    goto :goto_1

    :cond_3
    iget v0, p1, Lcom/estrongs/android/pop/app/cleaner/aj;->a:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->notifyItemChanged(I)V

    return-void
.end method

.method private d(Lcom/estrongs/android/cleaner/h;)I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/estrongs/android/cleaner/h;->l()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/estrongs/android/cleaner/h;->l()Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Lcom/estrongs/android/cleaner/h;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->c:Lcom/estrongs/android/view/w;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->c:Lcom/estrongs/android/view/w;

    invoke-virtual {v1}, Lcom/estrongs/android/view/w;->v()Lcom/estrongs/android/cleaner/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/cleaner/a;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/view/w;->a(J)V

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/cleaner/ab;Lcom/estrongs/android/pop/app/cleaner/aj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/cleaner/ab;->a(Lcom/estrongs/android/pop/app/cleaner/aj;)V

    return-void
.end method

.method private d(Lcom/estrongs/android/pop/app/cleaner/aj;)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p1, Lcom/estrongs/android/pop/app/cleaner/aj;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/estrongs/android/pop/app/cleaner/aj;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/cleaner/aj;

    iget-object v2, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->b:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v2}, Lcom/estrongs/android/cleaner/h;->q()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v4}, Lcom/estrongs/android/cleaner/h;->d(I)V

    iget v0, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->a:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->notifyItemChanged(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/estrongs/android/pop/app/cleaner/aj;->b:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->q()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v4}, Lcom/estrongs/android/cleaner/h;->d(I)V

    goto :goto_1

    :cond_3
    iget v0, p1, Lcom/estrongs/android/pop/app/cleaner/aj;->a:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->notifyItemChanged(I)V

    return-void
.end method

.method private e(Lcom/estrongs/android/cleaner/h;)I
    .locals 9

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/estrongs/android/cleaner/h;->l()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/estrongs/android/cleaner/h;->l()Ljava/util/List;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    invoke-virtual {p1}, Lcom/estrongs/android/cleaner/h;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {p1}, Lcom/estrongs/android/cleaner/h;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->q()I

    move-result v8

    if-ne v8, v4, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->q()I

    move-result v0

    if-ne v0, v3, :cond_5

    monitor-exit v5

    move v0, v3

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    monitor-exit v5

    move v0, v2

    goto :goto_0

    :cond_3
    if-ne v1, v6, :cond_4

    monitor-exit v5

    move v0, v4

    goto :goto_0

    :cond_4
    monitor-exit v5

    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public a(I)Lcom/estrongs/android/pop/app/cleaner/aj;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/cleaner/aj;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/cleaner/h;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/cleaner/aj;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->b:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->g()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->g()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :cond_1
    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->d(Lcom/estrongs/android/cleaner/h;)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->q()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v4, v0, 0xc

    if-ge v4, v6, :cond_5

    move-object v0, v2

    :goto_2
    return-object v0

    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/cleaner/h;

    rem-int v5, v1, v4

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->b()I

    move-result v5

    if-ne v5, v6, :cond_7

    :cond_6
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_8
    move-object v0, v3

    goto :goto_2
.end method

.method public a(Lcom/estrongs/android/cleaner/h;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/app/cleaner/ab;->a(Lcom/estrongs/android/cleaner/h;Lcom/estrongs/android/pop/app/cleaner/aj;)Lcom/estrongs/android/pop/app/cleaner/aj;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->a:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/cleaner/aj;

    iget-boolean v2, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->f:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->e:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/pop/app/cleaner/ab;->b(Lcom/estrongs/android/pop/app/cleaner/aj;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/cleaner/aj;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->b:Lcom/estrongs/android/cleaner/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->l()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/cleaner/ab;->a(I)Lcom/estrongs/android/pop/app/cleaner/aj;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/app/cleaner/aj;->b:Lcom/estrongs/android/cleaner/h;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/h;->b()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->h:I

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    invoke-virtual {p0, p2}, Lcom/estrongs/android/pop/app/cleaner/ab;->getItemViewType(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/estrongs/android/pop/app/cleaner/ab;->a(I)Lcom/estrongs/android/pop/app/cleaner/aj;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/pop/app/cleaner/a/a;

    invoke-direct {p0, v0, v1, p2}, Lcom/estrongs/android/pop/app/cleaner/ab;->a(Lcom/estrongs/android/pop/app/cleaner/a/a;Lcom/estrongs/android/pop/app/cleaner/aj;I)V

    :goto_1
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/pop/app/cleaner/ac;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/cleaner/ac;-><init>(Lcom/estrongs/android/pop/app/cleaner/ab;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/pop/app/cleaner/a/b;

    invoke-direct {p0, v0, v1, p2}, Lcom/estrongs/android/pop/app/cleaner/ab;->a(Lcom/estrongs/android/pop/app/cleaner/a/b;Lcom/estrongs/android/pop/app/cleaner/aj;I)V

    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5

    const v4, 0x7f0d008a

    const/4 v2, 0x0

    const v3, 0x7f0d0089

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030100

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/estrongs/android/pop/app/cleaner/a/a;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/cleaner/a/a;-><init>(Landroid/view/View;)V

    iget-object v1, v0, Lcom/estrongs/android/pop/app/cleaner/a/a;->a:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/estrongs/android/pop/app/cleaner/ab;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/estrongs/android/pop/app/cleaner/a/a;->b:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/estrongs/android/pop/app/cleaner/ab;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030101

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/estrongs/android/pop/app/cleaner/a/b;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/cleaner/a/b;-><init>(Landroid/view/View;)V

    iget-object v1, v0, Lcom/estrongs/android/pop/app/cleaner/a/b;->b:Landroid/widget/TextView;

    const v2, 0x7f0d008c

    invoke-direct {p0, v2}, Lcom/estrongs/android/pop/app/cleaner/ab;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/estrongs/android/pop/app/cleaner/a/b;->e:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/app/cleaner/ab;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/estrongs/android/pop/app/cleaner/a/b;->c:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/app/cleaner/ab;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/estrongs/android/pop/app/cleaner/a/b;->d:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/app/cleaner/ab;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/ab;->h:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/support/v4/view/cn;->a(Landroid/view/View;F)V

    :cond_1
    new-instance v1, Lcom/estrongs/android/pop/app/cleaner/ag;

    invoke-direct {v1, p0, p1, v0}, Lcom/estrongs/android/pop/app/cleaner/ag;-><init>(Lcom/estrongs/android/pop/app/cleaner/ab;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    mul-int/lit8 v2, v2, 0x32

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/cn;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
