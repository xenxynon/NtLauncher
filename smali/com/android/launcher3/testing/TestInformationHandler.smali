.class public Lcom/android/launcher3/testing/TestInformationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field protected mLauncherAppState:Lcom/android/launcher3/LauncherAppState;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$11(Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$9(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$6(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$13(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/android/launcher3/Launcher;)[I
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$10(Lcom/android/launcher3/Launcher;)[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroid/app/Activity;)Landroid/graphics/Insets;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$8(Landroid/app/Activity;)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/android/launcher3/testing/TestInformationHandler;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$12(Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method private static getDescendantRectRelativeToDragLayerForCell(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object p0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    const/4 p2, 0x2

    new-array p3, p2, [I

    iget p4, v6, Landroid/graphics/Rect;->left:I

    const/4 p5, 0x0

    aput p4, p3, p5

    iget p4, v6, Landroid/graphics/Rect;->top:I

    const/4 v0, 0x1

    aput p4, p3, v0

    new-array p2, p2, [I

    iget p4, v6, Landroid/graphics/Rect;->right:I

    aput p4, p2, p5

    iget p4, v6, Landroid/graphics/Rect;->bottom:I

    aput p4, p2, v0

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    aget p0, p3, p5

    aget p1, p3, v0

    aget p3, p2, p5

    aget p2, p2, v0

    invoke-virtual {v6, p0, p1, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object v6
.end method

.method protected static getFromExecutorSync(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Lcom/android/launcher3/Launcher;",
            "TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/testing/p;

    invoke-direct {v1, v0}, Lcom/android/launcher3/testing/p;-><init>(Lcom/android/launcher3/util/ActivityTracker;)V

    invoke-static {p0, p1, v1}, Lcom/android/launcher3/testing/TestInformationHandler;->getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TS;TT;>;",
            "Ljava/util/function/Supplier<",
            "TS;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/testing/v;

    invoke-direct {v1, p2, p1, p0}, Lcom/android/launcher3/testing/v;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestInformationHandler;->getFromExecutorSync(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public static synthetic h()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$2()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$16(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$5(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Landroid/app/Activity;)Landroid/graphics/Insets;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$7(Landroid/app/Activity;)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/android/launcher3/testing/TestInformationHandler;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$1(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$0(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 2

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$call$1(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->isLauncherInitialized()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$10(Lcom/android/launcher3/Launcher;)[I
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result p0

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method private static synthetic lambda$call$11(Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;
    .locals 7

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/CellLayout;

    iget v3, p0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;->cellX:I

    iget v4, p0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;->cellY:I

    iget v5, p0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;->spanX:I

    iget v6, p0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;->spanY:I

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/testing/TestInformationHandler;->getDescendantRectRelativeToDragLayerForCell(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object p0

    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method private synthetic lambda$call$12(Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;
    .locals 2

    new-instance p1, Landroid/graphics/Point;

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget-object p0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/InvariantDeviceProfile;

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-direct {p1, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method private static synthetic lambda$call$13(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$14(Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;
    .locals 6

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;->cellInd:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/testing/TestInformationHandler;->getDescendantRectRelativeToDragLayerForCell(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object p0

    new-instance p1, Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v1

    div-int/lit8 p0, p0, 0x3

    add-int/2addr v1, p0

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method private static synthetic lambda$call$15(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$16(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    add-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$2()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static synthetic lambda$call$3(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->enableDeferUpdates(I)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic lambda$call$4(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->disableDeferUpdates(I)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic lambda$call$5(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$6(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$7(Landroid/app/Activity;)Landroid/graphics/Insets;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$8(Landroid/app/Activity;)Landroid/graphics/Insets;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$9(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/states/RotationHelper;->forceAllowRotationForTesting(Z)V

    return-void
.end method

.method private static synthetic lambda$getUIProperty$17(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)Landroid/os/Bundle;
    .locals 1

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "response"

    invoke-interface {p2, p1, v0, p0}, Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;->set(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static synthetic m(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$3(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$15(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/testing/TestInformationHandler;
    .locals 2

    const-class v0, Lcom/android/launcher3/testing/TestInformationHandler;

    const v1, 0x7f120270

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/testing/TestInformationHandler;

    return-object p0
.end method

.method public static synthetic o(Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$14(Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$4(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$getUIProperty$17(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$0(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "has-touch-interaction-service"

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "start-drag-threshold"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "icon-height"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "hotseat-cell-center"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "all-apps-bottom-padding"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "freeze-app-list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "target-insets"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "workspace-cell-center"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "widgets-scroll-y"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "home-to-all-apps-swipe-height"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "all-apps-top-padding"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "workspace-columns-rows"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "window-insets"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "enable_rotation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "mock-sensor-rotation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "unfreeze-app-list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_10
    const-string v2, "is-launcher-initialized"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_11
    const-string v2, "apps-list-scroll-y"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_12
    const-string v2, "get-had-nontest-events"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_13
    const-string v2, "workspace-cell-layout-size"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_14
    const-string v2, "is-two-panel"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_0

    :cond_15
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_15
    const-string v2, "is-tablet"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_0

    :cond_16
    move v1, v4

    goto :goto_0

    :sswitch_16
    const-string v2, "workspace-current-page-index"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_0

    :cond_17
    move v1, v5

    :goto_0
    const-string p1, "request"

    const-string v2, "response"

    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07012a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const p2, 0x7f0704b3

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p1, p0

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :pswitch_1
    iget-object p0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :pswitch_2
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;

    sget-object p1, Lcom/android/launcher3/testing/l;->a:Lcom/android/launcher3/testing/l;

    new-instance p2, Lcom/android/launcher3/testing/y;

    invoke-direct {p2, p0}, Lcom/android/launcher3/testing/y;-><init>(Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;)V

    invoke-static {p1, p2}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/android/launcher3/testing/s;->a:Lcom/android/launcher3/testing/s;

    sget-object p1, Lcom/android/launcher3/testing/h;->a:Lcom/android/launcher3/testing/h;

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/android/launcher3/testing/r;->a:Lcom/android/launcher3/testing/r;

    sget-object p1, Lcom/android/launcher3/testing/j;->a:Lcom/android/launcher3/testing/j;

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object p1, Lcom/android/launcher3/testing/a;->a:Lcom/android/launcher3/testing/a;

    sget-object p2, Lcom/android/launcher3/testing/d;->a:Lcom/android/launcher3/testing/d;

    new-instance p3, Lcom/android/launcher3/testing/o;

    invoke-direct {p3, p0}, Lcom/android/launcher3/testing/o;-><init>(Lcom/android/launcher3/testing/TestInformationHandler;)V

    invoke-static {p1, p2, p3}, Lcom/android/launcher3/testing/TestInformationHandler;->getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :pswitch_7
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;

    sget-object p1, Lcom/android/launcher3/testing/l;->a:Lcom/android/launcher3/testing/l;

    new-instance p2, Lcom/android/launcher3/testing/b;

    invoke-direct {p2, p0}, Lcom/android/launcher3/testing/b;-><init>(Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;)V

    invoke-static {p1, p2}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/android/launcher3/testing/s;->a:Lcom/android/launcher3/testing/s;

    sget-object p1, Lcom/android/launcher3/testing/e;->a:Lcom/android/launcher3/testing/e;

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/android/launcher3/testing/s;->a:Lcom/android/launcher3/testing/s;

    sget-object p1, Lcom/android/launcher3/testing/n;->a:Lcom/android/launcher3/testing/n;

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/android/launcher3/testing/s;->a:Lcom/android/launcher3/testing/s;

    sget-object p1, Lcom/android/launcher3/testing/k;->a:Lcom/android/launcher3/testing/k;

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_b
    sget-object p1, Lcom/android/launcher3/testing/l;->a:Lcom/android/launcher3/testing/l;

    new-instance p2, Lcom/android/launcher3/testing/w;

    invoke-direct {p2, p0}, Lcom/android/launcher3/testing/w;-><init>(Lcom/android/launcher3/testing/TestInformationHandler;)V

    invoke-static {p1, p2}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_c
    sget-object p1, Lcom/android/launcher3/testing/a;->a:Lcom/android/launcher3/testing/a;

    sget-object p2, Lcom/android/launcher3/testing/c;->a:Lcom/android/launcher3/testing/c;

    new-instance p3, Lcom/android/launcher3/testing/o;

    invoke-direct {p3, p0}, Lcom/android/launcher3/testing/o;-><init>(Lcom/android/launcher3/testing/TestInformationHandler;)V

    invoke-static {p1, p2, p3}, Lcom/android/launcher3/testing/TestInformationHandler;->getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p1, Lcom/android/launcher3/testing/u;

    invoke-direct {p1, p2}, Lcom/android/launcher3/testing/u;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object v0

    :pswitch_e
    sput-boolean v4, Lcom/android/launcher3/testing/shared/TestProtocol;->sDisableSensorRotation:Z

    return-object v0

    :pswitch_f
    sget-object p0, Lcom/android/launcher3/testing/r;->a:Lcom/android/launcher3/testing/r;

    sget-object p1, Lcom/android/launcher3/testing/m;->a:Lcom/android/launcher3/testing/m;

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_10
    sget-object p1, Lcom/android/launcher3/testing/r;->a:Lcom/android/launcher3/testing/r;

    new-instance p2, Lcom/android/launcher3/testing/x;

    invoke-direct {p2, p0}, Lcom/android/launcher3/testing/x;-><init>(Lcom/android/launcher3/testing/TestInformationHandler;)V

    sget-object p0, Lcom/android/launcher3/testing/q;->a:Lcom/android/launcher3/testing/q;

    invoke-static {p1, p2, p0}, Lcom/android/launcher3/testing/TestInformationHandler;->getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/android/launcher3/testing/s;->a:Lcom/android/launcher3/testing/s;

    sget-object p1, Lcom/android/launcher3/testing/i;->a:Lcom/android/launcher3/testing/i;

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_12
    sget-boolean p0, Lcom/android/launcher3/testing/TestLogging;->sHadEventsNotFromTest:Z

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :pswitch_13
    sget-object p0, Lcom/android/launcher3/testing/t;->a:Lcom/android/launcher3/testing/t;

    sget-object p1, Lcom/android/launcher3/testing/g;->a:Lcom/android/launcher3/testing/g;

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_14
    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->FOLDABLE_SINGLE_PAGE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_1

    :cond_18
    iget-object p0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v5, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    :goto_1
    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :pswitch_15
    iget-object p0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :pswitch_16
    sget-object p0, Lcom/android/launcher3/testing/s;->a:Lcom/android/launcher3/testing/s;

    sget-object p1, Lcom/android/launcher3/testing/f;->a:Lcom/android/launcher3/testing/f;

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x703886e0 -> :sswitch_16
        -0x6dd7a797 -> :sswitch_15
        -0x48da05a0 -> :sswitch_14
        -0x36ccc0ef -> :sswitch_13
        -0x2c10c6e0 -> :sswitch_12
        -0x25d3e253 -> :sswitch_11
        -0x1405cf16 -> :sswitch_10
        -0x7e26c79 -> :sswitch_f
        -0x7f4a12 -> :sswitch_e
        0x6f79eba -> :sswitch_d
        0x6fb0373 -> :sswitch_c
        0xc1f8001 -> :sswitch_b
        0xfeb5f6a -> :sswitch_a
        0x11da58c5 -> :sswitch_9
        0x1ceb16d7 -> :sswitch_8
        0x1e8681e8 -> :sswitch_7
        0x23b480f9 -> :sswitch_6
        0x2c0406b2 -> :sswitch_5
        0x2dcdc740 -> :sswitch_4
        0x3252dcfe -> :sswitch_3
        0x709f15a5 -> :sswitch_2
        0x7a5274fb -> :sswitch_1
        0x7f975bdd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getCurrentActivity()Landroid/app/Activity;
    .locals 0

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mLauncherAppState:Lcom/android/launcher3/LauncherAppState;

    return-void
.end method

.method protected isLauncherInitialized()Z
    .locals 1

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result p0

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
