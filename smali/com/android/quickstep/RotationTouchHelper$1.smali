.class Lcom/android/quickstep/RotationTouchHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/RotationTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/RotationTouchHelper;


# direct methods
.method constructor <init>(Lcom/android/quickstep/RotationTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/RotationTouchHelper$1;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityRotation(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper$1;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    invoke-static {v0}, Lcom/android/quickstep/RotationTouchHelper;->access$300(Lcom/android/quickstep/RotationTouchHelper;)I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/RotationTouchHelper$1;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/quickstep/RotationTouchHelper;->access$402(Lcom/android/quickstep/RotationTouchHelper;Z)Z

    iget-object p1, p0, Lcom/android/quickstep/RotationTouchHelper$1;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    invoke-static {p1}, Lcom/android/quickstep/RotationTouchHelper;->access$100(Lcom/android/quickstep/RotationTouchHelper;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/RotationTouchHelper$1;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    invoke-static {p0}, Lcom/android/quickstep/RotationTouchHelper;->access$500(Lcom/android/quickstep/RotationTouchHelper;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public onRecentTaskListFrozenChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper$1;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    invoke-static {v0, p1}, Lcom/android/quickstep/RotationTouchHelper;->access$002(Lcom/android/quickstep/RotationTouchHelper;Z)Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/quickstep/RotationTouchHelper$1;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    invoke-static {p1}, Lcom/android/quickstep/RotationTouchHelper;->access$100(Lcom/android/quickstep/RotationTouchHelper;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/RotationTouchHelper$1;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/quickstep/RotationTouchHelper;->access$200(Lcom/android/quickstep/RotationTouchHelper;Z)V

    :cond_1
    :goto_0
    return-void
.end method
