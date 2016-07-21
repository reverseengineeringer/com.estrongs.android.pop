.class public Lcom/estrongs/android/pop/app/analysis/viewholders/s;
.super Lcom/estrongs/android/pop/app/analysis/viewholders/t;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Lcom/estrongs/android/widget/UsageImageView;

.field private final k:Ljava/text/DecimalFormat;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/analysis/viewholders/t;-><init>(Landroid/view/View;Ljava/lang/String;)V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00%"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->k:Ljava/text/DecimalFormat;

    return-void
.end method

.method private a(Lcom/estrongs/fs/h;J)F
    .locals 6

    const/4 v0, 0x0

    const-string v1, "DetailDirViewHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pr getUsage() disSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,fo length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v2

    long-to-float v1, v2

    long-to-float v2, p2

    div-float/2addr v1, v2

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    :goto_0
    const-string v1, "DetailDirViewHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after getUsage() disSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,fo length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , usage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private a(F)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->k:Ljava/text/DecimalFormat;

    float-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/estrongs/fs/h;)Ljava/lang/String;
    .locals 2

    instance-of v0, p1, Lcom/estrongs/android/a/b/g;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/estrongs/android/a/b/g;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/g;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/g;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "1 / 0"

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->itemView:Landroid/view/View;

    const v1, 0x7f0e012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->itemView:Landroid/view/View;

    const v1, 0x7f0e0131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->itemView:Landroid/view/View;

    const v1, 0x7f0e012f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatCheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->h:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->itemView:Landroid/view/View;

    const v1, 0x7f0e0132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->itemView:Landroid/view/View;

    const v1, 0x7f0e0133

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->itemView:Landroid/view/View;

    const v1, 0x7f0e0134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->itemView:Landroid/view/View;

    const v1, 0x7f0e0130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/UsageImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->c:Lcom/estrongs/android/widget/UsageImageView;

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/analysis/b/g;Z)V
    .locals 8

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/pop/app/analysis/b/t;

    iget-object v7, p1, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->itemView:Landroid/view/View;

    iget-boolean v1, p1, Lcom/estrongs/android/pop/app/analysis/b/g;->a:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0d0019

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->d:Landroid/widget/ImageView;

    invoke-static {v7, v1}, Lcom/estrongs/android/h/a/e;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->e:Landroid/widget/TextView;

    invoke-interface {v7}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v7}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gtz v1, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setClickable(Z)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->h:Landroid/widget/CheckBox;

    iget-boolean v4, p1, Lcom/estrongs/android/pop/app/analysis/b/g;->a:Z

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->h:Landroid/widget/CheckBox;

    if-eqz p2, :cond_1

    move v1, v6

    :goto_2
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->f:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->b:Landroid/widget/TextView;

    invoke-direct {p0, v7}, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->a(Lcom/estrongs/fs/h;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v0, v0, Lcom/estrongs/android/pop/app/analysis/b/t;->d:J

    invoke-direct {p0, v7, v0, v1}, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->a(Lcom/estrongs/fs/h;J)F

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->a:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->a(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/s;->c:Lcom/estrongs/android/widget/UsageImageView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/UsageImageView;->setRate(F)V

    return-void

    :cond_0
    const v1, 0x7f020075

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    goto :goto_2

    :cond_2
    move-wide v2, v4

    goto :goto_1
.end method
