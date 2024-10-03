.class public Lcom/android/quickstep/FallbackSwipeHandler;
.super Lcom/android/quickstep/AbsSwipeUpHandler;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;,
        Lcom/android/quickstep/FallbackSwipeHandler$FallbackPipToHomeAnimationFactory;,
        Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/AbsSwipeUpHandler<",
        "Lcom/android/quickstep/RecentsActivity;",
        "Lcom/android/quickstep/fallback/FallbackRecentsView;",
        "Lcom/android/quickstep/fallback/RecentsState;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FallbackSwipeHandler"

.field private static sMessageReceiver:Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;


# instance fields
.field private mActiveAnimationFactory:Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

.field private mAppCanEnterPip:Z

.field private mMaxLauncherScale:F

.field private final mRunningOverHome:Z

.field private final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/quickstep/AbsSwipeUpHandler;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mMaxLauncherScale:F

    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->isHomeTask()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mRunningOverHome:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/quickstep/a2;

    invoke-direct {p1, p0}, Lcom/android/quickstep/a2;-><init>(Lcom/android/quickstep/FallbackSwipeHandler;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/SwipeUpAnimationLogic;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method static synthetic access$200(Lcom/android/quickstep/FallbackSwipeHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mRunningOverHome:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/quickstep/FallbackSwipeHandler;Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Landroid/view/RemoteAnimationTarget;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/FallbackSwipeHandler;->setHomeScaleAndAlpha(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Landroid/view/RemoteAnimationTarget;FF)V

    return-void
.end method

.method static synthetic access$400()Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;
    .locals 1

    sget-object v0, Lcom/android/quickstep/FallbackSwipeHandler;->sMessageReceiver:Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;)Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;
    .locals 0

    sput-object p0, Lcom/android/quickstep/FallbackSwipeHandler;->sMessageReceiver:Lcom/android/quickstep/FallbackSwipeHandler$StaticMessageReceiver;

    return-object p0
.end method

.method private synthetic lambda$finishRecentsControllerToHome$1(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/android/quickstep/FallbackSwipeHandler;->startHomeIntent(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object p1

    new-instance v0, Lcom/android/quickstep/y1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/y1;-><init>(Lcom/android/quickstep/FallbackSwipeHandler;)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/TransformParams;->setHomeBuilderProxy(Lcom/android/quickstep/util/TransformParams$BuilderProxy;)Lcom/android/quickstep/util/TransformParams;

    return-void
.end method

.method public static synthetic m0(Lcom/android/quickstep/FallbackSwipeHandler;Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/TransformParams;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/FallbackSwipeHandler;->updateHomeActivityTransformDuringSwipeUp(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/TransformParams;)V

    return-void
.end method

.method public static synthetic n0(Lcom/android/quickstep/FallbackSwipeHandler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/FallbackSwipeHandler;->lambda$finishRecentsControllerToHome$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic o0(Lcom/android/quickstep/FallbackSwipeHandler;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/FallbackSwipeHandler;->lambda$new$0(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method

.method private setHomeScaleAndAlpha(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Landroid/view/RemoteAnimationTarget;FF)V
    .locals 2

    iget v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mMaxLauncherScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p3, v1, v0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p3

    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p2, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    iget-object p2, p2, Landroid/view/RemoteAnimationTarget;->localBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p2

    invoke-virtual {v0, p3, p3, v1, p2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object p0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    invoke-virtual {p1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setShow()Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    return-void
.end method

.method private startHomeIntent(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;Landroid/view/RemoteAnimationTarget;)V
    .locals 3
    .param p1    # Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getHomeIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p1, v1, p2}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->access$100(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;Landroid/content/Intent;Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startHomeIntent: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FallbackSwipeHandler"

    invoke-static {p2, p1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/android/quickstep/OverviewComponentObserver;->startHomeIntentSafely(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private updateHomeActivityTransformDuringSwipeUp(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Landroid/view/RemoteAnimationTarget;Lcom/android/quickstep/util/TransformParams;)V
    .locals 3

    iget-object p3, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mCurrentShift:Lcom/android/launcher3/anim/AnimatedFloat;

    iget p3, p3, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p3

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/quickstep/FallbackSwipeHandler;->setHomeScaleAndAlpha(Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;Landroid/view/RemoteAnimationTarget;FF)V

    return-void
.end method


# virtual methods
.method protected createHomeAnimationFactory(Ljava/util/ArrayList;JZZZLandroid/view/RemoteAnimationTarget;F)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;JZZZ",
            "Landroid/view/RemoteAnimationTarget;",
            "F)",
            "Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;"
        }
    .end annotation

    iput-boolean p5, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mAppCanEnterPip:Z

    if-eqz p5, :cond_0

    new-instance p1, Lcom/android/quickstep/FallbackSwipeHandler$FallbackPipToHomeAnimationFactory;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackPipToHomeAnimationFactory;-><init>(Lcom/android/quickstep/FallbackSwipeHandler;Lcom/android/quickstep/FallbackSwipeHandler$1;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;-><init>(Lcom/android/quickstep/FallbackSwipeHandler;J)V

    iput-object p1, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mActiveAnimationFactory:Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    invoke-direct {p0, p1, p7}, Lcom/android/quickstep/FallbackSwipeHandler;->startHomeIntent(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;Landroid/view/RemoteAnimationTarget;)V

    iget-object p0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mActiveAnimationFactory:Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    return-object p0
.end method

.method protected finishRecentsControllerToHome(Ljava/lang/Runnable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mAppCanEnterPip:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/quickstep/z1;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/z1;-><init>(Lcom/android/quickstep/FallbackSwipeHandler;Ljava/lang/Runnable;)V

    move-object p1, v0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/android/quickstep/fallback/FallbackRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->cleanupRemoteTargets()V

    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    iget-boolean p0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mAppCanEnterPip:Z

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method protected handleTaskAppeared([Landroid/view/RemoteAnimationTarget;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mActiveAnimationFactory:Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->handleHomeTaskAppeared([Landroid/view/RemoteAnimationTarget;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mActiveAnimationFactory:Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->handleTaskAppeared([Landroid/view/RemoteAnimationTarget;)Z

    move-result p0

    return p0
.end method

.method protected initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->initTransitionEndpoints(Lcom/android/launcher3/DeviceProfile;)V

    iget-boolean p1, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mRunningOverHome:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/TaskViewSimulator;->getFullScreenScale()F

    move-result v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mMaxLauncherScale:F

    :cond_0
    return-void
.end method

.method protected notifyGestureAnimationStartToRecents()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mRunningOverHome:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/util/NavigationMode;->hasGestures:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    check-cast v0, Lcom/android/quickstep/fallback/FallbackRecentsView;

    iget-object v1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getPlaceholderTasks()[Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    iget-object p0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/quickstep/fallback/FallbackRecentsView;->onGestureAnimationStartOnHome([Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/RotationTouchHelper;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->notifyGestureAnimationStartToRecents()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected switchToScreenshot()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/quickstep/FallbackSwipeHandler;->mRunningOverHome:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v0, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_SCREENSHOT_CAPTURED:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/MultiStateCallback;->setStateOnUiThread(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->switchToScreenshot()V

    :goto_0
    return-void
.end method
