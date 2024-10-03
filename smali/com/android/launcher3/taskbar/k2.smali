.class public final synthetic Lcom/android/launcher3/taskbar/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# instance fields
.field public final synthetic g:Ly5/l;


# direct methods
.method public synthetic constructor <init>(Ly5/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/k2;->g:Ly5/l;

    return-void
.end method


# virtual methods
.method public final onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/k2;->g:Ly5/l;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->a(Ly5/l;Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method
