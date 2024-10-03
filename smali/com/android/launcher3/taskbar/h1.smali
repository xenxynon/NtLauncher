.class public final synthetic Lcom/android/launcher3/taskbar/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/DeviceProfile;

.field public final synthetic h:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/DeviceProfile;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/h1;->g:Lcom/android/launcher3/DeviceProfile;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/h1;->h:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/h1;->g:Lcom/android/launcher3/DeviceProfile;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/h1;->h:Landroid/content/res/Resources;

    check-cast p1, Lcom/android/launcher3/DeviceProfile;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->b(Lcom/android/launcher3/DeviceProfile;Landroid/content/res/Resources;Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method
