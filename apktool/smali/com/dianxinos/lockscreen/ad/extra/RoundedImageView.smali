.class public Lcom/dianxinos/lockscreen/ad/extra/RoundedImageView;
.super Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;II)V
    .locals 1

    new-instance v0, Lcom/dianxinos/lockscreen/ad/extra/f;

    invoke-direct {v0, p1, p2, p3}, Lcom/dianxinos/lockscreen/ad/extra/f;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/lockscreen/ad/extra/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
