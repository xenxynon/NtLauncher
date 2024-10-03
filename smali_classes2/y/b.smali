.class public final synthetic Ly/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/b;->g:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ly/b;->g:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    check-cast p1, Landroid/view/WindowManager;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->d(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;Landroid/view/WindowManager;)V

    return-void
.end method
