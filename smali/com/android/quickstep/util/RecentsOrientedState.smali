.class public Lcom/android/quickstep/util/RecentsOrientedState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/RecentsOrientedState$SurfaceRotation;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FLAG_HOME_ROTATION_ALLOWED_IN_PREFS:I = 0x4

.field private static final FLAG_HOME_ROTATION_FORCE_ENABLED_FOR_TESTING:I = 0x80

.field private static final FLAG_IGNORE_ALLOW_HOME_ROTATION_PREF:I = 0x200

.field private static final FLAG_MULTIPLE_ORIENTATION_SUPPORTED_BY_ACTIVITY:I = 0x1

.field private static final FLAG_MULTIPLE_ORIENTATION_SUPPORTED_BY_DENSITY:I = 0x2

.field private static final FLAG_MULTIWINDOW_ROTATION_ALLOWED:I = 0x10

.field private static final FLAG_ROTATION_WATCHER_ENABLED:I = 0x40

.field private static final FLAG_ROTATION_WATCHER_SUPPORTED:I = 0x20

.field private static final FLAG_SWIPE_UP_NOT_RUNNING:I = 0x100

.field private static final FLAG_SYSTEM_ROTATION_ALLOWED:I = 0x8

.field private static final MASK_MULTIPLE_ORIENTATION_SUPPORTED_BY_DEVICE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "RecentsOrientedState"

.field private static final VALUE_ROTATION_WATCHER_ENABLED:I = 0x16b


# instance fields
.field private final mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

.field private final mContext:Landroid/content/Context;

.field private mDisplayRotation:I

.field private mFlags:I

.field private mListenersInitialized:Z

.field private mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

.field private final mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPreviousRotation:I

.field private mRecentsActivityRotation:I

.field private mRecentsRotation:I

.field private final mRotationChangeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

.field private final mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

.field private mStateId:I

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private mTouchRotation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;Ljava/util/function/IntConsumer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iput-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTouchRotation:I

    iput v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mDisplayRotation:I

    iput v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsActivityRotation:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsRotation:I

    new-instance v1, Lcom/android/quickstep/util/g0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/g0;-><init>(Lcom/android/quickstep/util/RecentsOrientedState;)V

    iput-object v1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRotationChangeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTmpMatrix:Landroid/graphics/Matrix;

    iput v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mPreviousRotation:I

    iput-boolean v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mListenersInitialized:Z

    iput v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mStateId:I

    iput-object p1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    new-instance v0, Lcom/android/quickstep/util/RecentsOrientedState$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/quickstep/util/RecentsOrientedState$1;-><init>(Lcom/android/quickstep/util/RecentsOrientedState;Landroid/content/Context;Ljava/util/function/IntConsumer;)V

    iput-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mOrientationListener:Landroid/view/OrientationEventListener;

    iget-boolean p2, p2, Lcom/android/quickstep/BaseActivityInterface;->rotationSupportedByActivity:Z

    or-int/lit16 p2, p2, 0x100

    iput p2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    sget-object p2, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/SettingsCache;

    iput-object p1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->initFlags()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/util/RecentsOrientedState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->lambda$new$0(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/util/RecentsOrientedState;)I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mPreviousRotation:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/quickstep/util/RecentsOrientedState;I)I
    .locals 0

    iput p1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mPreviousRotation:I

    return p1
.end method

