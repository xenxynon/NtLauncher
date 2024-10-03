.class Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->createStashAnimator(ZJ)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

.field final synthetic val$isStashed:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$1;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$1;->val$isStashed:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$1;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$1;->lambda$onAnimationEnd$0(Z)V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$1;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->access$200(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;)Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->setExpanded(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$1;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->access$002(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$1;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->access$100(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$1;->val$isStashed:Z

    new-instance v1, Lcom/android/launcher3/taskbar/bubbles/r;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/taskbar/bubbles/r;-><init>(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$1;Z)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/taskbar/TaskbarControllers;->runAfterInit(Ljava/lang/Runnable;)V

    return-void
.end method
