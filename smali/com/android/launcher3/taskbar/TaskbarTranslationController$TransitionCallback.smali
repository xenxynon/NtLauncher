.class public Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarTranslationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransitionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDown()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->access$100(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->access$200(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatedFloat;->cancelAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->access$102(Lcom/android/launcher3/taskbar/TaskbarTranslationController;Z)Z

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->cancelSpringIfExists()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->access$000(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)V

    return-void
.end method

.method public onActionEnd()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->access$300(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->access$000(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->access$402(Lcom/android/launcher3/taskbar/TaskbarTranslationController;Z)Z

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->startSpring()V

    :goto_0
    return-void
.end method

.method public onActionMove(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->access$100(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->access$300(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->access$400(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarTranslationController$TransitionCallback;->this$0:Lcom/android/launcher3/taskbar/TaskbarTranslationController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarTranslationController;->access$200(Lcom/android/launcher3/taskbar/TaskbarTranslationController;)Lcom/android/launcher3/anim/AnimatedFloat;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/AnimatedFloat;->updateValue(F)V

    :cond_1
    :goto_0
    return-void
.end method
