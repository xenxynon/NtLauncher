.class public final synthetic Lcom/android/quickstep/views/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/quickstep/views/GroupedTaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/GroupedTaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/j;->g:Lcom/android/quickstep/views/GroupedTaskView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/j;->g:Lcom/android/quickstep/views/GroupedTaskView;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/GroupedTaskView;->p(Lcom/android/quickstep/views/GroupedTaskView;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method
