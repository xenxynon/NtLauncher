.class Lcom/android/launcher3/taskbar/TaskbarManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarManager;-><init>(Lcom/android/quickstep/TouchInteractionService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mOldConfig:Landroid/content/res/Configuration;

.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->access$000(Lcom/android/launcher3/taskbar/TaskbarManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->mOldConfig:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskbarManager#mComponentCallbacks.onConfigurationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarManager;->debugWhyTaskbarNotDestroyed(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->access$100(Lcom/android/launcher3/taskbar/TaskbarManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->access$000(Lcom/android/launcher3/taskbar/TaskbarManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarManager;->access$000(Lcom/android/launcher3/taskbar/TaskbarManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->mOldConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    const v2, -0x7fffda00

    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarManager;->access$200(Lcom/android/launcher3/taskbar/TaskbarManager;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->isPhoneMode(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarManager;->access$200(Lcom/android/launcher3/taskbar/TaskbarManager;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lj3/a;

    move-result-object v3

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-object v5, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->mOldConfig:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v6

    if-eqz v4, :cond_2

    iget v7, v3, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    goto :goto_2

    :cond_2
    iget v7, v3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    :goto_2
    if-eqz v4, :cond_3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    goto :goto_3

    :cond_3
    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    :goto_3
    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    if-ne v4, v7, :cond_4

    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    if-eq v4, v3, :cond_5

    :cond_4
    if-ne v5, v6, :cond_6

    :cond_5
    and-int/lit16 v3, v1, -0x401

    goto :goto_4

    :cond_6
    move v3, v1

    :goto_4
    and-int/lit16 v4, v1, 0x200

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->mOldConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    iget v5, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0x30

    if-ne v4, v5, :cond_7

    and-int/lit16 v3, v3, -0x201

    :cond_7
    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ComponentCallbacks#onConfigurationChanged() configDiffForRecreate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/content/res/Configuration;->configurationDiffToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/taskbar/TaskbarManager;->debugWhyTaskbarNotDestroyed(Ljava/lang/String;)V

    and-int/2addr v2, v3

    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->recreateTaskbar()V

    goto :goto_5

    :cond_8
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarManager;->access$200(Lcom/android/launcher3/taskbar/TaskbarManager;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v2

    if-eqz v2, :cond_b

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v2, v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->access$300(Lcom/android/launcher3/taskbar/TaskbarManager;Lcom/android/launcher3/DeviceProfile;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->access$400(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    goto :goto_5

    :cond_9
    if-eqz v0, :cond_a

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v2, v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->access$300(Lcom/android/launcher3/taskbar/TaskbarManager;Lcom/android/launcher3/DeviceProfile;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarManager;->access$200(Lcom/android/launcher3/taskbar/TaskbarManager;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarManager;->access$500(Lcom/android/launcher3/taskbar/TaskbarManager;)Lcom/android/launcher3/util/NavigationMode;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->updateDeviceProfile(Lcom/android/launcher3/DeviceProfile;Lcom/android/launcher3/util/NavigationMode;)V

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarManager;->access$200(Lcom/android/launcher3/taskbar/TaskbarManager;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->onConfigurationChanged(I)V

    :cond_b
    :goto_5
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarManager$1;->mOldConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method
