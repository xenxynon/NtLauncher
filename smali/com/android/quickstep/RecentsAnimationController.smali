.class public Lcom/android/quickstep/RecentsAnimationController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecentsAnimationController"


# instance fields
.field private final mAllowMinimizeSplitScreen:Z

.field private final mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

.field private mFinishRequested:Z

.field private mFinishTargetIsLauncher:Z

.field private final mOnFinishedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/RecentsAnimationController;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingFinishCallbacks:Lcom/android/launcher3/util/RunnableList;

.field private mSplitScreenMinimized:Z

.field private mUseLauncherSysBarFlags:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;ZLjava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/RecentsAnimationController;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mUseLauncherSysBarFlags:Z

    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mSplitScreenMinimized:Z

    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mFinishRequested:Z

    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mPendingFinishCallbacks:Lcom/android/launcher3/util/RunnableList;

    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    iput-object p3, p0, Lcom/android/quickstep/RecentsAnimationController;->mOnFinishedListener:Ljava/util/function/Consumer;

    iput-boolean p2, p0, Lcom/android/quickstep/RecentsAnimationController;->mAllowMinimizeSplitScreen:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationController;->lambda$cleanupScreenshot$3()V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationController;->lambda$enableInputConsumer$8()V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/RecentsAnimationController;Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationController;->lambda$removeTaskTarget$1(Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/quickstep/RecentsAnimationController;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/RecentsAnimationController;->lambda$animateNavigationBarToApp$5(J)V

    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/RecentsAnimationController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationController;->lambda$detachNavigationBarFromApp$4(Z)V

    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/RecentsAnimationController;ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/RecentsAnimationController;->lambda$setFinishTaskTransaction$7(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/quickstep/RecentsAnimationController;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/RecentsAnimationController;->lambda$finishController$2(ZZ)V

    return-void
.end method

.method public static synthetic h(Lcom/android/quickstep/RecentsAnimationController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationController;->lambda$setUseLauncherSystemBarFlags$0(Z)V

    return-void
.end method

.method public static synthetic i(Lcom/android/quickstep/RecentsAnimationController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationController;->lambda$setWillFinishToHome$6(Z)V

    return-void
.end method

.method private synthetic lambda$animateNavigationBarToApp$5(J)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->animateNavigationBarToApp(J)V

    return-void
.end method

.method private synthetic lambda$cleanupScreenshot$3()V
    .locals 3

    sget-object v0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    sget-object v1, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->CLEANUP_SCREENSHOT:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v2, "cleanupScreenshot"

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->cleanupScreenshot()V

    return-void
.end method

.method private synthetic lambda$detachNavigationBarFromApp$4(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->detachNavigationBarFromApp(Z)V

    return-void
.end method

.method private synthetic lambda$enableInputConsumer$8()V
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$finishController$2(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->finish(ZZ)V

    const/16 p1, 0xb

    invoke-static {p1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    const/16 p1, 0x9

    invoke-static {p1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    const/16 p1, 0x42

    invoke-static {p1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationController;->mPendingFinishCallbacks:Lcom/android/launcher3/util/RunnableList;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/launcher3/j;

    invoke-direct {p2, p0}, Lcom/android/launcher3/j;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$removeTaskTarget$1(Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    iget p1, p1, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->removeTask(I)Z

    return-void
.end method

.method private synthetic lambda$setFinishTaskTransaction$7(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method private synthetic lambda$setUseLauncherSystemBarFlags$0(Z)V
    .locals 1

    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setAnimationTargetsBehindSystemBars(Z)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->setRecentsAppBehindSystemBars(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RecentsAnimationController"

    const-string v0, "Unable to reach window manager"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$setWillFinishToHome$6(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setWillFinishToHome(Z)V

    return-void
.end method


# virtual methods
.method public animateNavigationBarToApp(J)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/v4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/quickstep/v4;-><init>(Lcom/android/quickstep/RecentsAnimationController;J)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cleanupScreenshot()V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/s4;

    invoke-direct {v1, p0}, Lcom/android/quickstep/s4;-><init>(Lcom/android/quickstep/RecentsAnimationController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public detachNavigationBarFromApp(Z)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/x4;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/x4;-><init>(Lcom/android/quickstep/RecentsAnimationController;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enableInputConsumer()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/t4;

    invoke-direct {v1, p0}, Lcom/android/quickstep/t4;-><init>(Lcom/android/quickstep/RecentsAnimationController;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public finish(ZLjava/lang/Runnable;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method public finish(ZLjava/lang/Runnable;Z)V
    .locals 0
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quickstep/RecentsAnimationController;->finishController(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method public finishAnimationToApp()V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/android/quickstep/RecentsAnimationController;->finishController(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method public finishAnimationToHome()V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/quickstep/RecentsAnimationController;->finishController(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method public finishController(ZLjava/lang/Runnable;Z)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/quickstep/RecentsAnimationController;->finishController(ZLjava/lang/Runnable;ZZ)V

    return-void
.end method

.method public finishController(ZLjava/lang/Runnable;ZZ)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishController :[toRecents,sendUserLeaveHint,forceFinish] = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Recent"

    const-string v2, "RecentsAnimationController"

    invoke-static {v1, v2, v0}, Ly2/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mPendingFinishCallbacks:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    if-nez p4, :cond_0

    iget-boolean p2, p0, Lcom/android/quickstep/RecentsAnimationController;->mFinishRequested:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    sget-object p2, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    sget-object v0, Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;->FINISH_RECENTS_ANIMATION:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    const-string v1, "finishRecentsAnimation"

    invoke-virtual {p2, v1, p1, v0}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;ZLcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/quickstep/RecentsAnimationController;->mFinishRequested:Z

    iput-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationController;->mFinishTargetIsLauncher:Z

    iget-object p2, p0, Lcom/android/quickstep/RecentsAnimationController;->mOnFinishedListener:Ljava/util/function/Consumer;

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    new-instance p2, Lcom/android/quickstep/a5;

    invoke-direct {p2, p0, p1, p3}, Lcom/android/quickstep/a5;-><init>(Lcom/android/quickstep/RecentsAnimationController;ZZ)V

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public getController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    return-object p0
.end method

.method public getFinishTargetIsLauncher()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/RecentsAnimationController;->mFinishTargetIsLauncher:Z

    return p0
.end method

.method public removeTaskTarget(Landroid/view/RemoteAnimationTarget;)V
    .locals 2
    .param p1    # Landroid/view/RemoteAnimationTarget;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/w4;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/w4;-><init>(Lcom/android/quickstep/RecentsAnimationController;Landroid/view/RemoteAnimationTarget;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object p0

    return-object p0
.end method

.method public setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .locals 2

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/u4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/quickstep/u4;-><init>(Lcom/android/quickstep/RecentsAnimationController;ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSplitScreenMinimized(Landroid/content/Context;Z)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationController;->mAllowMinimizeSplitScreen:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationController;->mSplitScreenMinimized:Z

    if-eq p1, p2, :cond_1

    iput-boolean p2, p0, Lcom/android/quickstep/RecentsAnimationController;->mSplitScreenMinimized:Z

    :cond_1
    return-void
.end method

.method public setUseLauncherSystemBarFlags(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationController;->mUseLauncherSysBarFlags:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationController;->mUseLauncherSysBarFlags:Z

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/y4;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/y4;-><init>(Lcom/android/quickstep/RecentsAnimationController;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setWillFinishToHome(Z)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/z4;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/z4;-><init>(Lcom/android/quickstep/RecentsAnimationController;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
