.class Lcom/android/launcher3/LauncherInitListener$1;
.super Lcom/android/quickstep/util/RemoteAnimationProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherInitListener;->handleInit(Lcom/android/launcher3/Launcher;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherInitListener;

.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherInitListener;Landroid/os/CancellationSignal;Lcom/android/launcher3/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/LauncherInitListener$1;->this$0:Lcom/android/launcher3/LauncherInitListener;

    iput-object p2, p0, Lcom/android/launcher3/LauncherInitListener$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    iput-object p3, p0, Lcom/android/launcher3/LauncherInitListener$1;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Lcom/android/quickstep/util/RemoteAnimationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createWindowAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)Landroid/animation/AnimatorSet;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/LauncherInitListener$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iget-object v0, p0, Lcom/android/launcher3/LauncherInitListener$1;->this$0:Lcom/android/launcher3/LauncherInitListener;

    invoke-static {v0}, Lcom/android/launcher3/LauncherInitListener;->access$000(Lcom/android/launcher3/LauncherInitListener;)Lcom/android/quickstep/util/RemoteAnimationProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherInitListener$1;->this$0:Lcom/android/launcher3/LauncherInitListener;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherInitListener;->access$002(Lcom/android/launcher3/LauncherInitListener;Lcom/android/quickstep/util/RemoteAnimationProvider;)Lcom/android/quickstep/util/RemoteAnimationProvider;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/LauncherInitListener$1;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/LauncherState;

    iget-boolean p0, p0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/util/RemoteAnimationProvider;->createWindowAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v2
.end method
