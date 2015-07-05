.class Lcom/estrongs/android/pop/view/da;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/drag/g;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/pop/view/cz;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/cz;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/da;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i:Lcom/estrongs/android/ui/view/by;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i:Lcom/estrongs/android/ui/view/by;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/by;->b(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragLayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/drag/DragLayer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragActionZone;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->v(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/DragActionZone;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragActionZone;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->w(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/DragActionZone;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->p(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragActionZone;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->x(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/DragActionZone;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragActionZone;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/DragActionZone;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragLayer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragLayer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/DragLayer;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->e()V

    :cond_4
    return-void
.end method

.method public a(Lcom/estrongs/android/ui/drag/l;Ljava/lang/Object;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i:Lcom/estrongs/android/ui/view/by;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/view/by;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragLayer;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->Y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/am;->af(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragActionZone;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f020296

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/DragActionZone;->a(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/drag/DragLayer;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragActionZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/d;->b(Lcom/estrongs/android/ui/drag/s;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragActionZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/d;->b(Lcom/estrongs/android/ui/drag/s;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->p(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragActionZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/d;->b(Lcom/estrongs/android/ui/drag/s;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragActionZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/d;->b(Lcom/estrongs/android/ui/drag/s;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragActionZone;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->r(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/DragActionZone;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragActionZone;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/DragActionZone;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->p(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragActionZone;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/DragActionZone;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragActionZone;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/DragActionZone;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->w()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/view/da;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->w()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_3

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/m;->a()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    if-eqz v1, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragActionZone;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/drag/DragActionZone;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->p(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragActionZone;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/drag/DragActionZone;->setEnabled(Z)V

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->b()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragActionZone;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/drag/DragActionZone;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragActionZone;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v2, 0x7f020129

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/drag/DragActionZone;->a(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragActionZone;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/drag/DragActionZone;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragActionZone;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/drag/DragActionZone;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragActionZone;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/drag/DragActionZone;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/da;->b:Lcom/estrongs/android/pop/view/cz;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/cz;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->p(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Lcom/estrongs/android/ui/drag/DragActionZone;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/drag/DragActionZone;->setEnabled(Z)V

    goto :goto_1
.end method
