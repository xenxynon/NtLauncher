.class public final synthetic Lcom/android/launcher3/taskbar/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/views/RecentsView$TaskLaunchListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/n2;->a:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    return-void
.end method


# virtual methods
.method public final onTaskLaunched()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/n2;->a:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->c(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V

    return-void
.end method
