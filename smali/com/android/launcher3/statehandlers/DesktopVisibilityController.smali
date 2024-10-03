.class public Lcom/android/launcher3/statehandlers/DesktopVisibilityController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mFreeformTasksVisible:Z

.field private mGestureInProgress:Z

.field private mInOverviewState:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method private isDesktopModeSupported()Z
    .locals 1

    const-string p0, "persist.wm.debug.desktop_mode"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "persist.wm.debug.desktop_mode_2"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private markLauncherPaused()V
    .locals 0

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->setPaused()V

    :cond_0
    return-void
.end method

.method private markLauncherResumed()V
    .locals 1

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->setResumed()V

    :cond_0
    return-void
.end method

.method private setLauncherViewsVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/NTDragLayer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public areFreeformTasksVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mFreeformTasksVisible:Z

    return p0
.end method

.method public isGestureInProgress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mGestureInProgress:Z

    return p0
.end method

.method public setFreeformTasksVisible(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->isDesktopModeSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mFreeformTasksVisible:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mFreeformTasksVisible:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->setLauncherViewsVisibility(I)V

    iget-boolean p1, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mInOverviewState:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->markLauncherPaused()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->setLauncherViewsVisibility(I)V

    invoke-direct {p0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->markLauncherResumed()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setGestureInProgress(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->isDesktopModeSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mGestureInProgress:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mGestureInProgress:Z

    :cond_1
    return-void
.end method

.method public setOverviewStateEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->isDesktopModeSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mInOverviewState:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mInOverviewState:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->setLauncherViewsVisibility(I)V

    invoke-direct {p0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->markLauncherResumed()V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->mFreeformTasksVisible:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->setLauncherViewsVisibility(I)V

    invoke-direct {p0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->markLauncherPaused()V

    :cond_2
    :goto_0
    return-void
.end method
