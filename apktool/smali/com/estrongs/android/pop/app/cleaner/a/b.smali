.class public Lcom/estrongs/android/pop/app/cleaner/a/b;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/view/View;

.field public g:Lcom/estrongs/android/ui/view/TripleStateCheckBox;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0e0480

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/a/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/a/b;->a:Landroid/widget/ImageView;

    const v0, 0x7f0e0481

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/a/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/a/b;->b:Landroid/widget/TextView;

    const v0, 0x7f0e0482

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/a/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/a/b;->c:Landroid/widget/TextView;

    const v0, 0x7f0e0483

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/a/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/a/b;->d:Landroid/widget/TextView;

    const v0, 0x7f0e0484

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/a/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/a/b;->e:Landroid/widget/TextView;

    const v0, 0x7f0e047d

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/a/b;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/a/b;->f:Landroid/view/View;

    const v0, 0x7f0e047e

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/a/b;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/TripleStateCheckBox;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/a/b;->g:Lcom/estrongs/android/ui/view/TripleStateCheckBox;

    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/a/b;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
