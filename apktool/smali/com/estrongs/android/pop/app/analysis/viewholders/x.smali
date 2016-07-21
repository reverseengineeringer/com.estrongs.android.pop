.class public Lcom/estrongs/android/pop/app/analysis/viewholders/x;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/support/v7/widget/AppCompatCheckBox;

.field public c:Landroid/widget/TextView;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/x;->d:Landroid/content/Context;

    const v0, 0x7f0e0172

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/x;->a:Landroid/widget/ImageView;

    const v0, 0x7f0e0173

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatCheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/x;->b:Landroid/support/v7/widget/AppCompatCheckBox;

    const v0, 0x7f0e0174

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/x;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/analysis/b/g;)V
    .locals 2

    iget-object v0, p1, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/x;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/estrongs/android/h/a/e;->a(Lcom/estrongs/fs/h;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/x;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/estrongs/android/pop/app/analysis/b/g;->b:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/viewholders/x;->b:Landroid/support/v7/widget/AppCompatCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setClickable(Z)V

    return-void
.end method
