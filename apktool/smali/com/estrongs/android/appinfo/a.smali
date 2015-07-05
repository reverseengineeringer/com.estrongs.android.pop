.class Lcom/estrongs/android/appinfo/a;
.super Landroid/support/v4/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/b/c",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/appinfo/AppFolderInfoManager;


# direct methods
.method constructor <init>(Lcom/estrongs/android/appinfo/AppFolderInfoManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/appinfo/a;->a:Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    invoke-direct {p0, p2}, Landroid/support/v4/b/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/graphics/drawable/Drawable;

    check-cast p4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/estrongs/android/appinfo/a;->a(ZLjava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected a(ZLjava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/b/c;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    instance-of v0, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
