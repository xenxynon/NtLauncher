.class Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x40

    if-eq p2, v0, :cond_0

    const/16 v0, 0x10

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->access$000(Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;->access$100(Lcom/android/launcher3/taskbar/TaskbarForceVisibleImmersiveController;)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
