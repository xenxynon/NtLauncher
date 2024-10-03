.class public final synthetic Lcom/android/launcher3/taskbar/x3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;

.field public final synthetic h:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/x3;->g:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/x3;->h:Lcom/android/quickstep/views/RecentsView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/x3;->g:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/x3;->h:Lcom/android/quickstep/views/RecentsView;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->b(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;Lcom/android/quickstep/views/RecentsView;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method
