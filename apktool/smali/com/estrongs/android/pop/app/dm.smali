.class Lcom/estrongs/android/pop/app/dm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/estrongs/android/pop/app/dk;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/dk;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dm;->b:Lcom/estrongs/android/pop/app/dk;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/dm;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dm;->b:Lcom/estrongs/android/pop/app/dk;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/dk;->f:Lcom/estrongs/android/pop/app/dj;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/dj;->a:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    const v1, 0x7f0a033b

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/dm;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
