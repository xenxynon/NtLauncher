.class public Lcom/android/launcher3/allapps/WorkProfileManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip$OnActivePageChangedListener;


# instance fields
.field private final mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;"
        }
    .end annotation
.end field

.field private mCurrentState:I

.field private final mMatcher:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Lcom/android/launcher3/logging/StatsLogManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mUserManager:Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object p1, p2, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mPersonalMatcher:Ljava/util/function/Predicate;

    invoke-interface {p1}, Ljava/util/function/Predicate;->negate()Ljava/util/function/Predicate;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mMatcher:Ljava/util/function/Predicate;

    iput-object p3, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/allapps/WorkProfileManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/WorkProfileManager;->onWorkFabClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/allapps/WorkProfileManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/WorkProfileManager;->lambda$setWorkProfileEnabled$0(Z)V

    return-void
.end method

.method private getAH()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mAH:Ljava/util/List;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    return-object p0
.end method

.method private isEduSeen()Z
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->WORK_EDU_STEP:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$setWorkProfileEnabled$0(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ly3/b;->a:Ly3/b;

    invoke-virtual {v2, v1}, Ly3/b;->b(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mUserManager:Landroid/os/UserManager;

    if-nez p1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWorkProfileEnabled -> Exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WorkProfileManager"

    invoke-static {v2, v1}, Ly2/e;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private onWorkFabClicked(Landroid/view/View;)V
    .locals 1

    sget-boolean p1, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mCurrentState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/WorkModeSwitch;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TURN_OFF_WORK_APPS_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/WorkProfileManager;->setWorkProfileEnabled(Z)V

    :cond_0
    return-void
.end method

.method private updateCurrentState(I)V
    .locals 3

    sget-boolean v0, Lcom/android/launcher3/testing/shared/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkProfileManager#updateCurrentState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "b/243688989"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iput p1, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mCurrentState:I

    invoke-direct {p0}, Lcom/android/launcher3/allapps/WorkProfileManager;->getAH()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/WorkProfileManager;->getAH()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateAdapterItems()V

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getCurrentPage()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/WorkProfileManager;->updateWorkFAB(I)V

    :cond_2
    iget p1, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mCurrentState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkProfileManager;->attachWorkModeSwitch()Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkProfileManager;->detachWorkModeSwitch()V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateWorkFAB(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget p0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mCurrentState:I

    if-ne p0, v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/WorkModeSwitch;->animateVisibility(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->animateVisibility(Z)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addWorkItems(Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)I"
        }
    .end annotation

    iget v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    :goto_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/WorkProfileManager;->isEduSeen()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public attachWorkModeSwitch()Z
    .locals 4

    sget-boolean v0, Lcom/android/launcher3/testing/shared/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityAllAppsContainerView#attachWorkModeSwitch mWorkModeSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "b/243688989"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->hasModelFlag(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string p0, "WorkProfileManager"

    const-string v0, "unable to attach work mode switch; Missing required permissions"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e018a

    iget-object v3, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/WorkModeSwitch;

    iput-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getCurrentPage()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/WorkModeSwitch;->animateVisibility(Z)V

    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/allapps/WorkProfileManager;->getAH()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/launcher3/allapps/WorkProfileManager;->getAH()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$AdapterHolder;->applyPadding()V

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    new-instance v1, Lcom/android/launcher3/allapps/c0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/c0;-><init>(Lcom/android/launcher3/allapps/WorkProfileManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return v2
.end method

.method public detachWorkModeSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    return-void
.end method

.method public getMatcher()Ljava/util/function/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mMatcher:Ljava/util/function/Predicate;

    return-object p0
.end method

.method public getWorkModeSwitch()Lcom/android/launcher3/allapps/WorkModeSwitch;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    return-object p0
.end method

.method public newScrollListener()Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .locals 1

    new-instance v0, Lcom/android/launcher3/allapps/WorkProfileManager$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/WorkProfileManager$1;-><init>(Lcom/android/launcher3/allapps/WorkProfileManager;)V

    return-object v0
.end method

.method public onActivePageChanged(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/WorkProfileManager;->updateWorkFAB(I)V

    return-void
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mAllApps:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/AllAppsStore;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsStore;->hasModelFlag(I)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/WorkProfileManager;->updateCurrentState(I)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->getImeInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object p0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mWorkModeSwitch:Lcom/android/launcher3/allapps/WorkModeSwitch;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkModeSwitch;->updateTranslationY()V

    :cond_1
    return-void
.end method

.method public setWorkProfileEnabled(Z)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/WorkProfileManager;->updateCurrentState(I)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/allapps/d0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/allapps/d0;-><init>(Lcom/android/launcher3/allapps/WorkProfileManager;Z)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shouldShowWorkApps()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/allapps/WorkProfileManager;->mCurrentState:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
