.class public Lcom/estrongs/android/d/m;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:I

.field public c:Lcom/estrongs/fs/h;

.field public d:Lcom/estrongs/fs/h;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/widget/ImageView;

.field public g:Z


# direct methods
.method constructor <init>(ILcom/estrongs/fs/h;Landroid/widget/ImageView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/d/m;->g:Z

    iput p1, p0, Lcom/estrongs/android/d/m;->b:I

    iput-object p2, p0, Lcom/estrongs/android/d/m;->c:Lcom/estrongs/fs/h;

    iput-object p3, p0, Lcom/estrongs/android/d/m;->f:Landroid/widget/ImageView;

    return-void
.end method
