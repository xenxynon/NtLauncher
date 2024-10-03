.class public final synthetic Lcom/android/launcher3/taskbar/bubbles/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/l;->g:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    return-void
.end method


# virtual methods
.method public final onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/l;->g:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->c(Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method
