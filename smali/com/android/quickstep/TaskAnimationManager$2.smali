.class Lcom/android/quickstep/TaskAnimationManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/TaskAnimationManager;->startRecentsAnimation(Lcom/android/quickstep/GestureState;Landroid/content/Intent;Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)Lcom/android/quickstep/RecentsAnimationCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/TaskAnimationManager;

.field final synthetic val$activityInterface:Lcom/android/quickstep/BaseActivityInterface;


# direct methods
.method constructor <init>(Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/BaseActivityInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    iput-object p2, p0, Lcom/android/quickstep/TaskAnimationManager$2;->val$activityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecentsAnimationCanceled(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {p0}, Lcom/android/quickstep/TaskAnimationManager;->access$600(Lcom/android/quickstep/TaskAnimationManager;)V

    return-void
.end method

.method public onRecentsAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {p0}, Lcom/android/quickstep/TaskAnimationManager;->access$600(Lcom/android/quickstep/TaskAnimationManager;)V

    return-void
.end method

.method public onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v0}, Lcom/android/quickstep/TaskAnimationManager;->access$200(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v0, p1}, Lcom/android/quickstep/TaskAnimationManager;->access$302(Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/RecentsAnimationController;)Lcom/android/quickstep/RecentsAnimationController;

    iget-object p1, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {p1, p2}, Lcom/android/quickstep/TaskAnimationManager;->access$402(Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/RecentsAnimationTargets;)Lcom/android/quickstep/RecentsAnimationTargets;

    iget-object p1, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {p1}, Lcom/android/quickstep/TaskAnimationManager;->access$400(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/RecentsAnimationTargets;

    move-result-object p2

    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v0}, Lcom/android/quickstep/TaskAnimationManager;->access$000(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/GestureState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTaskId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/quickstep/RemoteAnimationTargets;->findTask(I)Landroid/view/RemoteAnimationTarget;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/quickstep/TaskAnimationManager;->access$502(Lcom/android/quickstep/TaskAnimationManager;Landroid/view/RemoteAnimationTarget;)Landroid/view/RemoteAnimationTarget;

    iget-object p1, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {p1}, Lcom/android/quickstep/TaskAnimationManager;->access$000(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/GestureState;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {p0}, Lcom/android/quickstep/TaskAnimationManager;->access$500(Lcom/android/quickstep/TaskAnimationManager;)Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/GestureState;->updateLastAppearedTaskTarget(Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method

.method public onSwitchToScreenshot(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->val$activityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->isInLiveTileMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->val$activityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->val$activityInterface:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->switchToScreenshot(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V
    .locals 9

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v2}, Lcom/android/quickstep/TaskAnimationManager;->access$000(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/GestureState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v2

    array-length v3, p1

    move v4, v0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v4, v3, :cond_2

    aget-object v7, p1, v4

    iget-object v7, v7, Landroid/view/RemoteAnimationTarget;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    invoke-virtual {v2}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v7

    instance-of v7, v7, Lcom/android/quickstep/RecentsActivity;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v7}, Lcom/android/quickstep/TaskAnimationManager;->access$700(Lcom/android/quickstep/TaskAnimationManager;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/NavigationMode;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/util/NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/NavigationMode;

    if-eq v7, v8, :cond_1

    invoke-virtual {v2}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v6, v5}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZLjava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v4, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v4}, Lcom/android/quickstep/TaskAnimationManager;->access$700(Lcom/android/quickstep/TaskAnimationManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v3, p1}, Lcom/android/quickstep/SystemUiProxy;->onStartingSplitLegacy([Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v3

    if-nez v3, :cond_3

    new-array v3, v0, [Landroid/view/RemoteAnimationTarget;

    :cond_3
    invoke-virtual {v2}, Lcom/android/quickstep/BaseActivityInterface;->isInLiveTileMode()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v4}, Lcom/android/quickstep/TaskAnimationManager;->access$000(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/GestureState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v4

    sget-object v7, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v4, v7, :cond_6

    :cond_4
    invoke-virtual {v2}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/views/RecentsView;

    if-eqz v2, :cond_5

    sget-object p0, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launching side task id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    iget p0, v1, Landroid/view/RemoteAnimationTarget;->taskId:I

    new-array v0, v0, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v2, p0, p1, v0, v3}, Lcom/android/quickstep/views/RecentsView;->launchSideTaskInLiveTileMode(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V

    return-void

    :cond_5
    sget-object p1, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string v0, "Unable to launch side task (no recents)"

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    array-length p1, v3

    if-lez p1, :cond_7

    invoke-static {v3, v6, v5}, Lcom/android/quickstep/TaskViewUtils;->createSplitAuxiliarySurfacesAnimator([Landroid/view/RemoteAnimationTarget;ZLjava/util/function/Consumer;)Landroid/animation/ValueAnimator;

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {p1}, Lcom/android/quickstep/TaskAnimationManager;->access$300(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/RecentsAnimationController;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {p1}, Lcom/android/quickstep/TaskAnimationManager;->access$500(Lcom/android/quickstep/TaskAnimationManager;)Landroid/view/RemoteAnimationTarget;

    move-result-object p1

    if-eqz p1, :cond_8

    iget p1, v1, Landroid/view/RemoteAnimationTarget;->taskId:I

    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v0}, Lcom/android/quickstep/TaskAnimationManager;->access$500(Lcom/android/quickstep/TaskAnimationManager;)Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    iget v0, v0, Landroid/view/RemoteAnimationTarget;->taskId:I

    if-eq p1, v0, :cond_a

    :cond_8
    iget-object p1, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {p1}, Lcom/android/quickstep/TaskAnimationManager;->access$500(Lcom/android/quickstep/TaskAnimationManager;)Landroid/view/RemoteAnimationTarget;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {p1}, Lcom/android/quickstep/TaskAnimationManager;->access$300(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/RecentsAnimationController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {v0}, Lcom/android/quickstep/TaskAnimationManager;->access$500(Lcom/android/quickstep/TaskAnimationManager;)Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/RecentsAnimationController;->removeTaskTarget(Landroid/view/RemoteAnimationTarget;)V

    :cond_9
    iget-object p1, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {p1, v1}, Lcom/android/quickstep/TaskAnimationManager;->access$502(Lcom/android/quickstep/TaskAnimationManager;Landroid/view/RemoteAnimationTarget;)Landroid/view/RemoteAnimationTarget;

    iget-object p1, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {p1}, Lcom/android/quickstep/TaskAnimationManager;->access$000(Lcom/android/quickstep/TaskAnimationManager;)Lcom/android/quickstep/GestureState;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/TaskAnimationManager$2;->this$0:Lcom/android/quickstep/TaskAnimationManager;

    invoke-static {p0}, Lcom/android/quickstep/TaskAnimationManager;->access$500(Lcom/android/quickstep/TaskAnimationManager;)Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/GestureState;->updateLastAppearedTaskTarget(Landroid/view/RemoteAnimationTarget;)V

    :cond_a
    return-void
.end method
