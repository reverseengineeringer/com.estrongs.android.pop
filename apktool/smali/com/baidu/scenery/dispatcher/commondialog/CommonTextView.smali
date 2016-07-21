.class public Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;
.super Landroid/widget/TextView;


# static fields
.field private static final MAX_LINES_UNSET:I = 0x7fffffff

.field public static final ROBOTO_LIGHT:I = 0x1

.field public static final ROBOTO_REGULAR:I


# instance fields
.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mMaxLines:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->mMaxLines:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p2}, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->setFontType(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->mMaxLines:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0}, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/baidu/scenery/R$styleable;->CommonTextView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/baidu/scenery/R$styleable;->CommonTextView_fontFamily:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->setFontType(Ljava/lang/String;)V

    :cond_0
    sget v1, Lcom/baidu/scenery/R$styleable;->CommonTextView_maxLines:I

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->setMaxLines(I)V

    :cond_1
    return-void
.end method

.method private reconsiderEllipsize()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method


# virtual methods
.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 2

    invoke-static {}, Lcom/baidu/scenery/dispatcher/RuleUtils;->isEqualOrLowerThanGingerbread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->mMaxLines:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->mMaxLines:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    :goto_0
    iget-object v0, p0, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-super {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0
.end method

.method public setFontType(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    sget-boolean v0, Lcom/baidu/scenery/dispatcher/RuleUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SceneryTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such a number("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") matched in SceneryTextView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "sans-serif"

    :goto_1
    invoke-virtual {p0, v0}, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->setFontType(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "sans-serif-light"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setFontType(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/baidu/scenery/dispatcher/RuleUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SceneryTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such a font named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/scenery/utils/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMaxLines(I)V
    .locals 1

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    if-lez p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    iput p1, p0, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->mMaxLines:I

    invoke-direct {p0}, Lcom/baidu/scenery/dispatcher/commondialog/CommonTextView;->reconsiderEllipsize()V

    :cond_0
    return-void
.end method
