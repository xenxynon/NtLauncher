.class final Lcom/android/launcher3/uioverrides/QuickstepLauncher$LauncherTaskViewController;
.super Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/uioverrides/QuickstepLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LauncherTaskViewController"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController<",
        "Lcom/android/launcher3/Launcher;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;-><init>(Lcom/android/launcher3/BaseDraggingActivity;)V

    return-void
.end method


# virtual methods
.method protected isRecentsInteractive()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    check-cast v0, Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    check-cast p0, Lcom/android/launcher3/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW_MODAL_TASK:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

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

.method protected isRecentsModal()Z
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    check-cast p0, Lcom/android/launcher3/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW_MODAL_TASK:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    return p0
.end method

.method protected onUserControlledAnimationCreated(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/touchcontrollers/TaskViewTouchController;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    check-cast p0, Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->setCurrentUserControlledAnimation(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    return-void
.end method
