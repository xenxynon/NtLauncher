.class public final Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mApps:[Lcom/android/launcher3/model/data/AppInfo;

.field private mAppsModelFlags:I

.field private mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private mDisallowGlobalDrag:Z

.field private mDisallowLongClick:Z

.field private mPackageUserKeytoUidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPredictedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mPackageUserKeytoUidMap:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->lambda$show$0()V

    return-void
.end method

.method private synthetic lambda$show$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarControllers;->getSharedState()Lcom/android/launcher3/taskbar/TaskbarSharedState;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->allAppsVisible:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    return-void
.end method

.method private show(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarControllers;->getSharedState()Lcom/android/launcher3/taskbar/TaskbarSharedState;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->allAppsVisible:Z

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarOverlayController:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->requestWindow()Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0154

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;->getDragLayer()Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayDragLayer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    iput-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    new-instance v2, Lcom/android/launcher3/taskbar/allapps/b;

    invoke-direct {v2, p0}, Lcom/android/launcher3/taskbar/allapps/b;-><init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/views/AbstractSlideInView;->addOnCloseListener(Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;)V

    new-instance v1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;-><init>(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    invoke-virtual {v1, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->show(Z)V

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    iget v2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAppsModelFlags:I

    iget-object v3, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mPackageUserKeytoUidMap:Ljava/util/Map;

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/launcher3/allapps/AllAppsStore;->setApps([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object p1

    const-class v1, Lcom/android/launcher3/appprediction/PredictionRowView;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->findFixedRowByType(Ljava/lang/Class;)Lcom/android/launcher3/allapps/FloatingHeaderRow;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/appprediction/PredictionRowView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mPredictedApps:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/appprediction/PredictionRowView;->setPredictedApps(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;->getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object p1

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mDisallowGlobalDrag:Z

    invoke-virtual {p1, v1}, Lcom/android/launcher3/taskbar/TaskbarDragController;->setDisallowGlobalDrag(Z)V

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;->getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mDisallowLongClick:Z

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->setDisallowLongClick(Z)V

    return-void
.end method


# virtual methods
.method public getTaskbarAllAppsScroll()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p0

    return p0
.end method

.method public getTaskbarAllAppsTopPadding()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->show(Z)V

    :cond_0
    return-void
.end method

.method public isOpen()Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setApps([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/launcher3/model/data/AppInfo;",
            "I",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    iput p2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAppsModelFlags:I

    iput-object p3, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mPackageUserKeytoUidMap:Ljava/util/Map;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    iget p3, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAppsModelFlags:I

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mPackageUserKeytoUidMap:Ljava/util/Map;

    invoke-virtual {p1, p2, p3, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->setApps([Lcom/android/launcher3/model/data/AppInfo;ILjava/util/Map;)V

    :cond_0
    return-void
.end method

.method public setDisallowGlobalDrag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mDisallowGlobalDrag:Z

    return-void
.end method

.method public setDisallowLongClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mDisallowLongClick:Z

    return-void
.end method

.method public setPredictedApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mPredictedApps:Ljava/util/List;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object p1

    const-class v0, Lcom/android/launcher3/appprediction/PredictionRowView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->findFixedRowByType(Ljava/lang/Class;)Lcom/android/launcher3/allapps/FloatingHeaderRow;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/appprediction/PredictionRowView;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mPredictedApps:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->setPredictedApps(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->show(Z)V

    :goto_0
    return-void
.end method

.method public updateNotificationDots(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AllAppsStore;->updateNotificationDots(Ljava/util/function/Predicate;)V

    :cond_0
    return-void
.end method
