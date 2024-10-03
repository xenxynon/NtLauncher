.class public Lcom/android/quickstep/LauncherSwipeHandlerV2;
.super Lcom/android/quickstep/AbsSwipeUpHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory;,
        Lcom/android/quickstep/LauncherSwipeHandlerV2$FloatingViewHomeAnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/AbsSwipeUpHandler<",
        "Lcom/android/launcher3/uioverrides/QuickstepLauncher;",
        "Lcom/android/quickstep/views/RecentsView;",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/quickstep/AbsSwipeUpHandler;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V

    return-void
.end method

.method private createIconHomeAnimationFactory(Landroid/view/View;)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
    .locals 9

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/Launcher;

    check-cast v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->findMatchingView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    :goto_0
    move-object v3, v0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, v1

    move-object v1, p1

    move-object v5, v7

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/views/FloatingIconView;->getFloatingIconView(Lcom/android/launcher3/Launcher;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLandroid/graphics/RectF;Z)Lcom/android/launcher3/views/FloatingIconView;

    move-result-object v5

    const v6, 0x3f666666    # 0.9f

    new-instance v8, Lcom/android/quickstep/LauncherSwipeHandlerV2$2;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v5

    move-object v3, p1

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/LauncherSwipeHandlerV2$2;-><init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;Lcom/android/launcher3/views/FloatingView;Landroid/view/View;Landroid/graphics/RectF;Lcom/android/launcher3/views/FloatingIconView;F)V

    return-object v8
.end method

.method private createWidgetHomeAnimationFactory(Lcom/nothing/launcher/widget/a;ZLandroid/view/RemoteAnimationTarget;F)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
    .locals 11

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, p4}, Lcom/android/quickstep/SwipeUpAnimationLogic;->updateProgressForStartRect([Landroid/graphics/Matrix;F)[Landroid/graphics/RectF;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    move v9, v0

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lq2/m;->getDeviceProfile()Lj3/a;

    move-result-object v0

    new-instance v5, Landroid/util/Size;

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-direct {v5, v3, v0}, Landroid/util/Size;-><init>(II)V

    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/android/quickstep/views/FloatingWidgetView;->getDefaultBackgroundColor(Landroid/content/Context;Landroid/view/RemoteAnimationTarget;)I

    move-result v8

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/quickstep/util/TaskViewSimulator;->getCurrentCornerRadius()F

    move-result v6

    move-object v2, v0

    move-object v3, p1

    move-object v4, v10

    move v7, p2

    invoke-static/range {v2 .. v8}, Lcom/android/quickstep/views/FloatingWidgetView;->getFloatingWidgetView(Lcom/android/launcher3/Launcher;Lcom/nothing/launcher/widget/a;Landroid/graphics/RectF;Landroid/util/Size;FZI)Lcom/android/quickstep/views/FloatingWidgetView;

    move-result-object v5

    new-instance v7, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v5

    move v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/LauncherSwipeHandlerV2$3;-><init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;Lcom/android/launcher3/views/FloatingView;Lcom/nothing/launcher/widget/a;Landroid/graphics/RectF;Lcom/android/quickstep/views/FloatingWidgetView;F)V

    return-object v7
.end method

.method private findWorkspaceView(Ljava/util/ArrayList;Lcom/android/quickstep/views/TaskView;)Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;",
            "Lcom/android/quickstep/views/TaskView;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mIsSwipingPipToHome:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, -0x80000000

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v1}, Lcom/android/launcher3/util/ObjectWrapper;->unwrap(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_3
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p2

    iget-object p2, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p2, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/launcher3/Launcher;->getFirstMatchForAppClose(ILjava/lang/String;Landroid/os/UserHandle;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object v1
.end method

.method private synthetic lambda$createHomeAnimationFactory$0(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    :cond_0
    return-void
.end method

.method public static synthetic m0(Lcom/android/quickstep/LauncherSwipeHandlerV2;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherSwipeHandlerV2;->lambda$createHomeAnimationFactory$0(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method protected createHomeAnimationFactory(Ljava/util/ArrayList;JZZZLandroid/view/RemoteAnimationTarget;F)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;
    .locals 3
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

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget p4, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_PRESENT:I

    sget p5, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_HANDLER_INVALIDATED:I

    or-int/2addr p4, p5

    new-instance p5, Lcom/android/quickstep/u2;

    invoke-direct {p5, p0}, Lcom/android/quickstep/u2;-><init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;)V

    invoke-virtual {p1, p4, p5}, Lcom/android/quickstep/MultiStateCallback;->addChangeListener(ILjava/util/function/Consumer;)V

    new-instance p1, Lcom/android/quickstep/LauncherSwipeHandlerV2$1;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/quickstep/LauncherSwipeHandlerV2$1;-><init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;J)V

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/4 p3, 0x0

    if-nez p2, :cond_1

    new-instance p1, Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory;

    invoke-direct {p1, p0, p3}, Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory;-><init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;Lcom/android/quickstep/LauncherSwipeHandlerV2$1;)V

    return-object p1

    :cond_1
    invoke-virtual {p2}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/LauncherSwipeHandlerV2;->findWorkspaceView(Ljava/util/ArrayList;Lcom/android/quickstep/views/TaskView;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_2

    move v1, p2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast v2, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/launcher3/LauncherRootView;->setForceHideBackArrow(Z)V

    sget-boolean p2, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    check-cast p2, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p2}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->setHintUserWillBeActive()V

    :cond_3
    if-eqz v1, :cond_7

    if-nez p5, :cond_7

    iget-boolean p2, p0, Lcom/android/quickstep/SwipeUpAnimationLogic;->mIsSwipeForSplit:Z

    if-nez p2, :cond_7

    if-eqz p6, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p7, :cond_5

    if-eqz p4, :cond_5

    iget-object p2, p7, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p2}, Lb3/u;->a(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p2

    if-eqz p2, :cond_5

    move p4, v0

    :cond_5
    instance-of p2, p1, Lcom/nothing/launcher/widget/a;

    if-eqz p2, :cond_6

    check-cast p1, Lcom/nothing/launcher/widget/a;

    invoke-direct {p0, p1, p4, p7, p8}, Lcom/android/quickstep/LauncherSwipeHandlerV2;->createWidgetHomeAnimationFactory(Lcom/nothing/launcher/widget/a;ZLandroid/view/RemoteAnimationTarget;F)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherSwipeHandlerV2;->createIconHomeAnimationFactory(Landroid/view/View;)Lcom/android/quickstep/SwipeUpAnimationLogic$HomeAnimationFactory;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_1
    new-instance p1, Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory;

    invoke-direct {p1, p0, p3}, Lcom/android/quickstep/LauncherSwipeHandlerV2$LauncherHomeAnimationFactory;-><init>(Lcom/android/quickstep/LauncherSwipeHandlerV2;Lcom/android/quickstep/LauncherSwipeHandlerV2$1;)V

    return-object p1
.end method

.method protected finishRecentsControllerToHome(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->cleanupRemoteTargets()V

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, v0}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method protected isWindowModeTipsSupport()Z
    .locals 1

    invoke-static {}, Lcom/android/quickstep/utils/WindowModeHelper;->isWindowModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
