.class public Lcom/estrongs/android/pop/esclasses/j;
.super Ljava/lang/Object;


# static fields
.field private static a:[I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:[I

.field private static h:[I


# instance fields
.field private i:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "com.android.internal.R$styleable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v0, "Preference"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    sput-object v0, Lcom/estrongs/android/pop/esclasses/j;->a:[I

    const-string v0, "Preference_key"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/estrongs/android/pop/esclasses/j;->b:I

    const-string v0, "Preference_title"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/estrongs/android/pop/esclasses/j;->c:I

    const-string v0, "Preference_summary"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/estrongs/android/pop/esclasses/j;->d:I

    const-string v0, "ListPreference_entries"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/estrongs/android/pop/esclasses/j;->e:I

    const-string v0, "DialogPreference_dialogTitle"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/estrongs/android/pop/esclasses/j;->f:I

    const-string v0, "ListPreference"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    sput-object v0, Lcom/estrongs/android/pop/esclasses/j;->g:[I

    const-string v0, "DialogPreference"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    sput-object v0, Lcom/estrongs/android/pop/esclasses/j;->h:[I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/estrongs/android/pop/esclasses/ESActivity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An ESActivity or ESPreferenceActivity is needed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/estrongs/android/pop/esclasses/j;->i:Landroid/app/Activity;

    return-void
.end method

.method private final a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;
    .locals 7

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/esclasses/j;->i:Landroid/app/Activity;

    sget-object v2, Lcom/estrongs/android/pop/esclasses/j;->a:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p3, v2, v3, v4}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    sget v2, Lcom/estrongs/android/pop/esclasses/j;->b:I

    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget-object v1, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {p4, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    sget v4, Lcom/estrongs/android/pop/esclasses/j;->c:I

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    if-lez v4, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/esclasses/j;->i:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    sget v5, Lcom/estrongs/android/pop/esclasses/j;->d:I

    invoke-virtual {v3, v5, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/estrongs/android/pop/esclasses/j;->i:Landroid/app/Activity;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    instance-of v1, v2, Landroid/preference/ListPreference;

    if-eqz v1, :cond_4

    move-object v0, v2

    check-cast v0, Landroid/preference/ListPreference;

    move-object v1, v0

    iget-object v5, p0, Lcom/estrongs/android/pop/esclasses/j;->i:Landroid/app/Activity;

    const v6, 0x7f0b000c

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    move-object v0, v2

    check-cast v0, Landroid/preference/ListPreference;

    move-object v1, v0

    iget-object v5, p0, Lcom/estrongs/android/pop/esclasses/j;->i:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Lcom/estrongs/android/pop/esclasses/j;->i:Landroid/app/Activity;

    sget-object v3, Lcom/estrongs/android/pop/esclasses/j;->g:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, p3, v3, v4, v5}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    sget v1, Lcom/estrongs/android/pop/esclasses/j;->e:I

    invoke-virtual {v3, v1, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v1, v4, Landroid/util/TypedValue;->resourceId:I

    if-lez v1, :cond_5

    move-object v0, v2

    check-cast v0, Landroid/preference/ListPreference;

    move-object v1, v0

    iget-object v5, p0, Lcom/estrongs/android/pop/esclasses/j;->i:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object v1, v3

    :goto_0
    instance-of v3, v2, Landroid/preference/DialogPreference;

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Lcom/estrongs/android/pop/esclasses/j;->i:Landroid/app/Activity;

    sget-object v3, Lcom/estrongs/android/pop/esclasses/j;->h:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, p3, v3, v4, v5}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    sget v1, Lcom/estrongs/android/pop/esclasses/j;->f:I

    invoke-virtual {v3, v1, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v1, v4, Landroid/util/TypedValue;->resourceId:I

    if-lez v1, :cond_2

    move-object v0, v2

    check-cast v0, Landroid/preference/DialogPreference;

    move-object v1, v0

    iget-object v5, p0, Lcom/estrongs/android/pop/esclasses/j;->i:Landroid/app/Activity;

    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    :cond_2
    move-object v1, v3

    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :cond_4
    instance-of v1, v2, Landroid/preference/EditTextPreference;

    if-eqz v1, :cond_5

    move-object v0, v2

    check-cast v0, Landroid/preference/EditTextPreference;

    move-object v1, v0

    iget-object v5, p0, Lcom/estrongs/android/pop/esclasses/j;->i:Landroid/app/Activity;

    const v6, 0x7f0b000b

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/EditTextPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    move-object v0, v2

    check-cast v0, Landroid/preference/EditTextPreference;

    move-object v1, v0

    iget-object v5, p0, Lcom/estrongs/android/pop/esclasses/j;->i:Landroid/app/Activity;

    const v6, 0x7f0b000c

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/EditTextPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    move-object v0, v2

    check-cast v0, Landroid/preference/EditTextPreference;

    move-object v1, v0

    iget-object v5, p0, Lcom/estrongs/android/pop/esclasses/j;->i:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    move-object v1, v3

    goto :goto_0

    :catch_0
    move-exception v1

    throw v1

    :catch_1
    move-exception v1

    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Error inflating class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/Preference;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/pop/esclasses/j;->b(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/Preference;Landroid/util/AttributeSet;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, p1, v2, p3, v0}, Lcom/estrongs/android/pop/esclasses/j;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->addItemFromInflater(Landroid/preference/Preference;)V

    invoke-direct {p0, p1, v2, p3}, Lcom/estrongs/android/pop/esclasses/j;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/Preference;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/PreferenceGroup;)V
    .locals 4

    const/4 v3, 0x2

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v3, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :cond_1
    if-eq v1, v3, :cond_2

    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": No start tag found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    throw v0

    :cond_2
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/estrongs/android/pop/esclasses/j;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/pop/esclasses/j;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/Preference;Landroid/util/AttributeSet;)V
    :try_end_1
    .catch Landroid/view/InflateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Landroid/view/InflateException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method private b(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/Preference;Landroid/util/AttributeSet;)Z
    .locals 2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/j;->i:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(ILandroid/preference/PreferenceGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/esclasses/j;->i:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/estrongs/android/pop/esclasses/j;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/preference/PreferenceGroup;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v1
.end method
