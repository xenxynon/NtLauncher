.class final Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$TaskbarAllAppsCallbacks;
    }
.end annotation


# instance fields
.field private final mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

.field private final mContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

.field private final mNavbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

.field private final mOverlayController:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

.field private final mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

.field private final mTaskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    invoke-virtual {p2}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    iget-object p1, p3, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mTaskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-object p1, p3, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mNavbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    iget-object p1, p3, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarOverlayController:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mOverlayController:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    new-instance p1, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$TaskbarAllAppsCallbacks;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$TaskbarAllAppsCallbacks;-><init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;)V

    invoke-virtual {p2, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->init(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$TaskbarAllAppsCallbacks;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->setUpIconLongClick()V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->setUpAppDivider()V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->setUpTaskbarStashing()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->lambda$setUpTaskbarStashing$0()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;)Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mOverlayController:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    return-object p0
.end method

.method private synthetic lambda$setUpTaskbarStashing$0()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mNavbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->setSlideInViewVisible(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mTaskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/16 v2, 0x40

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mTaskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mOverlayController:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->getCloseDuration()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(J)V

    :cond_0
    return-void
.end method

.method private setUpAppDivider()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v0

    const-class v1, Lcom/android/launcher3/appprediction/AppsDividerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->findFixedRowByType(Ljava/lang/Class;)Lcom/android/launcher3/allapps/FloatingHeaderRow;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/appprediction/AppsDividerView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object v1

    const-string v2, "launcher.all_apps_visited_count"

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/OnboardingPrefs;->hasReachedMaxCount(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appprediction/AppsDividerView;->setShowAllAppsLabel(Z)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/util/OnboardingPrefs;->incrementEventCount(Ljava/lang/String;)Z

    return-void
.end method

.method private setUpIconLongClick()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;->getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/taskbar/m4;

    invoke-direct {v2, v1}, Lcom/android/launcher3/taskbar/m4;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->setOnIconLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getFloatingHeaderView()Lcom/android/launcher3/allapps/FloatingHeaderView;

    move-result-object v0

    const-class v1, Lcom/android/launcher3/appprediction/PredictionRowView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/FloatingHeaderView;->findFixedRowByType(Ljava/lang/Class;)Lcom/android/launcher3/allapps/FloatingHeaderRow;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/appprediction/PredictionRowView;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;->getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/taskbar/m4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/m4;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appprediction/PredictionRowView;->setOnIconLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private setUpTaskbarStashing()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mContext:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->isTransientTaskbar(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mTaskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/16 v2, 0x40

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mTaskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mOverlayController:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->getOpenDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState(J)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mNavbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->setSlideInViewVisible(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    new-instance v1, Lcom/android/launcher3/taskbar/allapps/d;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/allapps/d;-><init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/AbstractSlideInView;->setOnCloseBeginListener(Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;)V

    return-void
.end method


# virtual methods
.method show(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->mSlideInView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->show(Z)V

    return-void
.end method
