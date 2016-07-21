.class public Lcom/estrongs/android/pop/app/analysis/viewholders/t;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# instance fields
.field private a:Ljava/text/DateFormat;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/CheckBox;

.field protected i:Ljava/lang/String;

.field protected j:I


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->a:Ljava/text/DateFormat;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->itemView:Landroid/view/View;

    const v1, 0x7f0e0135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->itemView:Landroid/view/View;

    const v1, 0x7f0e0137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->itemView:Landroid/view/View;

    const v1, 0x7f0e0138

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->itemView:Landroid/view/View;

    const v1, 0x7f0e0139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->itemView:Landroid/view/View;

    const v1, 0x7f0e0136

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatCheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->h:Landroid/widget/CheckBox;

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->j:I

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/analysis/b/g;Z)V
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->itemView:Landroid/view/View;

    iget-boolean v0, p1, Lcom/estrongs/android/pop/app/analysis/b/g;->a:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0d0019

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p1, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->d:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/estrongs/android/h/a/e;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->e:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v0

    cmp-long v5, v0, v2

    if-gtz v5, :cond_0

    move-wide v0, v2

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->f:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->i:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->i:Ljava/lang/String;

    const-string v1, "newcreate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->i:Ljava/lang/String;

    const-string v1, "longtime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->a:Ljava/text/DateFormat;

    iget-object v1, p1, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->createdTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->g:Landroid/widget/TextView;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->h:Landroid/widget/CheckBox;

    iget-boolean v1, p1, Lcom/estrongs/android/pop/app/analysis/b/g;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->h:Landroid/widget/CheckBox;

    if-eqz p2, :cond_4

    move v0, v4

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void

    :cond_2
    const v0, 0x7f020075

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/t;->g:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    goto :goto_2
.end method
