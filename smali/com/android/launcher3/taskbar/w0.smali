.class public final synthetic Lcom/android/launcher3/taskbar/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field public final synthetic h:Lcom/android/quickstep/views/RecentsView;

.field public final synthetic i:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/w0;->g:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/w0;->h:Lcom/android/quickstep/views/RecentsView;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/w0;->i:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/w0;->g:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/w0;->h:Lcom/android/quickstep/views/RecentsView;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/w0;->i:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->c(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method