.method public static synthetic b(Lcom/android/quickstep/util/RecentsOrientedState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->lambda$setFlag$1(Z)V

    return-void
.end method

.method private destroyMultipleOrientationListeners()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/launcher3/Item;

    sget-object v2, Lcom/android/launcher3/LauncherPrefs;->ALLOW_ROTATION:Lcom/android/launcher3/ContextualItem;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/LauncherPrefs;->removeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;[Lcom/android/launcher3/Item;)V

    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->ROTATION_SETTING_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRotationChangeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public static getRotationForUserDegreesRotated(FI)I
    .locals 8

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const/16 v0, 0x46

    const/high16 v1, 0x43340000    # 180.0f

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz p1, :cond_c

    const/4 v4, 0x0

    const/16 v5, 0x154

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v7, 0x2

    if-eq p1, v3, :cond_7

    const/16 v0, 0xfa

    if-eq p1, v7, :cond_5

    if-eq p1, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v2, 0x14

    int-to-float v2, v2

    cmpg-float v2, p0, v2

    if-ltz v2, :cond_4

    int-to-float v2, v5

    cmpl-float v2, p0, v2

    if-lez v2, :cond_2

    cmpg-float v2, p0, v6

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0xa0

    int-to-float v2, v2

    cmpl-float v2, p0, v2

    if-lez v2, :cond_3

    cmpg-float v1, p0, v1

    if-gez v1, :cond_3

    return v7

    :cond_3
    int-to-float v0, v0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_e

    cmpg-float p0, p0, v6

    if-gez p0, :cond_e

    return v3

    :cond_4
    :goto_0
    return v4

    :cond_5
    const/16 v1, 0x6e

    int-to-float v1, v1

    cmpg-float v1, p0, v1

    if-gez v1, :cond_6

    return v2

    :cond_6
    int-to-float v0, v0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_e

    return v3

    :cond_7
    const/16 v3, 0xc8

    int-to-float v3, v3

    cmpg-float v3, p0, v3

    if-gez v3, :cond_8

    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v3, p0, v3

    if-lez v3, :cond_8

    return v7

    :cond_8
    int-to-float v3, v5

    cmpl-float v3, p0, v3

    if-lez v3, :cond_9

    cmpg-float v3, p0, v6

    if-ltz v3, :cond_a

    :cond_9
    const/4 v3, 0x0

    cmpl-float v3, p0, v3

    if-ltz v3, :cond_b

    int-to-float v3, v0

    cmpg-float v3, p0, v3

    if-gez v3, :cond_b

    :cond_a
    return v4

    :cond_b
    int-to-float v0, v0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_e

    cmpg-float p0, p0, v1

    if-gez p0, :cond_e

    return v2

    :cond_c
    cmpl-float v4, p0, v1

    if-lez v4, :cond_d

    const/16 v4, 0x122

    int-to-float v4, v4

    cmpg-float v4, p0, v4

    if-gez v4, :cond_d

    return v3

    :cond_d
    cmpg-float v1, p0, v1

    if-gez v1, :cond_e

    int-to-float v0, v0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_e

    return v2

    :cond_e
    :goto_1
    return p1
.end method

.method private inferRecentsActivityRotation(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsRotation:I

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p0

    :goto_0
    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private initFlags()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    const/16 v1, 0x20

    invoke-direct {p0, v1, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setFlag(IZ)Z

    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->updateAutoRotateSetting()V

    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->updateHomeRotationSetting()V

    return-void
.end method

.method private initMultipleOrientationListeners()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/launcher3/Item;

    sget-object v2, Lcom/android/launcher3/LauncherPrefs;->ALLOW_ROTATION:Lcom/android/launcher3/ContextualItem;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/LauncherPrefs;->addListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;[Lcom/android/launcher3/Item;)V

    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->ROTATION_SETTING_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRotationChangeListener:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->updateAutoRotateSetting()V

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->updateAutoRotateSetting()V

    return-void
.end method

.method private synthetic lambda$setFlag$1(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    :goto_0
    return-void
.end method

.method private static nameAndAddress(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static postDisplayRotation(IFFLandroid/graphics/Matrix;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x42b40000    # 90.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p3, p2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_1
    const/high16 p0, 0x43340000    # 180.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_2
    const/high16 p0, 0x43870000    # 270.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p3, v1, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_0
    return-void
.end method

.method public static preDisplayRotation(IFFLandroid/graphics/Matrix;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x43870000    # 270.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p3, v1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_1
    const/high16 p0, 0x43340000    # 180.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_2
    const/high16 p0, 0x42b40000    # 90.0f

    invoke-virtual {p3, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p3, p1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_0
    return-void
.end method

.method private setFlag(IZ)Z
    .locals 4

    sget-boolean v0, Lcom/android/launcher3/testing/shared/TestProtocol;->sDisableSensorRotation:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x16b

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p2, :cond_1

    iget p2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    or-int/2addr p1, p2

    goto :goto_1

    :cond_1
    iget p2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_1
    iput p1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    sget-boolean p1, Lcom/android/launcher3/testing/shared/TestProtocol;->sDisableSensorRotation:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eq v0, v1, :cond_3

    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p2, Lcom/android/quickstep/util/h0;

    invoke-direct {p2, p0, v1}, Lcom/android/quickstep/util/h0;-><init>(Lcom/android/quickstep/util/RecentsOrientedState;Z)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->updateHandler()Z

    move-result p0

    return p0
.end method

.method private updateAutoRotateSetting()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->ROTATION_SETTING_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result v0

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setFlag(IZ)Z

    return-void
.end method

.method private updateHandler()Z
    .locals 5

    iget v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mDisplayRotation:I

    invoke-direct {p0, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->inferRecentsActivityRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsActivityRotation:I

    iget v1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTouchRotation:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTouchRotation:I

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->LANDSCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    goto :goto_1

    :cond_1
    if-ne v0, v3, :cond_2

    sget-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->SEASCAPE:Lcom/android/launcher3/touch/PagedOrientationHandler;

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    :goto_1
    iput-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mStateId:I

    iget v1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    shl-int/lit8 v1, v1, 0x2

    iget v4, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mDisplayRotation:I

    or-int/2addr v1, v4

    shl-int/lit8 v1, v1, 0x2

    iget v4, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTouchRotation:I

    or-int/2addr v1, v4

    shl-int/2addr v1, v3

    iget v3, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsRotation:I

    if-gez v3, :cond_3

    const/4 v3, 0x7

    :cond_3
    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mStateId:I

    if-eq v1, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method private updateHomeRotationSetting()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->ALLOW_ROTATION:Lcom/android/launcher3/ContextualItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ContextualItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setFlag(IZ)Z

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/SystemUiProxy;->setHomeRotationEnabled(Z)V

    return-void
.end method


# virtual methods
.method public destroyListeners()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mListenersInitialized:Z

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->isMultipleOrientationSupportedByDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->destroyMultipleOrientationListeners()V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setRotationWatcherEnabled(Z)V

    return-void
.end method

.method public flipVertical(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object p0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public forceAllowRotationForTesting(Z)V
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->setFlag(IZ)Z

    return-void
.end method

.method public getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mActivityInterface:Lcom/android/quickstep/BaseActivityInterface;

    return-object p0
.end method

.method public getDisplayRotation()I
    .locals 1

    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->SHELL_TRANSITIONS_ROTATION:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsActivityRotation:I

    return p0

    :cond_0
    iget p0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mDisplayRotation:I

    return p0
.end method

.method public getFullScreenScaleAndPivot(Landroid/graphics/Rect;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/PointF;)F
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, p3}, Lcom/android/quickstep/BaseActivityInterface;->getTaskDimension(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/PointF;)V

    iget p0, p3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p0, p2

    iget p2, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v0, p0, p2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p3, p2, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :cond_0
    sub-float p2, p0, p2

    div-float p2, p0, p2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    invoke-virtual {p3, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    :goto_0
    return p0
.end method

.method public getLauncherDeviceProfile()Lcom/android/launcher3/DeviceProfile;
    .locals 4

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsActivityRotation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_1
    int-to-float v2, v2

    int-to-float v1, v1

    iget p0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsActivityRotation:I

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->getBestMatch(FFI)Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    return-object p0
.end method

.method public getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    return-object p0
.end method

.method public getRecentsActivityRotation()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsActivityRotation:I

    return p0
.end method

.method public getStateId()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mStateId:I

    return p0
.end method

.method public getTouchRotation()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTouchRotation:I

    return p0
.end method

.method public ignoreAllowHomeRotationPreference()V
    .locals 2

    const/16 v0, 0x200

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/util/RecentsOrientedState;->setFlag(IZ)Z

    return-void
.end method

.method public initListeners()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mListenersInitialized:Z

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->isMultipleOrientationSupportedByDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->initMultipleOrientationListeners()V

    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->initFlags()V

    return-void
.end method

.method public isDisplayPhoneNatural()Z
    .locals 1

    iget p0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mDisplayRotation:I

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isMultipleOrientationSupportedByDevice()Z
    .locals 1

    iget p0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    const/4 v0, 0x3

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecentsActivityRotationAllowed()Z
    .locals 2

    iget p0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    and-int/lit16 p0, p0, 0x294

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    sget-object p1, Lcom/android/launcher3/LauncherPrefs;->ALLOW_ROTATION:Lcom/android/launcher3/ContextualItem;

    invoke-virtual {p1}, Lcom/android/launcher3/ContextualItem;->getSharedPrefKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->updateHomeRotationSetting()V

    :cond_0
    return-void
.end method

.method public setDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->isMultipleOrientationSupportedByDevice()Z

    move-result v0

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    xor-int/lit8 p1, p1, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v1, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->setFlag(IZ)Z

    iget-boolean p1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mListenersInitialized:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->isMultipleOrientationSupportedByDevice()Z

    move-result p1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->initMultipleOrientationListeners()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->destroyMultipleOrientationListeners()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDisplayRotation(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplayRotation displayRotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Recent"

    const-string v2, "RecentsOrientedState"

    invoke-static {v1, v2, v0}, Ly2/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mDisplayRotation:I

    return-void
.end method

.method public setGestureActive(Z)Z
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->setFlag(IZ)Z

    move-result p0

    return p0
.end method

.method public setMultiWindowMode(Z)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->setFlag(IZ)Z

    return-void
.end method

.method public setRecentsRotation(I)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRecentsRotation recentsRotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Recent"

    const-string v2, "RecentsOrientedState"

    invoke-static {v1, v2, v0}, Ly2/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsRotation:I

    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->updateHandler()Z

    move-result p0

    return p0
.end method

.method public setRotationWatcherEnabled(Z)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->setFlag(IZ)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->nameAndAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mOrientationHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->nameAndAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mDisplayRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mDisplayRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mTouchRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTouchRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRecentsActivityRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsActivityRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRecentsRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mRecentsRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isRecentsActivityRotationAllowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mSystemRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mStateId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mStateId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mFlags="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transformEvent(FLandroid/view/MotionEvent;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTmpMatrix:Landroid/graphics/Matrix;

    if-eqz p3, :cond_0

    neg-float p1, p1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object p0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public update(II)Z
    .locals 0

    iput p2, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mDisplayRotation:I

    iput p1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mTouchRotation:I

    iput p1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mPreviousRotation:I

    invoke-direct {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->updateHandler()Z

    move-result p0

    return p0
.end method
