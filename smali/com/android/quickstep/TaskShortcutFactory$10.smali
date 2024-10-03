.class Lcom/android/quickstep/TaskShortcutFactory$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/TaskShortcutFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TaskShortcutFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getShortcuts(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/BaseDraggingActivity;",
            "Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/SystemShortcut;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/android/quickstep/WindowModeShortcut;

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SYSTEM_SHORTCUT_WINDOW_MODE_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    const v1, 0x7f08037c

    const v2, 0x7f1201eb

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/WindowModeShortcut;-><init>(IILcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    invoke-virtual {v6}, Lcom/android/quickstep/WindowModeShortcut;->getShortcut()Lcom/android/quickstep/WindowModeShortcut;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/quickstep/TaskShortcutFactory;->createSingletonShortcutList(Lcom/android/launcher3/popup/SystemShortcut;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
