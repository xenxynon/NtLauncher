.class public final synthetic Lcom/android/quickstep/views/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/views/DesktopTaskView;

.field public final synthetic h:Lcom/android/systemui/shared/recents/model/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/DesktopTaskView;Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/b;->g:Lcom/android/quickstep/views/DesktopTaskView;

    iput-object p2, p0, Lcom/android/quickstep/views/b;->h:Lcom/android/systemui/shared/recents/model/Task;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/b;->g:Lcom/android/quickstep/views/DesktopTaskView;

    iget-object p0, p0, Lcom/android/quickstep/views/b;->h:Lcom/android/systemui/shared/recents/model/Task;

    check-cast p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-static {v0, p0, p1}, Lcom/android/quickstep/views/DesktopTaskView;->n(Lcom/android/quickstep/views/DesktopTaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method
