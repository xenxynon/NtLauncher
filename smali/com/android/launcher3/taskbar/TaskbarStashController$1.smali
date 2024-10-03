.class Lcom/android/launcher3/taskbar/TaskbarStashController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarStashController;->createAnimToIsStashed(ZJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

.field final synthetic val$duration:J

.field final synthetic val$isStashed:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarStashController;ZJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$1;->val$isStashed:Z

    iput-wide p3, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$1;->val$duration:J

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->access$202(Lcom/android/launcher3/taskbar/TaskbarStashController;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->access$000(Lcom/android/launcher3/taskbar/TaskbarStashController;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->tryStartTaskbarTimeout()V

    :cond_0
    iget-wide v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$1;->val$duration:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isInApp()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->access$300(Lcom/android/launcher3/taskbar/TaskbarStashController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarViewController;->announceForAccessibility()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$1;->val$isStashed:Z

    invoke-static {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->access$002(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)Z

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->access$000(Lcom/android/launcher3/taskbar/TaskbarStashController;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->access$100(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->cancelTimeoutIfExists()V

    return-void
.end method
