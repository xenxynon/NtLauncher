.class Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/statemanager/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartAnimRunnable"
.end annotation


# instance fields
.field private final mAnim:Landroid/animation/AnimatorSet;

.field final synthetic this$0:Lcom/android/launcher3/statemanager/StateManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/statemanager/StateManager;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;->this$0:Lcom/android/launcher3/statemanager/StateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;->mAnim:Landroid/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;->this$0:Lcom/android/launcher3/statemanager/StateManager;

    invoke-static {v0}, Lcom/android/launcher3/statemanager/StateManager;->access$500(Lcom/android/launcher3/statemanager/StateManager;)Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;->mAnim:Landroid/animation/AnimatorSet;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;->this$0:Lcom/android/launcher3/statemanager/StateManager;

    invoke-static {v0}, Lcom/android/launcher3/statemanager/StateManager;->access$500(Lcom/android/launcher3/statemanager/StateManager;)Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    const-string v1, "StateManager"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;->this$0:Lcom/android/launcher3/statemanager/StateManager;

    invoke-static {v0}, Lcom/android/launcher3/statemanager/StateManager;->access$600(Lcom/android/launcher3/statemanager/StateManager;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "StartAnimRunnable -> run() -> Animation can be run now."

    invoke-static {v1, v0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget-boolean v0, Ly2/e;->c:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartAnimRunnable -> run() -> Animation can\'t be run. animal = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;->this$0:Lcom/android/launcher3/statemanager/StateManager;

    invoke-static {v2}, Lcom/android/launcher3/statemanager/StateManager;->access$500(Lcom/android/launcher3/statemanager/StateManager;)Lcom/android/launcher3/statemanager/StateManager$AnimationState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/statemanager/StateManager$AnimationState;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;->this$0:Lcom/android/launcher3/statemanager/StateManager;

    invoke-static {v2}, Lcom/android/launcher3/statemanager/StateManager;->access$600(Lcom/android/launcher3/statemanager/StateManager;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;->this$0:Lcom/android/launcher3/statemanager/StateManager;

    invoke-static {v0}, Lcom/android/launcher3/statemanager/StateManager;->access$600(Lcom/android/launcher3/statemanager/StateManager;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/statemanager/BaseState;->shouldDisableRestore()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;->this$0:Lcom/android/launcher3/statemanager/StateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState(Z)V

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;->this$0:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState()V

    :cond_3
    iget-object p0, p0, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;->this$0:Lcom/android/launcher3/statemanager/StateManager;

    invoke-static {p0}, Lcom/android/launcher3/statemanager/StateManager;->access$700(Lcom/android/launcher3/statemanager/StateManager;)Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/views/BaseDragLayer;->recreateControllers()V

    return-void

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/launcher3/statemanager/StateManager$StartAnimRunnable;->mAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
