.class public Lcom/estrongs/android/pop/app/imageviewer/ESGallery;
.super Landroid/widget/Gallery;


# instance fields
.field private a:Lcom/estrongs/android/pop/app/imageviewer/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/imageviewer/o;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->a:Lcom/estrongs/android/pop/app/imageviewer/o;

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->a:Lcom/estrongs/android/pop/app/imageviewer/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->a:Lcom/estrongs/android/pop/app/imageviewer/o;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/o;->a(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
