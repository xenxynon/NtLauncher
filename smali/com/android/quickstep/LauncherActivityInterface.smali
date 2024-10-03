.class public final Lcom/android/quickstep/LauncherActivityInterface;
.super Lcom/android/quickstep/BaseActivityInterface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quickstep/BaseActivityInterface<",
        "Lcom/android/launcher3/LauncherState;",
        "Lcom/android/launcher3/uioverrides/QuickstepLauncher;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;

.field private static final TAG:Ljava/lang/String; = "LauncherActivityInterface"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/LauncherActivityInterface;

    invoke-direct {v0}, Lcom/android/quickstep/LauncherActivityInterface;-><init>()V

    sput-object v0, Lcom/android/quickstep/LauncherActivityInterface;->INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/quickstep/BaseActivityInterface;-><init>(ZLcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Lcom/android/launcher3/Launcher;Ljava/lang/Boolean;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/LauncherActivityInterface;->lambda$createActivityInitListener$0(Ljava/util/function/Predicate;Lcom/android/launcher3/Launcher;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$000(Lcom/android/quickstep/LauncherActivityInterface;Lcom/android/quickstep/RotationTouchHelper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherActivityInterface;->notifyRecentsOfOrientation(Lcom/android/quickstep/RotationTouchHelper;)V

    return-void
.end method

.method private getVisibleLauncher()Lcom/android/launcher3/Launcher;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->isInLiveTileMode()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static synthetic lambda$createActivityInitListener$0(Ljava/util/function/Predicate;Lcom/android/launcher3/Launcher;Ljava/lang/Boolean;)Z
    .locals 0

    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private notifyRecentsOfOrientation(Lcom/android/quickstep/RotationTouchHelper;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/RotationTouchHelper;->getCurrentActiveRotation()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/quickstep/views/RecentsView;->setLayoutRotation(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public allowAllAppsFromOverview()Z
    .locals 0

    sget-object p0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_FROM_OVERVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    return p0
.end method

.method public allowMinimizeSplitScreen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public closeOverlay()V
    .locals 2

    invoke-super {p0}, Lcom/android/quickstep/BaseActivityInterface;->closeOverlay()V

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Ll0/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isForceInvisible()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x96

    invoke-interface {v0, p0}, Ll0/b;->l(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    invoke-interface {v0, p0}, Ll0/b;->j(Z)V

    :goto_1
    return-void
.end method

.method public createActivityInitListener(Ljava/util/function/Predicate;)Lcom/android/quickstep/util/ActivityInitListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/android/quickstep/util/ActivityInitListener;"
        }
    .end annotation

    new-instance p0, Lcom/android/launcher3/LauncherInitListener;

    new-instance v0, Lcom/android/quickstep/m2;

    invoke-direct {v0, p1}, Lcom/android/quickstep/m2;-><init>(Ljava/util/function/Predicate;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherInitListener;-><init>(Ljava/util/function/BiPredicate;)V

    return-object p0
.end method

.method public deferStartingActivity(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/BaseActivityInterface;->deferStartingActivity(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/launcher3/taskbar/TaskbarUIController;->isEventOverAnyTaskbarItem(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/BaseActivityInterface;->deferStartingActivity(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    move-result-object p0

    return-object p0
.end method

.method public getCreatedActivity()Lcom/android/launcher3/uioverrides/QuickstepLauncher;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    return-object p0
.end method

.method public getDepthController()Lcom/android/launcher3/statehandlers/DepthController;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object p0

    return-object p0
.end method

.method public getDesktopVisibilityController()Lcom/android/launcher3/statehandlers/DesktopVisibilityController;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getDesktopVisibilityController()Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic getOverviewScrimColorForState(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/statemanager/BaseState;)I
    .locals 0

    check-cast p1, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    check-cast p2, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/LauncherActivityInterface;->getOverviewScrimColorForState(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/launcher3/LauncherState;)I

    move-result p0

    return p0
.end method

.method protected getOverviewScrimColorForState(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Lcom/android/launcher3/LauncherState;)I
    .locals 0

    invoke-virtual {p2, p1}, Lcom/android/launcher3/LauncherState;->getWorkspaceScrimColor(Lcom/android/launcher3/Launcher;)I

    move-result p0

    return p0
.end method

.method public getOverviewWindowBounds(Landroid/graphics/Rect;Landroid/view/RemoteAnimationTarget;)Landroid/graphics/Rect;
    .locals 0

    return-object p1
.end method

.method public getParallelAnimationToLauncher(Lcom/android/quickstep/GestureState$GestureEndTarget;JLcom/android/quickstep/RecentsAnimationCallbacks;)Landroid/animation/Animator;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/quickstep/BaseActivityInterface;->getParallelAnimationToLauncher(Lcom/android/quickstep/GestureState$GestureEndTarget;JLcom/android/quickstep/RecentsAnimationCallbacks;)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v0, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/LauncherActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/LauncherState;

    move-result-object p0

    invoke-virtual {v0, p0, p4, p2, p3}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->createAnimToLauncher(Lcom/android/launcher3/LauncherState;Lcom/android/quickstep/RecentsAnimationCallbacks;J)Landroid/animation/Animator;

    move-result-object p0

    if-nez v1, :cond_1

    return-object p0

    :cond_1
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/animation/Animator;

    const/4 p3, 0x0

    aput-object v1, p2, p3

    const/4 p3, 0x1

    aput-object p0, p2, p3

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getSwipeUpDestinationAndLength(Lcom/android/launcher3/DeviceProfile;Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)I
    .locals 2

    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)V

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result p0

    const-string v0, "LauncherActivityInterface"

    if-eqz p0, :cond_2

    invoke-static {p2}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;

    move-result-object p0

    sget-object v1, Lcom/android/launcher3/util/NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/NavigationMode;

    if-eq p0, v1, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p3, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget p0, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget p2, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p2

    :goto_0
    if-gez p0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getSwipeUpDestinationAndLength -> dp.isSeascape()="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ",,dp.widthPx="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",,outRect="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p0

    :cond_2
    invoke-static {p2, p1, p4}, Lcom/android/quickstep/util/LayoutUtils;->getShelfTrackingDistance(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/touch/PagedOrientationHandler;)I

    move-result p0

    if-gez p0, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getSwipeUpDestinationAndLength -> shelfTrackingDistance="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return p0
.end method

.method public getTaskbarController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTaskbarController()Lcom/android/launcher3/taskbar/TaskbarUIController;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleRecentsView()Lcom/android/quickstep/views/RecentsView;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getVisibleLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget-boolean v1, v1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/RecentsView;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskViewId()I

    move-result p0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    return-object v0
.end method

.method public isInLiveTileMode()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRemoteTargetHandles()[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAssistantVisibilityChanged(F)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->onAssistantVisibilityChanged(F)V

    return-void
.end method

.method public onExitOverview(Lcom/android/quickstep/RotationTouchHelper;Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "LauncherActivityInterface"

    const-string p1, "The Launcher Activity is null when getting getCreatedActivity()"

    invoke-static {p0, p1}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/LauncherActivityInterface$2;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/android/quickstep/LauncherActivityInterface$2;-><init>(Lcom/android/quickstep/LauncherActivityInterface;Ljava/lang/Runnable;Lcom/android/quickstep/RotationTouchHelper;Lcom/android/launcher3/statemanager/StateManager;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    return-void
.end method

.method public onLaunchTaskFailed()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void
.end method

.method public onSwipeUpToHomeComplete(Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/quickstep/l2;

    invoke-direct {v3, v2}, Lcom/android/quickstep/l2;-><init>(Lcom/android/launcher3/statemanager/StateManager;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherRootView;->setForceHideBackArrow(Z)V

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherActivityInterface;->notifyRecentsOfOrientation(Lcom/android/quickstep/RotationTouchHelper;)V

    return-void
.end method

.method public prepareRecentsUI(Lcom/android/quickstep/RecentsAnimationDeviceState;ZLjava/util/function/Consumer;)Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/RecentsAnimationDeviceState;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/util/AnimatorControllerWithResistance;",
            ">;)",
            "Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/LauncherActivityInterface;->notifyRecentsOfOrientation(Lcom/android/quickstep/RotationTouchHelper;)V

    new-instance p1, Lcom/android/quickstep/LauncherActivityInterface$1;

    invoke-direct {p1, p0, p3}, Lcom/android/quickstep/LauncherActivityInterface$1;-><init>(Lcom/android/quickstep/LauncherActivityInterface;Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p2, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->cancelAnimation()V

    const-string p0, "LauncherActivityInterface"

    const-string p2, "AL-2512, Cancel config anim for the All_Apps -> Background->Overview."

    invoke-static {p0, p2}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->initBackgroundStateUI()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->reset(Z)V

    return-object p1
.end method

.method public setOnDeferredActivityLaunchCallback(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getCreatedActivity()Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher;->setOnDeferredActivityLaunchCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shouldCancelCurrentGesture()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/quickstep/BaseActivityInterface;->shouldCancelCurrentGesture()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->isDraggingItem()Z

    move-result p0

    return p0
.end method

.method public stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/LauncherState;
    .locals 0

    sget-object p0, Lcom/android/quickstep/LauncherActivityInterface$3;->$SwitchMap$com$android$quickstep$GestureState$GestureEndTarget:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    sget-object p0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    return-object p0
.end method

.method public bridge synthetic stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/statemanager/BaseState;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/LauncherActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/LauncherState;

    move-result-object p0

    return-object p0
.end method

.method public stateFromGestureEndTargetForCancel(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/LauncherState;
    .locals 1

    sget-object p0, Lcom/android/quickstep/LauncherActivityInterface$3;->$SwitchMap$com$android$quickstep$GestureState$GestureEndTarget:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 p2, 0x2

    if-eq p0, p2, :cond_1

    const/4 p2, 0x3

    if-eq p0, p2, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AERO-6208:stateFromGestureEndTargetForCancel-> Adjust target to normal for endTarget = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    :goto_0
    sget-object p0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p2, p0, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    return-object p0
.end method

.method public bridge synthetic stateFromGestureEndTargetForCancel(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/launcher3/statemanager/BaseState;)Lcom/android/launcher3/statemanager/BaseState;
    .locals 0

    check-cast p2, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/LauncherActivityInterface;->stateFromGestureEndTargetForCancel(Lcom/android/quickstep/GestureState$GestureEndTarget;Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/LauncherState;

    move-result-object p0

    return-object p0
.end method

.method public switchToRecentsIfVisible(Ljava/lang/Runnable;)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getVisibleLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->isInLiveTileMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getVisibleRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->closeOverlay()V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->shouldAnimateStateChange()Z

    move-result v0

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    const/4 p0, 0x1

    return p0
.end method
