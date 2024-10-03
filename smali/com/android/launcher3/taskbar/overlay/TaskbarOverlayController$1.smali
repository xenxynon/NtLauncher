.class Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$1;->this$0:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$1;->this$0:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->hideWindow()V

    return-void
.end method

.method public onTaskMovedToFront(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController$1;->this$0:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->hideWindow()V

    return-void
.end method
