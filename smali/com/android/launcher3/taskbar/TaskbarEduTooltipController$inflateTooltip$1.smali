.class final Lcom/android/launcher3/taskbar/TaskbarEduTooltipController$inflateTooltip$1;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->inflateTooltip(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController$inflateTooltip$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController$inflateTooltip$1;->invoke()V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController$inflateTooltip$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->access$setTooltip$p(Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;Lcom/android/launcher3/taskbar/TaskbarEduTooltip;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController$inflateTooltip$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->access$getControllers$p(Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object v0

    const-string v2, "controllers"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->updateFlag(IZ)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController$inflateTooltip$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;->access$getControllers$p(Lcom/android/launcher3/taskbar/TaskbarEduTooltipController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateAndAnimateTransientTaskbar(Z)V

    return-void
.end method
