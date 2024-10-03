.class public final synthetic Lcom/android/launcher3/taskbar/d4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/TaskbarViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/d4;->g:Lcom/android/launcher3/taskbar/TaskbarViewController;

    return-void
.end method


# virtual methods
.method public final onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/d4;->g:Lcom/android/launcher3/taskbar/TaskbarViewController;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->b(Lcom/android/launcher3/taskbar/TaskbarViewController;Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method
