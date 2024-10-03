.class public final synthetic Lcom/android/launcher3/taskbar/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

.field public final synthetic h:Lcom/android/systemui/shared/recents/model/Task;

.field public final synthetic i:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/g;->g:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/g;->h:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/g;->i:Lcom/android/systemui/shared/recents/model/Task;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/g;->g:Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/g;->h:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/g;->i:Lcom/android/systemui/shared/recents/model/Task;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;->d(Lcom/android/launcher3/taskbar/KeyboardQuickSwitchTaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method
