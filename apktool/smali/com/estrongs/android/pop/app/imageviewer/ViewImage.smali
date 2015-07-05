.class public Lcom/estrongs/android/pop/app/imageviewer/ViewImage;
.super Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# instance fields
.field private t:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage;->t:Landroid/view/ScaleGestureDetector;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage;->t:Landroid/view/ScaleGestureDetector;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/ar;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/ar;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage;)V

    invoke-direct {v0, p0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage;->t:Landroid/view/ScaleGestureDetector;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage;->t:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
