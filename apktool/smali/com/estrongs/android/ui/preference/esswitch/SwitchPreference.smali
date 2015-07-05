.class public Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;
.super Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;


# instance fields
.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;

.field private final d:Lcom/estrongs/android/ui/preference/esswitch/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f010012

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/estrongs/android/ui/preference/esswitch/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/preference/esswitch/b;-><init>(Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;Lcom/estrongs/android/ui/preference/esswitch/a;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;->d:Lcom/estrongs/android/ui/preference/esswitch/b;

    sget-object v0, Lcom/estrongs/android/pop/ah;->f:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;->c(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;->d(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;->a(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;->b(Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;->b(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;->b:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;->notifyChanged()V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;->c:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;->notifyChanged()V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/preference/esswitch/TwoStatePreference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v0, v1, Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v2, p0, Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;->a:Z

    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;->a(Landroid/view/View;)V

    instance-of v0, v1, Lcom/estrongs/android/widget/esswitch/Switch;

    if-eqz v0, :cond_0

    check-cast v1, Lcom/estrongs/android/widget/esswitch/Switch;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/esswitch/Switch;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/esswitch/Switch;->b(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;->d:Lcom/estrongs/android/ui/preference/esswitch/b;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/esswitch/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/preference/esswitch/SwitchPreference;->b(Landroid/view/View;)V

    return-void
.end method
