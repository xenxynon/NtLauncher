.class public Lcom/android/launcher3/states/RotationHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;


# instance fields
.field private mActivity:Lcom/android/launcher3/BaseActivity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentStateRequest:I

.field private mCurrentTransitionRequest:I

.field private mDestroyed:Z

.field private mForceAllowRotationForTesting:Z

.field private mHomeRotationEnabled:Z

.field private mIgnoreAutoRotateSettings:Z

.field private mInitialized:Z

.field private mLastActivityFlags:I

.field private final mRequestOrientationHandler:Landroid/os/Handler;

.field private mStateHandlerRequest:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BaseActivity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/states/RotationHelper;->mStateHandlerRequest:I

    iput v0, p0, Lcom/android/launcher3/states/RotationHelper;->mCurrentTransitionRequest:I

    iput v0, p0, Lcom/android/launcher3/states/RotationHelper;->mCurrentStateRequest:I

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/android/launcher3/states/RotationHelper;->mLastActivityFlags:I

    iput-object p1, p0, Lcom/android/launcher3/states/RotationHelper;->mActivity:Lcom/android/launcher3/BaseActivity;

    new-instance p1, Landroid/os/Handler;

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lx/a;

    invoke-direct {v1, p0}, Lx/a;-><init>(Lcom/android/launcher3/states/RotationHelper;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/launcher3/states/RotationHelper;->mRequestOrientationHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/states/RotationHelper;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/states/RotationHelper;->setOrientationAsync(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static deltaRotation(II)I
    .locals 0

    sub-int/2addr p1, p0

    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x4

    :cond_0
    return p1
.end method

.method public static getAllowRotationDefaultValue(Lcom/android/launcher3/util/DisplayController$Info;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-static {p0, v0}, Lcom/android/launcher3/Utilities;->dpiFromPx(FI)F

    const/4 p0, 0x0

    return p0
.end method

.method private notifyChange()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mInitialized:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mDestroyed:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/android/launcher3/states/RotationHelper;->mStateHandlerRequest:I

    const/16 v1, 0xe

    const/4 v2, -0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    if-ne v0, v3, :cond_5

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/launcher3/states/RotationHelper;->mCurrentTransitionRequest:I

    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_5

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/launcher3/states/RotationHelper;->mCurrentStateRequest:I

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/android/launcher3/states/RotationHelper;->mIgnoreAutoRotateSettings:Z

    if-nez v1, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mHomeRotationEnabled:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mForceAllowRotationForTesting:Z

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    goto :goto_1

    :cond_5
    :goto_0
    move v1, v2

    :goto_1
    iget v0, p0, Lcom/android/launcher3/states/RotationHelper;->mLastActivityFlags:I

    if-eq v1, v0, :cond_6

    iput v1, p0, Lcom/android/launcher3/states/RotationHelper;->mLastActivityFlags:I

    iget-object p0, p0, Lcom/android/launcher3/states/RotationHelper;->mRequestOrientationHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    :goto_2
    return-void
.end method

.method private setIgnoreAutoRotateSettings(ZLcom/android/launcher3/util/DisplayController$Info;)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/launcher3/states/RotationHelper;->mIgnoreAutoRotateSettings:Z

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/states/RotationHelper;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->ALLOW_ROTATION:Lcom/android/launcher3/ContextualItem;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ContextualItem;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/states/RotationHelper;->mHomeRotationEnabled:Z

    iget-object p1, p0, Lcom/android/launcher3/states/RotationHelper;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p1

    new-array v0, v0, [Lcom/android/launcher3/Item;

    aput-object v1, v0, p2

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/LauncherPrefs;->addListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;[Lcom/android/launcher3/Item;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/launcher3/states/RotationHelper;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p1

    new-array v0, v0, [Lcom/android/launcher3/Item;

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->ALLOW_ROTATION:Lcom/android/launcher3/ContextualItem;

    aput-object v1, v0, p2

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/LauncherPrefs;->removeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;[Lcom/android/launcher3/Item;)V

    :goto_0
    return-void
.end method

.method private setOrientationAsync(Landroid/os/Message;)Z
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/states/RotationHelper;->mActivity:Lcom/android/launcher3/BaseActivity;

    if-eqz p0, :cond_0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mDestroyed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mDestroyed:Z

    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher3/states/RotationHelper;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/DisplayController;->removeChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    iget-object v1, p0, Lcom/android/launcher3/states/RotationHelper;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-static {v1}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v1

    new-array v0, v0, [Lcom/android/launcher3/Item;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/launcher3/LauncherPrefs;->ALLOW_ROTATION:Lcom/android/launcher3/ContextualItem;

    aput-object v3, v0, v2

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/LauncherPrefs;->removeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;[Lcom/android/launcher3/Item;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/states/RotationHelper;->mActivity:Lcom/android/launcher3/BaseActivity;

    :cond_0
    return-void
.end method

.method public forceAllowRotationForTesting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/states/RotationHelper;->mForceAllowRotationForTesting:Z

    invoke-direct {p0}, Lcom/android/launcher3/states/RotationHelper;->notifyChange()V

    return-void
.end method

.method public initialize()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/states/RotationHelper;->mInitialized:Z

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/states/RotationHelper;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    iget-object v2, v1, Lcom/android/launcher3/util/DisplayController$Info;->realBounds:Lcom/android/launcher3/util/WindowBounds;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/DisplayController$Info;->isTablet(Lcom/android/launcher3/util/WindowBounds;)Z

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/states/RotationHelper;->setIgnoreAutoRotateSettings(ZLcom/android/launcher3/util/DisplayController$Info;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/DisplayController;->addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    invoke-direct {p0}, Lcom/android/launcher3/states/RotationHelper;->notifyChange()V

    :cond_0
    return-void
.end method

.method public onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 0

    iget-object p1, p2, Lcom/android/launcher3/util/DisplayController$Info;->realBounds:Lcom/android/launcher3/util/WindowBounds;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/DisplayController$Info;->isTablet(Lcom/android/launcher3/util/WindowBounds;)Z

    move-result p1

    iget-boolean p3, p0, Lcom/android/launcher3/states/RotationHelper;->mIgnoreAutoRotateSettings:Z

    if-eq p3, p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/states/RotationHelper;->setIgnoreAutoRotateSettings(ZLcom/android/launcher3/util/DisplayController$Info;)V

    invoke-direct {p0}, Lcom/android/launcher3/states/RotationHelper;->notifyChange()V

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    iget-boolean p1, p0, Lcom/android/launcher3/states/RotationHelper;->mDestroyed:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/launcher3/states/RotationHelper;->mIgnoreAutoRotateSettings:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/launcher3/states/RotationHelper;->mHomeRotationEnabled:Z

    iget-object p2, p0, Lcom/android/launcher3/states/RotationHelper;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-static {p2}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p2

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->ALLOW_ROTATION:Lcom/android/launcher3/ContextualItem;

    invoke-virtual {p2, v0}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ContextualItem;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/states/RotationHelper;->mHomeRotationEnabled:Z

    if-eq p2, p1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/states/RotationHelper;->notifyChange()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCurrentStateRequest(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/states/RotationHelper;->mCurrentStateRequest:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/launcher3/states/RotationHelper;->mCurrentStateRequest:I

    invoke-direct {p0}, Lcom/android/launcher3/states/RotationHelper;->notifyChange()V

    :cond_0
    return-void
.end method

.method public setCurrentTransitionRequest(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/states/RotationHelper;->mCurrentTransitionRequest:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/launcher3/states/RotationHelper;->mCurrentTransitionRequest:I

    invoke-direct {p0}, Lcom/android/launcher3/states/RotationHelper;->notifyChange()V

    :cond_0
    return-void
.end method

.method public setStateHandlerRequest(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/states/RotationHelper;->mStateHandlerRequest:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/launcher3/states/RotationHelper;->mStateHandlerRequest:I

    invoke-direct {p0}, Lcom/android/launcher3/states/RotationHelper;->notifyChange()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/launcher3/states/RotationHelper;->mStateHandlerRequest:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/states/RotationHelper;->mCurrentStateRequest:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/launcher3/states/RotationHelper;->mLastActivityFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/launcher3/states/RotationHelper;->mIgnoreAutoRotateSettings:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/launcher3/states/RotationHelper;->mHomeRotationEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/android/launcher3/states/RotationHelper;->mForceAllowRotationForTesting:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    const-string p0, "[mStateHandlerRequest=%d, mCurrentStateRequest=%d, mLastActivityFlags=%d, mIgnoreAutoRotateSettings=%b, mHomeRotationEnabled=%b, mForceAllowRotationForTesting=%b]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
