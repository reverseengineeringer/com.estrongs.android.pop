.class public Lcom/estrongs/android/pop/app/cleaner/p;
.super Lcom/estrongs/android/ui/recycler/n;


# instance fields
.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/recycler/n;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/cleaner/p;->e:I

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/cleaner/p;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/p;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/cleaner/p;)V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/cleaner/p;->a()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/cleaner/p;->e:I

    return-void
.end method

.method protected a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/cleaner/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Landroid/support/v4/view/cn;->s(Landroid/view/View;)Landroid/support/v4/view/ex;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ex;->b(F)Landroid/support/v4/view/ex;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ex;->c(F)Landroid/support/v4/view/ex;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/cleaner/p;->getAddDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ex;->a(J)Landroid/support/v4/view/ex;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/cleaner/q;

    invoke-direct {v2, p0, p1, v0}, Lcom/estrongs/android/pop/app/cleaner/q;-><init>(Lcom/estrongs/android/pop/app/cleaner/p;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ex;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ex;->a(Landroid/support/v4/view/fo;)Landroid/support/v4/view/ex;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ex;->c()V

    return-void
.end method

.method public animateAdd(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/recycler/n;->animateAdd(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v2, p0, Lcom/estrongs/android/pop/app/cleaner/p;->e:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/support/v4/view/cn;->b(Landroid/view/View;F)V

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v4/view/cn;->a(Landroid/view/View;F)V

    return v0
.end method

.method public getAddDuration()J
    .locals 2

    const-wide/16 v0, 0x1f4

    return-wide v0
.end method
