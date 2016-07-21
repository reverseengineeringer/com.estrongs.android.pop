.class Lcom/estrongs/android/pop/app/cleaner/al;
.super Landroid/view/animation/Animation;


# instance fields
.field private a:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/view/animation/Transformation;)V
    .locals 2

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cleaner/al;->a:Landroid/view/animation/Transformation;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/cleaner/al;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/cleaner/al;->setFillAfter(Z)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cleaner/al;->a:Landroid/view/animation/Transformation;

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    return-void
.end method
