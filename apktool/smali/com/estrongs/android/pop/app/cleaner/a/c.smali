.class public Lcom/estrongs/android/pop/app/cleaner/a/c;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/ProgressBar;

.field public e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0e0486

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/a/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/a/c;->a:Landroid/widget/ImageView;

    const v0, 0x7f0e0487

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/a/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/a/c;->b:Landroid/widget/TextView;

    const v0, 0x7f0e0488

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/a/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/a/c;->c:Landroid/widget/TextView;

    const v0, 0x7f0e048a

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/a/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/a/c;->d:Landroid/widget/ProgressBar;

    const v0, 0x7f0e048b

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/a/c;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/a/c;->e:Landroid/widget/ImageView;

    return-void
.end method

.method private a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/a/c;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
