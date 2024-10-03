.class Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$TaskbarAllAppsCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskbarAllAppsCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$TaskbarAllAppsCallbacks;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getCloseDuration()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$TaskbarAllAppsCallbacks;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->access$000(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;)Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->getCloseDuration()I

    move-result p0

    return p0
.end method

.method getOpenDuration()I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController$TaskbarAllAppsCallbacks;->this$0:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->access$000(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;)Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->getOpenDuration()I

    move-result p0

    return p0
.end method
