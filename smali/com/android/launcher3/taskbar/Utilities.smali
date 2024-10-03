.class public final Lcom/android/launcher3/taskbar/Utilities;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static setOverviewDragState(Lcom/android/launcher3/taskbar/TaskbarControllers;ZZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragController;->setDisallowGlobalDrag(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/taskbar/TaskbarDragController;->setDisallowLongClick(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->setDisallowGlobalDrag(Z)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->setDisallowLongClick(Z)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-virtual {p0, p3}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->setAllowInitialSplitSelection(Z)V

    return-void
.end method
